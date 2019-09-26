#ifndef yfs_client_h
#define yfs_client_h

#include <string>
//#include "yfs_protocol.h"
#include "extent_client.h"
#include <climits>
#include <vector>

#define MAX_FILE_COUNT 256
#define FILE_NAME_MAX 160

class yfs_client {
    extent_client* ec;

public:
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
        unsigned long long __alignment__;
        unsigned long      atime;
        unsigned long      mtime;
        unsigned long      ctime;
    };
    struct dirent {
        char             name[ FILE_NAME_MAX ];
        yfs_client::inum inum;
    };

    struct fdObject {
        unsigned long long iNum;
        // unsigned long long     eId;
        char                   literal_name[ FILE_NAME_MAX ];
        extent_protocol::types type;
        union metadata {
            yfs_client::fileinfo fileInfo;
            yfs_client::dirinfo  dirInfo;
        } metaData;
        union contentdata {
            yfs_client::dirent dirEnts[ MAX_FILE_COUNT ];
            char               data[ sizeof( yfs_client::dirent ) * MAX_FILE_COUNT ];
        } contentData;
    };

private:
    static std::string filename( inum );
    static inum        n2i( std::string );

public:
    yfs_client();
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
    int add_child( inum, inum, const char* );
    /** you may need to add symbolic link related methods here.*/
};

#endif
