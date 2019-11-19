// extent client interface.

#ifndef extent_client_h
#define extent_client_h

#include "extent_protocol.h"
#include "extent_server.h"
#include "rpc.h"
#include <string>

// #define DEBUG
#define IMPORTANTDEBUG

#ifdef DEBUG
#define nslog printf
#else
#define nslog( ... )
#endif

#ifdef IMPORTANTDEBUG
#define imlog printf
#else
#define imlog( ... )
#endif

class extent_client {
private:
    rpcc* cl;

public:
    extent_client( std::string dst );
    in_port_t               my_port;
    extent_protocol::status create( uint32_t type, extent_protocol::extentid_t& eid );
    extent_protocol::status get( extent_protocol::extentid_t eid, std::string& buf );
    extent_protocol::status getattr( extent_protocol::extentid_t eid, extent_protocol::attr& attr );
    extent_protocol::status put( extent_protocol::extentid_t eid, std::string buf, int& );
    extent_protocol::status remove( extent_protocol::extentid_t eid, int& );

    std::map< extent_protocol::extentid_t, std::string >           getCache;
    std::map< extent_protocol::extentid_t, extent_protocol::attr > attrCache;

    extent_protocol_r::status revoke_handler( extent_protocol::extentid_t eid, int& i );
};

#endif
