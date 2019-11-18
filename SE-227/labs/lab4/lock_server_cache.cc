// the caching lock server implementation

#include "lock_server_cache.h"
#include "handle.h"
#include "lang/verify.h"
#include "rpc.h"
#include "tprintf.h"
#include <arpa/inet.h>
#include <sstream>
#include <stdio.h>
#include <unistd.h>

lock_server_cache::lock_server_cache() : nacquire( 0 ) {
    for ( size_t i = 0; i < MAX_MUTEX_COUNT; ++i ) {
        pthread_mutex_init( &mutex[ i ], 0 );
    }
}

lock_protocol::status lock_server_cache::stat( int clt, lock_protocol::lockid_t lid, int& r ) {
    lock_protocol::status ret = lock_protocol::OK;
    r                         = nacquire;
    return ret;
}

lock_protocol::status lock_server_cache::acquire( int clt, lock_protocol::lockid_t lid, int& r ) {
    // printf( "lock_protocol::trying to acquire the lock #%llu\n", lid );
    lock_protocol::status ret = lock_protocol::OK;
    if ( pthread_mutex_lock( &mutex[ lid ] ) == 0 ) {
        // printf( "pthread_trylock #%llu success\n", lid );
        r = lock_protocol::OK;
    }
    else {
        // printf( "pthread_trylock #%llu failure\n", lid );
        r = lock_protocol::RETRY;
    }
    // printf( "lock_protocol::lock acquired\n" );
    return ret;
}

lock_protocol::status lock_server_cache::release( int clt, lock_protocol::lockid_t lid, int& r ) {

    // printf( "lock_protocol::trying to release the lock #%llu\n", lid );
    lock_protocol::status ret = lock_protocol::OK;

    if ( pthread_mutex_unlock( &mutex[ lid ] ) == 0 ) {
        // printf( "pthread_unlock #%llu success\n", lid );
        r = lock_protocol::OK;
    }
    else {
        // printf( "pthread_unlock #%llu failure\n", lid );
        r = lock_protocol::RETRY;
    }
    // printf( "lock_protocol::lock released\n" );
    return ret;
}

rlock_protocol::status lock_server_cache::revoke( int clt, int& r ) {
    rlock_protocol::status ret = rlock_protocol::OK;
    // cl->call( rlock_protocol::revoke, cl->id(), r );
    return ret;
}

rlock_protocol::status lock_server_cache::retry( int clt, int& r ) {
    rlock_protocol::status ret = rlock_protocol::OK;
    // cl->call( rlock_protocol::retry, cl->id(), r );
    return ret;
}