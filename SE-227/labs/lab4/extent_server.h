// this is the extent server

#ifndef extent_server_h
#define extent_server_h
#include "extent_protocol.h"
#include "inode_manager.h"
#include "rpc.h"
#include <pthread.h>
#include <string>
#include <vector>
class extent_server {
protected:
#if 0
  typedef struct extent {
    std::string data;
    struct extent_protocol::attr attr;
  } extent_t;
  std::map <extent_protocol::extentid_t, extent_t> extents;
#endif
    inode_manager* im;

    std::vector< in_port_t > ports;

    pthread_mutex_t mutex;

    void add_to_port( in_port_t port );

public:
    extent_server();

    int create( in_port_t myport, uint32_t type, extent_protocol::extentid_t& id );
    int put( in_port_t myport, extent_protocol::extentid_t id, std::string, int& );
    int get( in_port_t myport, extent_protocol::extentid_t id, std::string& );
    int getattr( in_port_t myport, extent_protocol::extentid_t id, extent_protocol::attr& );
    int remove( in_port_t myport, extent_protocol::extentid_t id, int& );

    extent_protocol_r::status revoke( extent_protocol::extentid_t id );
};

#endif
