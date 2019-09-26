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

#if 1
#define log printf
#else
#define log( ... )
#endif

yfs_client::yfs_client() {
    log( "yfs::preparing init\n" );
    inum eid = 1;
    ec       = new extent_client();
    // ec->create( extent_protocol::T_DIR, eid );

    fdObject root;
    root.iNum = eid;
    // root.literal_name           = "";
    root.metaData.dirInfo.atime = ( unsigned long )time( NULL );
    root.metaData.dirInfo.ctime = ( unsigned long )time( NULL );
    root.metaData.dirInfo.mtime = ( unsigned long )time( NULL );
    root.type                   = extent_protocol::T_DIR;
    memset( root.contentData.dirEnts, 0, sizeof( root.contentData.dirEnts ) );

    std::string buf;
    buf.resize( sizeof( fdObject ) );
    buf.assign( ( char* )&root, sizeof( fdObject ) );
    if ( ec->put( eid, buf ) != extent_protocol::OK )
        printf( "error init root dir\n" );  // XYB: init root dir
}

yfs_client::yfs_client( std::string extent_dst, std::string lock_dst ) {
    log( "yfs::preparing init\n" );
    inum eid = 1;
    ec       = new extent_client();
    // ec->create( extent_protocol::T_DIR, eid );

    fdObject root;
    root.iNum = eid;
    // root.literal_name           = "";
    root.metaData.dirInfo.atime = ( unsigned long )time( NULL );
    root.metaData.dirInfo.ctime = ( unsigned long )time( NULL );
    root.metaData.dirInfo.mtime = ( unsigned long )time( NULL );
    root.type                   = extent_protocol::T_DIR;
    memset( root.contentData.dirEnts, 0, sizeof( root.contentData.dirEnts ) );

    std::string buf;
    buf.resize( sizeof( fdObject ) );
    buf.assign( ( char* )&root, sizeof( fdObject ) );
    if ( ec->put( eid, buf ) != extent_protocol::OK )
        printf( "error init root dir\n" );  // XYB: init root dir
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
    extent_protocol::attr a;

    if ( ec->getattr( inum, a ) != extent_protocol::OK ) {
        printf( "error getting attr\n" );
        return false;
    }

    if ( a.type == extent_protocol::T_FILE ) {
        printf( "isfile: %lld is a file\n", inum );
        return true;
    }
    printf( "isfile: %lld is a dir\n", inum );
    return false;
}
/** Your code here for Lab...
 * You may need to add routines such as
 * readlink, issymlink here to implement symbolic link.
 *
 * */

bool yfs_client::isdir( inum inum ) {
    // Oops! is this still correct when you implement symlink?
    return !isfile( inum );
}

int yfs_client::getfile( inum inum, fileinfo& fin ) {
    int r = OK;

    printf( "getfile %016llx\n", inum );
    extent_protocol::attr a;
    if ( ec->getattr( inum, a ) != extent_protocol::OK ) {
        r = IOERR;
        goto gelfile_release;
    }

    fin.atime = a.atime;
    fin.mtime = a.mtime;
    fin.ctime = a.ctime;
    fin.size  = a.size;
    printf( "getfile %016llx -> sz %llu\n", inum, fin.size );

gelfile_release:
    return r;
}

int yfs_client::getdir( inum inum, dirinfo& din ) {
    int r = OK;

    printf( "getdir %016llx\n", inum );
    extent_protocol::attr a;
    if ( ec->getattr( inum, a ) != extent_protocol::OK ) {
        r = IOERR;
        goto getdir_release;
    }
    din.atime = a.atime;
    din.mtime = a.mtime;
    din.ctime = a.ctime;

getdir_release:
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
    int r = OK;

    /*
     * your code goes here.
     * note: get the content of inode ino, and modify its content
     * according to the size (<, =, or >) content length.
     */

    return r;
}

