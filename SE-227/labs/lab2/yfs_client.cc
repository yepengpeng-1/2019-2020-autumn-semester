// yfs client.  implements FS operations using extent and lock server
#include "yfs_client.h"
#include "extent_client.h"
#include <fcntl.h>
#include <iostream>
#include <list>
#include <sstream>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <vector>
using std::list;
using std::string;
using std::vector;

yfs_client::yfs_client( std::string extent_dst, std::string lock_dst ) {
    int whatever;
    ec = new extent_client( extent_dst );
    lc = new lock_client( lock_dst );
    if ( ec->put( 1, "", whatever ) != extent_protocol::OK )
        printf( "error init root dir\n" );  // Xia Yubin: init root dir
}

yfs_client::inum yfs_client::n2i( std::string n ) {
    std::istringstream ist( n );
    unsigned long long finum;
    ist >> finum;
    return finum;
}

std::string yfs_client::filename( inum inum ) {
    std::ostringstream ost;
    ost << inum;
    return ost.str();
}

bool yfs_client::isfile( inum inum ) {
    int                   r = OK;
    extent_protocol::attr a;

    r = ec->getattr( inum, a );

    if ( r != OK ) {
        printf( "error getting attr\n" );
        return false;
    }

    if ( a.type == extent_protocol::T_FILE ) {
        printf( "isfile: %lld is a file\n", inum );
        return true;
    }
    printf( "isfile: %lld isn't a file\n", inum );
    return false;
}

bool yfs_client::isdir( inum inum ) {
    int                   r = OK;
    extent_protocol::attr a;
    r = ec->getattr( inum, a );
    if ( r != OK ) {
        printf( "error getting attr\n" );
        return false;
    }

    if ( a.type == extent_protocol::T_DIR ) {
        printf( "isdir: %lld is a dir\n", inum );
        return true;
    }
    printf( "isdir: %lld isn't a dir\n", inum );
    return false;
}

int yfs_client::getfile( inum inum, fileinfo& fin ) {
    int r = OK;

    printf( "getfile %016llx\n", inum );
    extent_protocol::attr a;
    r = ec->getattr( inum, a );

    if ( r != OK ) {
        return r;
    }

    fin.atime = a.atime;
    fin.mtime = a.mtime;
    fin.ctime = a.ctime;
    fin.size  = a.size;
    printf( "getfile %016llx -> sz %llu\n", inum, fin.size );

    return r;
}

int yfs_client::getdir( inum inum, dirinfo& din ) {
    int r = OK;

    printf( "getdir %016llx\n", inum );
    extent_protocol::attr a;

    r = ec->getattr( inum, a );

    if ( r != OK ) {
        return r;
    }
    din.atime = a.atime;
    din.mtime = a.mtime;
    din.ctime = a.ctime;

    return r;
}

#define EXT_RPC( xx )                                                \
    do {                                                             \
        if ( ( xx ) != extent_protocol::OK ) {                       \
            printf( "EXT_RPC Error: %s:%d \n", __FILE__, __LINE__ ); \
            r = IOERR;                                               \
            goto release;                                            \
        }                                                            \
    } while ( 0 )

// Only support set size of attr
int yfs_client::setattr( inum ino, size_t size ) {
    lc->acquire( ino );
    int whatever;
    nslog( "yfs::setattr entered\n" );
    int         r = OK;
    std::string buf;

    // read all the attributes
    r = ec->get( ino, buf );

    if ( r != OK ) {
        lc->release( ino );
        return r;
    }
    nslog( "\tyfs::setattr - get out success\n" );

    buf.resize( size );

    // write modified attributes back
    r = ec->put( ino, buf, whatever );
    if ( r != OK ) {
        lc->release( ino );
        return r;
    }
    nslog( "\tyfs::setattr - put back success\n" );
    lc->release( ino );
    return r;
}

