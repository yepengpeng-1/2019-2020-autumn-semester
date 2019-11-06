// RPC stubs for clients to talk to lock_server, and cache the locks
// see lock_client.cache.h for protocol details.

#include "lock_client_cache.h"
#include "rpc.h"
#include "tprintf.h"
#include <iostream>
#include <sstream>
#include <stdio.h>
#include <unistd.h>

int lock_client_cache::last_port = 0;

int randomSleepTime() {
    srand( ( unsigned )time( NULL ) );
    return rand() % 10 + 10;
}

lock_client_cache::lock_client_cache( std::string xdst, class lock_release_user* _lu ) : lock_client( xdst ), lu( _lu ) {
    srand( time( NULL ) ^ last_port );
    rlock_port = ( ( rand() % 32000 ) | ( 0x1 << 10 ) );
    const char* hname;
    // VERIFY(gethostname(hname, 100) == 0);
    hname = "127.0.0.1";
    std::ostringstream host;
    host << hname << ":" << rlock_port;
    id           = host.str();
    last_port    = rlock_port;
    rpcs* rlsrpc = new rpcs( rlock_port );
    rlsrpc->reg( rlock_protocol::revoke, this, &lock_client_cache::revoke_handler );
    rlsrpc->reg( rlock_protocol::retry, this, &lock_client_cache::retry_handler );
}

lock_protocol::status lock_client_cache::acquire( lock_protocol::lockid_t lid ) {
    // usleep( randomSleepTime() );
    int r;
    cl->call( lock_protocol::acquire, cl->id(), lid, r );
    // std::cout << "trying to obtain" << std::endl;
    while ( r != lock_protocol::OK ) {
        // std::cout << "not owned. sleep for a little while..." << std::endl;
        cl->call( lock_protocol::acquire, cl->id(), lid, r );
    }
    return lock_protocol::OK;
}

lock_protocol::status lock_client_cache::release( lock_protocol::lockid_t lid ) {
    // usleep( randomSleepTime() );
    int r;
    cl->call( lock_protocol::release, cl->id(), lid, r );
    // std::cout << "trying to release" << std::endl;
    while ( r != lock_protocol::OK ) {
        std::cout << "not obtained. sleep for a little while..." << std::endl;
        cl->call( lock_protocol::release, cl->id(), lid, r );
    }
    return lock_protocol::OK;
}

rlock_protocol::status lock_client_cache::revoke_handler( lock_protocol::lockid_t lid, int& ) {
    return rlock_protocol::OK;
}

rlock_protocol::status lock_client_cache::retry_handler( lock_protocol::lockid_t lid, int& ) {
    return rlock_protocol::OK;
}
