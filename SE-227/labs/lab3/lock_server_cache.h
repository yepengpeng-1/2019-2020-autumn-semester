#ifndef lock_server_cache_h
#define lock_server_cache_h

#include <string>

#include "lock_protocol.h"
#include "lock_server_cache.h"
#include "rpc.h"
#include <map>
#include <pthread.h>

#define MAX_MUTEX_COUNT 1024

class lock_server_cache {
private:
    int             nacquire;
    pthread_mutex_t mutex[ MAX_MUTEX_COUNT ];

public:
    lock_server_cache();
    lock_protocol::status  stat( int clt, lock_protocol::lockid_t lid, int& );
    lock_protocol::status  acquire( int clt, lock_protocol::lockid_t lid, int& );
    lock_protocol::status  release( int clt, lock_protocol::lockid_t lid, int& );
    rlock_protocol::status revoke( int clt, int& r );
    rlock_protocol::status retry( int clt, int& r );
};

#endif