int yfs_client::create( inum parent, const char* name, mode_t mode, inum& ino_out ) {
    lc->acquire( parent );
    nslog( "yfs::create entered\n\tparent: %llu\n\tname: %s\n", parent, name );
    int r = OK;

    bool found = false;
    r          = lookup( parent, name, found, ino_out );

    if ( r != OK ) {
        // lookup failure
        lc->release( parent );
        return r;
    }

    if ( found ) {
        nslog( "\tyfs::create - file with same name already exists\n" );
        // file already exist
        lc->release( parent );
        return EXIST;
    }

    nslog( "\tyfs::create - duplicate check success\n" );

    r = ec->create( extent_protocol::T_FILE, ino_out );

    if ( r != OK ) {
        // create file failure
        lc->release( parent );
        return r;
    }
    nslog( "\tyfs::create - create file success\n" );

    // add it to its parent
    r = add_child( parent, name, ino_out );
    nslog( "\tyfs::create - add_child check success\n" );
    lc->release( parent );
    return r;
}

int yfs_client::mkdir( inum parent, const char* name, mode_t mode, inum& ino_out ) {
    lc->acquire( parent );
    nslog( "\tyfs::mkdir - entered\n\tparent: %llu\n\tname: %s\n", parent, name );
    int r = OK;

    bool found = false;
    r          = lookup( parent, name, found, ino_out );

    if ( r != OK ) {
        // lookup failure
        lc->release( parent );
        return r;
    }

    if ( found ) {
        // dir already exist
        nslog( "\tyfs::mkdir - dir with same name already exist\n" );
        lc->release( parent );
        return EXIST;
    }
    nslog( "\tyfs::mkdir - duplication check success\n" );

    r = ec->create( extent_protocol::T_DIR, ino_out );

    if ( r != OK ) {
        // create dir failure
        lc->release( parent );
        return r;
    }
    nslog( "\tyfs::mkdir - create success\n" );

    r = add_child( parent, name, ino_out );

    nslog( "\tyfs::mkdir - add_child success\n" );
    lc->release( parent );
    return r;
}

int yfs_client::lookup( inum parent, const char* name, bool& found, inum& ino_out ) {
    nslog( "\tyfs::lookup - entered\n\tparent: %llu\n\tname: %s\n", parent, name );
    int            r = OK;
    list< dirent > entries;

    r = readdir( parent, entries );

    if ( r != OK ) {

        return r;
    }
    nslog( "\tyfs::lookup - readdir success\n" );

    found = false;

    for ( list< dirent >::iterator it = entries.begin(); it != entries.end(); ++it ) {
        if ( strcmp( it->name.c_str(), name ) == 0 ) {
            nslog( "\tyfs::lookup - found it!\n" );
            found   = true;
            ino_out = it->inum;
            break;
        }
    }

    nslog( "\tyfs::lookup - nothing found...\n" );
    return r;
}

int yfs_client::readdir( inum dir, std::list< dirent >& list ) {

    nslog( "\tyfs::readdir - entered!\n\tdir: %llu\n", dir );
    int    r = OK;
    string dir_buf;
    r = ec->get( dir, dir_buf );
    if ( r != OK ) {

        return r;
    }
    nslog( "\tyfs::readdir - get inode success\n" );

    dirent entry;

    unsigned long count   = dir_buf.size() / sizeof( dirent_flat );
    dirent_flat*  entries = ( dirent_flat* )( dir_buf.c_str() );

    while ( count > 0 ) {
        entry.inum = entries->inum;
        entry.name.assign( entries->name );
        list.push_back( entry );
        // nslog( "\tyfs::readdir - get entry #%lu: %s\n", count, entries->name );
        --count;
        ++entries;
    }
    nslog( "\tyfs::readdir - traverse success\n" );

    return r;
}

int yfs_client::read( inum ino, size_t size, off_t off, std::string& data ) {
    lc->acquire( ino );
    int    r = OK;
    string buf;
    nslog( "\tyfs::read - entered!\n\tinum: %llu\n\tsize: %lu\n\toffset: %ld\n", ino, size, off );

    r = ec->get( ino, buf );

    if ( r != OK ) {
        lc->release( ino );
        return r;
    }
    nslog( "\tyfs::read - get inode success\n" );

    if ( ( unsigned int )off >= buf.size() ) {
        nslog( "\tyfs::read - offset (%ld) > size (%lu). nothing to show\n", off, buf.size() );
        data.assign( "" );
        lc->release( ino );
        return OK;
    }

    data = buf.substr( off, size );
    nslog( "\tyfs::read - slice data (%ld/%lu) success\n", off, size );
    lc->release( ino );
    return r;
}

