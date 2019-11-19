#ifndef yfs_client_h
#define yfs_client_h

#include <string>
//#include "yfs_protocol.h"
#include "extent_client.h"

#include "lock_client.h"
#include "lock_protocol.h"
#include <vector>

#define DEBUG

#ifdef DEBUG
#define nslog printf
#else
#define nslog( ... )
#endif

#define FILENAME_SIZE 128

class yfs_client {

    lock_client* lc;

public:
    extent_client*             ec;
    typedef unsigned long long inum;
    enum xxstatus { OK, RPCERR, NOENT, IOERR, EXIST };
    typedef int status;

    struct fileinfo {
        unsigned long long size;
        unsigned long      atime;
        unsigned long      mtime;
        unsigned long      ctime;
    };
    struct dirinfo {
        unsigned long atime;
        unsigned long mtime;
        unsigned long ctime;
    };
    struct dirent {
        std::string      name;
        yfs_client::inum inum;
    };
    struct dirent_flat {
        char             name[ FILENAME_SIZE ];
        yfs_client::inum inum;
    };

private:
    static std::string filename( inum );
    static inum        n2i( std::string );
    int                add_child( inum, const char*, inum );

public:
    yfs_client( std::string, std::string );

    bool isfile( inum );
    bool isdir( inum );

    int getfile( inum, fileinfo& );
    int getdir( inum, dirinfo& );

    int setattr( inum, size_t );
    int lookup( inum, const char*, bool&, inum& );
    int create( inum, const char*, mode_t, inum& );
    int readdir( inum, std::list< dirent >& );
    int write( inum, size_t, off_t, const char*, size_t& );
    int read( inum, size_t, off_t, std::string& );
    int unlink( inum, const char* );
    int mkdir( inum, const char*, mode_t, inum& );
    int symlink( inum parent, const char* name, const char* link, inum& ino_out );
    int readlink( inum ino, std::string& data );
};

inline unmarshall& operator>>( unmarshall& u, yfs_client::fileinfo& a ) {
    unsigned int temp;
    u >> temp;
    a.atime = temp;
    u >> temp;
    a.mtime = temp;
    u >> temp;
    a.ctime = temp;
    u >> a.size;
    return u;
}

inline marshall& operator<<( marshall& m, yfs_client::fileinfo a ) {
    m << ( unsigned int )a.atime;
    m << ( unsigned int )a.mtime;
    m << ( unsigned int )a.ctime;
    m << a.size;
    return m;
}

inline unmarshall& operator>>( unmarshall& u, yfs_client::dirinfo& a ) {
    unsigned int temp;
    u >> temp;
    a.atime = temp;
    u >> temp;
    a.mtime = temp;
    u >> temp;
    a.ctime = temp;
    return u;
}

inline marshall& operator<<( marshall& m, yfs_client::dirinfo a ) {
    m << ( unsigned int )a.atime;
    m << ( unsigned int )a.mtime;
    m << ( unsigned int )a.ctime;
    return m;
}

inline unmarshall& operator>>( unmarshall& u, yfs_client::dirent& a ) {
    u >> a.inum;
    u >> a.name;
    return u;
}

inline marshall& operator<<( marshall& m, yfs_client::dirent a ) {
    m << a.inum;
    m << a.name;
    return m;
}

inline unmarshall& operator>>( unmarshall& u, yfs_client::dirent_flat& a ) {
    u >> a.inum;
    std::string temp;
    u >> temp;
    strncpy( a.name, temp.c_str(), 255 );
    return u;
}

inline marshall& operator<<( marshall& m, yfs_client::dirent_flat a ) {
    m << a.inum;
    m << a.name;
    return m;
}

#endif
