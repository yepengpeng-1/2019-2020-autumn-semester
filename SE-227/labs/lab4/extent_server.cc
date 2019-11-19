// the extent server implementation

#include "extent_server.h"
#include <fcntl.h>
#include <handle.h>
#include <iostream>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

extent_server::extent_server() {
    pthread_mutex_init( &mutex, 0 );
    im = new inode_manager();
}

void extent_server::add_to_port( in_port_t myport ) {
    pthread_mutex_lock( &mutex );
    for ( size_t i = 0; i < ports.size(); i++ ) {
        if ( ports[ i ] == myport ) {
            pthread_mutex_unlock( &mutex );
            return;
        }
    }
    printf( "new access port from: %u\n", myport );
    ports.push_back( myport );
    pthread_mutex_unlock( &mutex );
}

int extent_server::create( in_port_t myport, uint32_t type, extent_protocol::extentid_t& id ) {
    add_to_port( myport );
    id &= 0x7fffffff;
    revoke( id );
    // alloc a new inode and return inum
    printf( "extent_server: create inode. type: %u\n", type );
    id = im->alloc_inode( type );

    return extent_protocol::OK;
}

int extent_server::put( in_port_t myport, extent_protocol::extentid_t id, std::string buf, int& ) {
    add_to_port( myport );
    id &= 0x7fffffff;
    revoke( id );
    const char* cbuf = buf.c_str();
    int         size = buf.size();
    im->write_file( id, cbuf, size );

    return extent_protocol::OK;
}

int extent_server::get( in_port_t myport, extent_protocol::extentid_t id, std::string& buf ) {
    add_to_port( myport );
    printf( "extent_server: get %lld\n", id );

    id &= 0x7fffffff;

    int   size = 0;
    char* cbuf = NULL;

    im->read_file( id, &cbuf, &size );
    if ( size == 0 )
        buf = "";
    else {
        buf.assign( cbuf, size );
        free( cbuf );
    }
    printf( "extent_server: done %lld\n", id );
    return extent_protocol::OK;
}

int extent_server::getattr( in_port_t myport, extent_protocol::extentid_t id, extent_protocol::attr& a ) {
    add_to_port( myport );
    printf( "extent_server: getattr %lld\n", id );

    id &= 0x7fffffff;

    extent_protocol::attr attr;
    memset( &attr, 0, sizeof( attr ) );
    im->getattr( id, attr );
    a = attr;

    return extent_protocol::OK;
}

int extent_server::remove( in_port_t myport, extent_protocol::extentid_t id, int& ) {
    add_to_port( myport );
    printf( "extent_server: write %lld\n", id );

    id &= 0x7fffffff;
    revoke( id );
    im->remove_file( id );

    return extent_protocol::OK;
}

extent_protocol_r::status extent_server::revoke( extent_protocol::extentid_t id ) {
    std::vector< in_port_t > cache_ports;
    pthread_mutex_lock( &mutex );
    for ( size_t i = 0; i < ports.size(); i++ ) {
        cache_ports.push_back( ports[ i ] );
    }
    pthread_mutex_unlock( &mutex );
    printf( "trying to revoke: %lld\n", id );
    int whatever;
    printf( "currently ports to be revoked: %lu\n", cache_ports.size() );
    for ( size_t i = 0; i < cache_ports.size(); ++i ) {

        in_port_t current_port = cache_ports[ i ];

        printf( "port #%lu: %u\n", i, current_port );
        std::ostringstream os;
        os << "127.0.0.1:" << current_port;

        handle                    h( os.str() );
        extent_protocol_r::status ret;
        if ( h.safebind() ) {
            ret = h.safebind()->call( extent_protocol_r::revoke_handler, id, whatever );
            printf( "Done!\n" );
        }

        if ( !h.safebind() || ret != extent_protocol_r::OK ) {
            printf( "failure! code: %d\n", ret );
        }

        // printf( "cl->call() response: %d\n", r );
        // printf( "going to call cl->cancel()\n" );
        // // cl->cancel();

        // printf( "going to delete cl\n" );
        // // delete cl;
    }

    return extent_protocol::OK;
}