int yfs_client::write( inum ino, size_t size, off_t off, const char* data, size_t& bytes_written ) {
    lc->acquire( ino );
    int whatever;
    nslog( "\tyfs::write - entered!\n\tinum: %llu\n\tsize: %lu\n\toffset: %ld\n", ino, size, off );
    int r = OK;

    string buf, content;

    r = ec->get( ino, buf );

    if ( r != OK ) {
        lc->release( ino );
        return r;
    }

    content.assign( data, size );

    if ( ( unsigned int )off <= buf.size() ) {
        buf.replace( off, size, content );
        bytes_written = size;
    }
    else {
        size_t old_size = buf.size();
        buf.resize( size + off, '\0' );
        buf.replace( off, size, content );
        bytes_written = size + off - old_size;
    }

    r = ec->put( ino, buf, whatever );
    lc->release( ino );
    return r;
}

int yfs_client::unlink( inum parent, const char* name ) {
    lc->acquire( parent );

    int whatever;
    int r = OK;

    list< dirent > ent_list;
    bool           found = false;
    inum           ino;
    string         dir_buf;
    r = readdir( parent, ent_list );

    if ( r != OK ) {
        lc->release( parent );
        return r;
    }

    int counter = 0;
    for ( list< dirent >::iterator it = ent_list.begin(); it != ent_list.end(); ++it ) {
        if ( strcmp( it->name.c_str(), name ) == 0 ) {
            found = true;
            ino   = it->inum;
            break;
        }
        ++counter;
    }

    if ( !found ) {
        lc->release( parent );
        return NOENT;
    }

    r = ec->get( parent, dir_buf );
    if ( r != OK ) {
        lc->release( parent );
        return r;
    }

    string::iterator it = dir_buf.begin() + counter * sizeof( dirent_flat );
    dir_buf.erase( it, it + sizeof( dirent_flat ) );

    r = ec->remove( ino, whatever );
    if ( r != OK ) {
        lc->release( parent );
        return r;
    }

    r = ec->put( parent, dir_buf, whatever );
    lc->release( parent );
    return r;
}

int yfs_client::add_child( inum parent, const char* child_name, inum ino ) {
    // lc->acquire( parent );
    int         whatever;
    int         r = OK;
    dirent_flat entry;
    string      dir_buf;

    // get origin children
    r = ec->get( parent, dir_buf );
    if ( r != OK ) {
        // lc->release( parent );
        return r;
    }

    entry.inum = ino;
    memcpy( entry.name, child_name, FILENAME_SIZE );

    // meet its parent
    dir_buf.append( ( const char* )( &entry ), sizeof( struct dirent_flat ) );

    // write back
    r = ec->put( parent, dir_buf, whatever );

    // lc->release( parent );
    return r;
}

int yfs_client::readlink( inum ino, std::string& data ) {
    nslog( "yfs::readlink entered.\n" );
    int         r = OK;
    std::string buf;
    r = ec->get( ino, buf );
    data.assign( buf );
    nslog( "yfs::readlink over. return value: %d\n", r );
    return r;
}

int yfs_client::symlink( inum parent, const char* name, const char* link, inum& ino_out ) {
    lc->acquire( parent );
    nslog( "yfs::symlink entered.\n" );

    int r = OK, whatever;

    bool found_lookup;
    if ( lookup( parent, name, found_lookup, ino_out ) != extent_protocol::OK ) {
        r = IOERR;
        goto release;
    }

    if ( found_lookup ) {
        r = EXIST;
        goto release;
    }

    if ( ( ec->create( extent_protocol::T_LINK, ino_out ) != extent_protocol::OK ) || ec->put( ino_out, std::string( link ), whatever ) != extent_protocol::OK ) {
        r = IOERR;
        goto release;
    }

    if ( add_child( parent, name, ino_out ) != extent_protocol::OK ) {
        r = IOERR;
        goto release;
    }

release:
    lc->release( parent );
    return r;
}