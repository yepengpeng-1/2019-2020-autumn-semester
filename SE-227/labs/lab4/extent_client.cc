// RPC stubs for clients to talk to extent_server

#include "extent_client.h"
#include <iostream>
#include <sstream>
#include <stdio.h>
#include <time.h>
#include <unistd.h>

extent_client::extent_client( std::string dst ) {
    sockaddr_in dstsock;
    make_sockaddr( dst.c_str(), &dstsock );
    cl = new rpcc( dstsock );
    if ( cl->bind() != 0 ) {
        printf( "extent_client: bind failed\n" );
    }
}

// a demo to show how to use RPC
extent_protocol::status extent_client::create( uint32_t type, extent_protocol::extentid_t& id ) {
    printf( "going to call create\n" );
    return cl->call( extent_protocol::create, type, id );
}

extent_protocol::status extent_client::get( extent_protocol::extentid_t eid, std::string& buf ) {
    printf( "going to call get\n" );
    return cl->call( extent_protocol::get, eid, buf );
}

extent_protocol::status extent_client::getattr( extent_protocol::extentid_t eid, extent_protocol::attr& attr ) {
    printf( "going to call getattr\n" );
    return cl->call( extent_protocol::getattr, eid, attr );
    // printf( "ok called getattr\n" );
}

extent_protocol::status extent_client::put( extent_protocol::extentid_t eid, std::string buf, int& i ) {
    printf( "going to call put\n" );
    return cl->call( extent_protocol::put, eid, buf, i );
    // printf( "ok called put\n" );
    return 0;
}

extent_protocol::status extent_client::remove( extent_protocol::extentid_t eid, int& i ) {
    printf( "going to call remove\n" );
    return cl->call( extent_protocol::remove, eid, i );
    // printf( "ok called remove\n" );
}
