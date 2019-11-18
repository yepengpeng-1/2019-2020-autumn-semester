// the lock server implementation

#include "lock_server.h"
#include <arpa/inet.h>
#include <sstream>
#include <stdio.h>
#include <unistd.h>

lock_server::lock_server() : nacquire( 0 ) {
    for ( size_t i = 0; i < MAX_MUTEX_COUNT; ++i ) {
        pthread_mutex_init( &mutex[ i ], 0 );
    }
}

lock_protocol::status lock_server::stat( int clt, lock_protocol::lockid_t lid, int& r ) {
    lock_protocol::status ret = lock_protocol::OK;
    printf( "stat request from clt %d\n", clt );
    r = nacquire;
    return ret;
}

lock_protocol::status lock_server::acquire( int clt, lock_protocol::lockid_t lid, int& r ) {
    printf( "lock_protocol::trying to acquire the lock #%llu\n", lid );
    lock_protocol::status ret = lock_protocol::OK;
    pthread_mutex_lock( &mutex[ lid ] );
    printf( "lock_protocol::lock acquired\n" );
    return ret;
}

lock_protocol::status lock_server::release( int clt, lock_protocol::lockid_t lid, int& r ) {
    printf( "lock_protocol::trying to release the lock #%llu\n", lid );
    lock_protocol::status ret = lock_protocol::OK;
    pthread_mutex_unlock( &mutex[ lid ] );
    printf( "lock_protocol::lock released\n" );
    return ret;
}
