// RPC stubs for clients to talk to extent_server

#include "extent_client.h"
#include <iostream>
#include <map>
#include <sstream>
#include <stdio.h>
#include <time.h>
#include <unistd.h>

extent_client::extent_client( std::string dst ) {
    pthread_mutex_init( &revoke_mutex, 0 );
    sockaddr_in dstsock;
    std::cout << "extent_client init dst: " << dst << std::endl;
    make_sockaddr( dst.c_str(), &dstsock );
    cl = new rpcc( dstsock );

    if ( cl->bind() != 0 ) {
        imlog( "extent_client: bind failed\n" );
    }
    else {
        imlog( "extent_client: bind success\n" );
    }
    // srand( time( NULL ) );
    int rand_port = ( unsigned )rand() % 65536;
    my_port       = rand_port;

    rpcs* server = new rpcs( my_port );
    server->reg( extent_protocol_r::revoke_handler, this, &extent_client::revoke_handler );
    // yfs = new yfs_client()
    int whatever;
    int r = server->rpcbind( my_port, whatever );
    imlog( "server->rpcbind to port %d result: %d\n", my_port, r );
}

// a demo to show how to use RPC
extent_protocol::status extent_client::create( uint32_t type, extent_protocol::extentid_t& id ) {
    pthread_mutex_lock( &revoke_mutex );
    nslog( "going to call create\n" );
    // int time = rand() % 2500;
    // usleep( time );
    int r = cl->call( extent_protocol::create, my_port, type, id );
    nslog( "done call create\n" );
    pthread_mutex_unlock( &revoke_mutex );
    return r;
}

extent_protocol::status extent_client::get( extent_protocol::extentid_t eid, std::string& buf ) {
    pthread_mutex_lock( &revoke_mutex );
    std::map< unsigned long long, std::string >::iterator result = this->getCache.find( eid );
    if ( result != this->getCache.end() ) {
        buf = result->second;
        nslog( "not going to call get. Will use cached.\n" );
        pthread_mutex_unlock( &revoke_mutex );
        return extent_protocol::OK;
    }
    imlog( "going to call get. cl->get_dst.port = %d\n", cl->get_dst().sin_port );
    // int time = rand() % 2500;
    // usleep( time );
    int r                 = cl->call( extent_protocol::get, my_port, eid, buf );
    this->getCache[ eid ] = buf;
    pthread_mutex_unlock( &revoke_mutex );
    return r;
}

extent_protocol::status extent_client::getattr( extent_protocol::extentid_t eid, extent_protocol::attr& attr ) {
    pthread_mutex_lock( &revoke_mutex );
    std::map< unsigned long long, extent_protocol::attr >::iterator result = this->attrCache.find( eid );
    if ( result != this->attrCache.end() ) {
        attr = result->second;
        nslog( "not going to call getattr. Will use cached.\n" );
        pthread_mutex_unlock( &revoke_mutex );
        return extent_protocol::OK;
    }
    nslog( "going to call getattr. cl->get_dst.port = %d\n", cl->get_dst().sin_port );
    // int time = rand() % 2500;
    // usleep( time );
    int r                  = cl->call( extent_protocol::getattr, my_port, eid, attr );
    this->attrCache[ eid ] = attr;
    pthread_mutex_unlock( &revoke_mutex );
    return r;
    // printf( "ok called getattr\n" );
}

extent_protocol::status extent_client::put( extent_protocol::extentid_t eid, std::string buf, int& i ) {
    nslog( "going to call put\n" );
    // int time = rand() % 2500;
    // usleep( time );
    int r = cl->call( extent_protocol::put, my_port, eid, buf, i );
    return r;
    // printf( "ok called put\n" );
}

extent_protocol::status extent_client::remove( extent_protocol::extentid_t eid, int& i ) {
    pthread_mutex_lock( &revoke_mutex );
    nslog( "going to call remove\n" );
    // int time = rand() % 2500;
    // usleep( time );
    int r = cl->call( extent_protocol::remove, my_port, eid, i );
    pthread_mutex_unlock( &revoke_mutex );
    return r;
    // printf( "ok called remove\n" );
}

extent_protocol_r::status extent_client::revoke_handler( extent_protocol::extentid_t eid, int& i ) {
    pthread_mutex_lock( &revoke_mutex );
    imlog( "going to call revoke\n" );
    std::map< unsigned long long, std::string >::iterator           getCacheIter  = this->getCache.find( eid );
    std::map< unsigned long long, extent_protocol::attr >::iterator attrCacheIter = this->attrCache.find( eid );
    if ( getCacheIter != this->getCache.end() ) {
        this->getCache.erase( getCacheIter );
    }

    if ( attrCacheIter != this->attrCache.end() ) {
        this->attrCache.erase( attrCacheIter );
    }
    pthread_mutex_unlock( &revoke_mutex );
    return extent_protocol_r::OK;
}