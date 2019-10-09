// this is the lock server
// the lock client has a similar interface

#ifndef lock_server_h
#define lock_server_h

#include "lock_client.h"
#include "lock_protocol.h"
#include "rpc.h"
#include <pthread.h>
#include <string>

#define MAX_MUTEX_COUNT 1024

class lock_server {

protected:
    int             nacquire;
    pthread_mutex_t mutex[ MAX_MUTEX_COUNT ];

public:
    lock_server();
    ~lock_server(){};
    lock_protocol::status stat( int clt, lock_protocol::lockid_t lid, int& );
    lock_protocol::status acquire( int clt, lock_protocol::lockid_t lid, int& );
    lock_protocol::status release( int clt, lock_protocol::lockid_t lid, int& );
};

#endif