int yfs_client::create( inum parent, const char* name, mode_t mode, inum& ino_out ) {
    if ( strlen( name ) >= FILE_NAME_MAX ) {
        return IOERR;
    }

    log( "\n\nyfs::create called. \n\tparent: %llu\n\tname: %s\n", parent, name );
    int         r = OK;
    std::string strbuf;
    bool        found = false;
    char*       namebuf;

    r = lookup( parent, name, found, ino_out );
    if ( found ) {
        r = EXIST;
    }

    if ( r != OK ) {
        goto create_release;
    }

    unsigned long long gotten_eid;
    r = ec->create( extent_protocol::T_FILE, gotten_eid );
    if ( r != OK ) {
        goto create_release;
    }
    // inum     iNum = findNextUsableInum();
    fdObject fd;
    // fd.eId  = gotten_eid;
    fd.iNum = gotten_eid;
    ino_out = gotten_eid;
    strncpy( fd.literal_name, name, FILE_NAME_MAX );
    fd.type                    = extent_protocol::T_FILE;
    fd.metaData.fileInfo.atime = ( unsigned long )time( NULL );
    fd.metaData.fileInfo.ctime = ( unsigned long )time( NULL );
    fd.metaData.fileInfo.mtime = ( unsigned long )time( NULL );
    fd.metaData.fileInfo.size  = sizeof( fdObject );

    strbuf.resize( sizeof( fd ) );
    strbuf.assign( ( const char* )&fd, sizeof( fd ) );

    r = ec->put( fd.iNum, strbuf );
    // TODO: add file to its parent directory's dirent
    namebuf = ( char* )malloc( FILE_NAME_MAX );
    strncpy( namebuf, name, FILE_NAME_MAX );

    log( "yfs::create going to call add child. \n\tparent: %llu\n\tname_buf: %s\n", parent, name );
    add_child( parent, gotten_eid, namebuf );
create_release:
    return r;
}

int yfs_client::mkdir( inum parent, const char* name, mode_t mode, inum& ino_out ) {
    if ( strlen( name ) >= FILE_NAME_MAX ) {
        return IOERR;
    }
    log( "\n\nyfs::mkdir called. \n\tparent: %llu\n\tname: %s\n", parent, name );
    int         r = OK;
    std::string strbuf;
    bool        found = false;
    char*       namebuf;
    r = lookup( parent, name, found, ino_out );
    if ( found ) {
        r = EXIST;
    }

    if ( r != OK ) {
        goto mkdir_release;
    }

    unsigned long long gotten_eid;
    r = ec->create( extent_protocol::T_DIR, gotten_eid );
    if ( r != OK ) {
        goto mkdir_release;
    }
    // inum     iNum = findNextUsableInum();
    fdObject fd;
    // fd.eId  = gotten_eid;
    fd.iNum = gotten_eid;
    ino_out = gotten_eid;
    strncpy( fd.literal_name, name, FILE_NAME_MAX );
    fd.type = extent_protocol::T_DIR;
    memset( fd.contentData.dirEnts, 0, sizeof( fd.contentData.dirEnts ) );

    fd.metaData.dirInfo.atime = ( unsigned long )time( NULL );
    fd.metaData.dirInfo.ctime = ( unsigned long )time( NULL );
    fd.metaData.dirInfo.mtime = ( unsigned long )time( NULL );

    strbuf.resize( sizeof( fd ) );
    strbuf.assign( ( const char* )&fd, sizeof( fd ) );
    log( "yfs::mkdir going to ec->put\n" );
    r = ec->put( fd.iNum, strbuf );
    log( "yfs::mkdir completed ec->put. rc: %d\n", r );
    // TODO: add file to its parent directory's dirent

    namebuf = ( char* )malloc( FILE_NAME_MAX );
    strncpy( namebuf, name, FILE_NAME_MAX );
    add_child( parent, gotten_eid, namebuf );

mkdir_release:
    return r;
}

int yfs_client::add_child( inum parent, inum child, const char* child_name ) {

    log( "yfs::add_child called. \n\tparent: %llu\n\tchild: %llu\n\tchild_name: %s\n", parent, child, child_name );
    int         r = OK;
    std::string strbuf;
    size_t      counter = 0;
    strbuf.resize( sizeof( fdObject ) );

    char objbuf[ sizeof( fdObject ) ];

    r = ec->get( parent, strbuf );
    log( "yfs::add_child: ec->get, result: %d\n", r );

    if ( r != OK ) {
        return r;
    }
    memcpy( objbuf, strbuf.c_str(), sizeof( fdObject ) );

    auto pfdObject = ( fdObject* )objbuf;
    auto entry     = pfdObject->contentData.dirEnts;

    while ( strlen( entry->name ) > 0 && counter < MAX_FILE_COUNT ) {
        log( "non-empty entry #%llu name: %s\n", entry->inum, entry->name );
        ++entry;
        ++counter;
    }
    if ( counter == MAX_FILE_COUNT ) {
        log( "yfs::add_child: file count limit exceeded\n" );
        return IOERR;
    }

    entry->inum = child;
    strncpy( entry->name, child_name, FILE_NAME_MAX );
    strbuf.assign( objbuf, sizeof( fdObject ) );

    log( "there ok\n" );
    r = ec->put( parent, strbuf );
    log( "yfs::add_child: ec->put, result: %d\n", r );
    return r;
}

int yfs_client::lookup( inum parent, const char* name, bool& found, inum& ino_out ) {
    log( "yfs::lookup called. \n\tparent: %llu\n\tname: %s\n", parent, name );
    int r = OK;

    std::string strbuf;
    strbuf.resize( sizeof( fdObject ) );
    r = ec->get( parent, strbuf );
    if ( r != OK ) {
        return r;
    }

    auto pdir = ( fdObject* )strbuf.c_str();
    if ( pdir->type != extent_protocol::T_DIR ) {
        return IOERR;
    }

    auto entries   = pdir->contentData.dirEnts;
    found          = false;
    size_t counter = 0;
    while ( strlen( entries->name ) > 0 && counter < MAX_FILE_COUNT ) {

        log( "yfs::lookup comparing %s and %s...\n", entries->name, name );
        if ( strncmp( name, entries->name, FILE_NAME_MAX ) == 0 ) {
            found = true;
            r     = OK;
            log( "yfs::lookup: found.\n" );
            return r;
        }
        ++entries;
        ++counter;
    }
    log( "yfs::lookup: not found.\n" );
    return r;
}

int yfs_client::readdir( inum dir, std::list< dirent >& list ) {
    log( "yfs::readdir called. \n\tdir: %llu\n", dir );
    int r = OK;

    std::string strbuf;
    strbuf.resize( sizeof( fdObject ) );

    r = ec->get( dir, strbuf );

    if ( r != OK ) {
        return r;
    }

    auto pfdObject = ( fdObject* )strbuf.c_str();
    auto entry     = pfdObject->contentData.dirEnts;

    size_t counter = 0;
    while ( entry->name != NULL && counter < MAX_FILE_COUNT ) {
        list.push_back( *entry );
        ++entry;
        ++counter;
    }

    return r;
}

int yfs_client::read( inum ino, size_t size, off_t off, std::string& data ) {
    int r = OK;

    /*
     * your code goes here.
     * note: read using ec->get().
     */

    return r;
}

int yfs_client::write( inum ino, size_t size, off_t off, const char* data, size_t& bytes_written ) {
    int r = OK;

    /*
     * your code goes here.
     * note: write using ec->put().
     * when off > length of original file, fill the holes with '\0'.
     */

    return r;
}

int yfs_client::unlink( inum parent, const char* name ) {
    int r = OK;

    /*
     * your code goes here.
     * note: you should remove the file using ec->remove,
     * and update the parent directory content.
     */

    return r;
}
