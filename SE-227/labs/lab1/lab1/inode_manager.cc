#include "inode_manager.h"
#include <cstring>
#include <iostream>
#include <math.h>

// disk layer -----------------------------------------

disk::disk() {
    bzero( blocks, sizeof( blocks ) );
}

void disk::read_block( blockid_t id, char* buf ) {
    memcpy( buf, blocks[ id ], BLOCK_SIZE );
}

void disk::write_block( blockid_t id, const char* buf ) {
    memcpy( blocks[ id ], buf, BLOCK_SIZE );
}

// block layer -----------------------------------------

// Allocate a free disk block.
blockid_t block_manager::alloc_block() {
    for ( uint32_t i = IBLOCK( INODE_NUM, sb.nblocks ) + 1; i < BLOCK_NUM; ++i ) {
        auto found_iter = using_blocks.find( i );
        if ( found_iter == using_blocks.end() ) {
            printlog( "block check matched #%d\n", i );
            // Unoccupied here
            using_blocks.insert( { i, 1 } );

            char buf[ BLOCK_SIZE ];
            read_block( BBLOCK( i ), buf );

            uint32_t block_inner_id = i % BPB;
            short    block_offset   = ( short )block_inner_id % 8;
            buf[ block_inner_id ] |= ( short( 1 ) << ( 7 - block_offset ) );

            write_block( BBLOCK( i ), buf );
            return i;
        }
    }
    std::cerr << "failed to alloc more blocks" << std::endl;
    assert( false );
    return 0;
}

void block_manager::free_block( uint32_t id ) {
    /*
     * your code goes here.
     * note: you should unmark the corresponding bit in the block bitmap when free.
     */

    printlog( "trying to free block #%u\n", id );
    auto remove_iter = using_blocks.find( id );
    if ( remove_iter != using_blocks.end() ) {
        using_blocks.erase( remove_iter );

        char buf[ BLOCK_SIZE ];
        read_block( BBLOCK( id ), buf );

        uint32_t block_inner_id = id % BPB;
        short    block_offset   = ( short )block_inner_id % 8;
        buf[ block_inner_id ] &= ~( short( 1 ) << ( 7 - block_offset ) );

        write_block( BBLOCK( id ), buf );
        printlog( "freed block #%d\n", id );
        return;
    }
}

// The layout of disk should be like this:
// |<-sb->|<-free block bitmap->|<-inode table->|<-data->|
block_manager::block_manager() {
    d = new disk();

    // format the disk, initializing the super block
    sb.size    = BLOCK_SIZE * BLOCK_NUM;
    sb.nblocks = BLOCK_NUM;
    sb.ninodes = INODE_NUM;
}

void block_manager::read_block( uint32_t id, char* buf ) {
    printf( "\t\tbm::read block %u\n", id );
    d->read_block( id, buf );
}

void block_manager::write_block( uint32_t id, const char* buf ) {
    printf( "\t\tbm::write block %u\n", id );
    d->write_block( id, buf );
}

// inode layer -----------------------------------------

inode_manager::inode_manager() {
    bm                = new block_manager();
    uint32_t root_dir = alloc_inode( extent_protocol::T_DIR );
    if ( root_dir != 1 ) {
        printf( "\tim: error! alloc first inode %d, should be 1\n", root_dir );
        exit( 0 );
    }
}

inode_manager::~inode_manager() {
    delete bm;
}

/* Create a new file.
 * Return its inum. */
uint32_t inode_manager::alloc_inode( uint32_t type ) {
    printlog( "!! prepared to alloc an inode which has a %u type\n", type );
    inode pinode;
    pinode.type        = type;
    pinode.size        = 0;
    pinode.ctime       = ( unsigned int )time( NULL );
    pinode.mtime       = ( unsigned int )time( NULL );
    pinode.atime       = ( unsigned int )time( NULL );
    pinode.blocks[ 0 ] = 0;

    // Finding a block to put inode in

    for ( uint32_t inum = 1; inum < INODE_NUM; ++inum ) {
        auto nodeptr = get_inode( inum );
        if ( nodeptr == NULL ) {
            // gotcha!
            printlog( "found first best match of fresh inode %d\n", inum );
            put_inode( inum, &pinode );
            return inum;
        }
        else {
            free( nodeptr );
        }
    }
    std::cerr << "failed to alloc inode." << std::endl;
    assert( false );
    return -1;
}

void inode_manager::free_inode( uint32_t inum ) {
    /*
     * your code goes here.
     * note: you need to check if the inode is already a freed one;
     * if not, clear it, and remember to write back to disk.
     */
    auto pinode = get_inode( inum );
    if ( pinode != NULL ) {
        char blushbits[ sizeof( inode ) ];
        memset( blushbits, 0, sizeof( inode ) );
        put_inode( inum, ( inode* )blushbits );
    }
    delete pinode;
}

/* Return an inode structure by inum, NULL otherwise.
 * Caller should release the memory. */
struct inode* inode_manager::get_inode( uint32_t inum ) {
    struct inode *ino, *ino_disk;
    char          buf[ BLOCK_SIZE ];

    printf( "\tim: get_inode %d\n", inum );

    if ( inum < 0 || inum >= INODE_NUM ) {
        printf( "\tim: inum out of range\n" );
        return NULL;
    }

    bm->read_block( IBLOCK( inum, bm->sb.nblocks ), buf );
    // printf("%s:%d\n", __FILE__, __LINE__);

    ino_disk = ( struct inode* )buf;
    if ( ino_disk->type == 0 ) {
        printf( "\tim: inode not exist\n" );
        return NULL;
    }

    ino  = ( struct inode* )malloc( sizeof( struct inode ) );
    *ino = *ino_disk;

    return ino;
}

void inode_manager::put_inode( uint32_t inum, struct inode* ino ) {
    char          buf[ BLOCK_SIZE ];
    struct inode* ino_disk;

    printf( "\tim: put_inode %d\n", inum );
    if ( ino == NULL )
        return;

    printf( "\tput_inode::read_block %d\n", IBLOCK( inum, bm->sb.nblocks ) );
    bm->read_block( IBLOCK( inum, bm->sb.nblocks ), buf );
    ino_disk  = ( struct inode* )buf;
    *ino_disk = *ino;

    printf( "\tput_inode::write_block %d\n", IBLOCK( inum, bm->sb.nblocks ) );
    bm->write_block( IBLOCK( inum, bm->sb.nblocks ), buf );
}

#define MIN( a, b ) ( ( a ) < ( b ) ? ( a ) : ( b ) )

/* Get all the data of a file by inum.
 * Return alloced data, should be freed by caller. */
void inode_manager::read_file( uint32_t inum, char** buf_out, int* size ) {

    /*
     * your code goes here.
     * note: read blocks related to inode number inum,
     * and copy them to buf_Out
     */

    if ( *size < 0 || *size >= ( int )MAXFILE * BLOCK_SIZE ) {
        std::cerr << "bad file size" << std::endl;
    }

    auto pinode = get_inode( inum );
    if ( pinode == NULL ) {
        std::cerr << "bad inode num" << std::endl;
        delete pinode;
        return;
    }

    if ( *size != ( int )pinode->size ) {
        printlog( "!! insufficient read! modify oversized %d to %d\n", *size, pinode->size );
        *size = pinode->size;
    }
    unsigned size_bytes = ( unsigned )*size;
    *buf_out            = ( char* )malloc( size_bytes );
    auto   result_buf   = *buf_out;
    size_t read_bytes = 0, counter = 0;
    pinode->atime = ( unsigned int )time( NULL );

    if ( size_bytes <= NDIRECT * BLOCK_SIZE ) {
        printlog( "\n\t\tcan be gotten all by direct blocks. let's do it!\n" );
        char buf[ BLOCK_SIZE ];
        while ( read_bytes < size_bytes ) {
            bm->read_block( pinode->blocks[ counter ], buf );
            int to_read_bytes = std::min( size_bytes - read_bytes, ( size_t )BLOCK_SIZE );

            printlog( "\n\t\t\tgoing to read %d bytes in direct block #%u\n", to_read_bytes, pinode->blocks[ counter ] );
            std::memcpy( result_buf + read_bytes, buf, to_read_bytes );
            read_bytes += to_read_bytes;
            ++counter;
        }
        put_inode( inum, pinode );
        delete pinode;
        return;
    }

    printlog( "\n\t\needs be gotten in indirect blocks. let's do it!\n" );
    char buf[ BLOCK_SIZE ];
    while ( read_bytes < NDIRECT * BLOCK_SIZE ) {
        bm->read_block( pinode->blocks[ counter ], buf );
        int to_read_bytes = BLOCK_SIZE;
        printlog( "\n\t\t\tgoing to read %d bytes in direct block #%u\n", to_read_bytes, pinode->blocks[ counter ] );
        std::memcpy( result_buf + read_bytes, buf, to_read_bytes );
        read_bytes += to_read_bytes;
        ++counter;
    }

    // indirect block here

    char mother_block_buf[ BLOCK_SIZE ];
    bm->read_block( pinode->blocks[ NDIRECT ], mother_block_buf );

    auto block_cast_ptr = ( blockid_t* )mother_block_buf;

    counter = 0;
    while ( read_bytes < size_bytes ) {
        int to_read_bytes = std::min( size_bytes - read_bytes, ( size_t )BLOCK_SIZE );
        bm->read_block( block_cast_ptr[ counter ], buf );
        printlog( "\n\t\t\tgoing to read %d bytes in direct block #%u\n", to_read_bytes, block_cast_ptr[ counter ] );
        std::memcpy( result_buf + read_bytes, buf, to_read_bytes );
        read_bytes += to_read_bytes;
        ++counter;
    }
    put_inode( inum, pinode );
    delete pinode;
    return;
}

/* alloc/free blocks if needed */
void inode_manager::write_file( uint32_t inum, const char* buf, int size ) {
    printlog( "\n\tgoing to write inode #%u, size %d\n\tliteral content: %c ...\n", inum, size, *( const char* )buf );
    /*
     * your code goes here.
     * note: write buf to blocks of inode inum.
     * you need to consider the situation when the size of buf
     * is larger or smaller than the size of original inode
     */

    if ( size < 0 ) {
        return;
    }
    else if ( ( unsigned )size >= MAXFILE * BLOCK_SIZE ) {
        std::cerr << "file size : {" << ( unsigned )size << "} exceed limit " << MAXFILE * BLOCK_SIZE << std::endl;
        return;
    }
    auto pinode = get_inode( inum );
    if ( pinode == NULL ) {
        std::cerr << "bad inode num" << std::endl;
        return;
    }

    pinode->mtime = ( unsigned int )time( NULL );
    pinode->size  = ( unsigned int )size;
    memset( pinode->blocks, 0, sizeof( blockid_t ) * 101 );

    if ( size <= NDIRECT * BLOCK_SIZE ) {
        // can be put all in direct blocks. let's do it!
        printlog( "\n\t\tcan be put all in direct blocks. let's do it!\n" );
        int written_bytes = 0;
        int counter       = 0;
        while ( written_bytes < size ) {
            auto block_id       = bm->alloc_block();
            int  to_write_bytes = std::min( size - written_bytes, BLOCK_SIZE );

            if ( size - written_bytes >= BLOCK_SIZE ) {
                printlog( "\n\t\t\t big trunk stage\n" );
                bm->write_block( block_id, buf + written_bytes );
            }
            else {
                printlog( "\n\t\t\t goes into tail stage\n" );
                // insufficient bytes
                char ins_buf[ BLOCK_SIZE ];
                memset( ( void* )ins_buf, 0, BLOCK_SIZE );
                printlog( "!!! Gonna start memcpy %d bytes\n", size - written_bytes );
                std::memcpy( ins_buf, buf + written_bytes, size - written_bytes );
                bm->write_block( block_id, ins_buf );
            }
            printlog( "\n\t\t\tgoing to write %d bytes in direct block #%u\n", to_write_bytes, block_id );
            written_bytes += to_write_bytes;
            pinode->blocks[ counter ] = block_id;
            ++counter;
        }
        printlog( "=== pinode info === \n\tsize = %d\n\ttype = %d\n", pinode->size, pinode->type );
        printlog( "blocks: \n" );
        for ( size_t i = 0; i < 100; i++ ) {
            if ( pinode->blocks[ i ] == 0 ) {
                break;
            }
            printlog( "#%d ", pinode->blocks[ i ] );
        }
        printlog( ".\n" );
        put_inode( inum, pinode );
        return;
    }
    printlog( "\n\t\thave to use indirect blocks. let's do it!\n" );
    // more blocks should be allocated in new blocks
    // can be put all in direct blocks. let's do it!
    int written_bytes = 0;
    int counter       = 0;
    while ( written_bytes < NDIRECT * BLOCK_SIZE ) {
        auto block_id       = bm->alloc_block();
        int  to_write_bytes = std::min( size - written_bytes, BLOCK_SIZE );

        if ( size - written_bytes >= BLOCK_SIZE ) {
            bm->write_block( block_id, buf + written_bytes );
        }
        else {
            // insufficient bytes
            char ins_buf[ BLOCK_SIZE ];
            memset( ( void* )ins_buf, 0, BLOCK_SIZE );
            std::memcpy( ins_buf, buf + written_bytes, size - written_bytes );
            bm->write_block( block_id, ins_buf );
        }
        printlog( "\n\t\t\twritten %d bytes in direct block #%u\n", to_write_bytes, block_id );
        written_bytes += to_write_bytes;
        pinode->blocks[ counter ] = block_id;
        ++counter;
    }

    // indirect block here
    auto master_block         = bm->alloc_block();
    pinode->blocks[ NDIRECT ] = master_block;

    char mother_block_buf[ BLOCK_SIZE ];
    // bm->read_block( master_block, mother_block_buf );

    auto block_cast_ptr = ( blockid_t* )mother_block_buf;

    counter = 0;
    while ( written_bytes < size ) {
        auto block_id       = bm->alloc_block();
        int  to_write_bytes = std::min( size - written_bytes, BLOCK_SIZE );
        if ( size - written_bytes == BLOCK_SIZE ) {
            bm->write_block( block_id, buf + written_bytes );
        }
        else {
            // insufficient bytes
            char ins_buf[ BLOCK_SIZE ];
            memset( ( void* )ins_buf, 0, BLOCK_SIZE );
            std::memcpy( ins_buf, buf + written_bytes, size - written_bytes );
            bm->write_block( block_id, ins_buf );
        }
        printlog( "\n\t\t\tgoing to write %d bytes in indirect block #%u\n", to_write_bytes, block_id );
        written_bytes += to_write_bytes;
        block_cast_ptr[ counter ] = block_id;
        ++counter;
    }
    bm->write_block( master_block, mother_block_buf );

    printlog( "=== pinode info === \n\tsize = %d\n\ttype = %d\n", pinode->size, pinode->size );

    printlog( "blocks: \n" );
    for ( size_t i = 0; i < 100; i++ ) {
        if ( pinode->blocks[ i ] == 0 ) {
            break;
        }
        printlog( "#%d ", pinode->blocks[ i ] );
    }
    printlog( ".\n" );
    put_inode( inum, pinode );
    // free( pinode );
}

void inode_manager::getattr( uint32_t inum, extent_protocol::attr& a ) {

    auto pnode = get_inode( inum );
    if ( pnode == NULL ) {
        return;
    }
    a.type  = pnode->type;
    a.atime = pnode->atime;
    a.ctime = pnode->ctime;
    a.mtime = pnode->mtime;
    a.size  = pnode->size;
    printlog( "\n=== getattr ===\n\n\tinode: %d\n\ttype: %d\n\tatime: %u\n\tctime: %u\n\tmtime: %u\n\tsize: %u\n\n", inum, a.type, a.atime, a.ctime, a.mtime, a.size );

    printlog( "blocks: \n" );
    for ( size_t i = 0; i < 100; i++ ) {
        if ( pnode->blocks[ i ] == 0 ) {
            break;
        }
        printlog( "#%d ", pnode->blocks[ i ] );
    }
    printlog( ".\n" );
}

void inode_manager::remove_file( uint32_t inum ) {
    /*
     * your code goes here
     * note: you need to consider about both the data block and inode of the file
     */
    printlog( "oh... you wanna remove file #%d?\n", inum );
    auto pinode = get_inode( inum );
    if ( pinode == NULL ) {
        std::cerr << "no inode found" << std::endl;
        return;
    }
    auto block_array = pinode->blocks;

    size_t freed_bytes = 0;
    for ( size_t i = 0; i < NDIRECT; ++i ) {
        if ( freed_bytes >= pinode->size ) {
            break;
        }
        else if ( i == NDIRECT ) {
            // free indirect blocks
            char buf[ BLOCK_SIZE ];
            bm->read_block( block_array[ i ], buf );
            bm->free_block( block_array[ i ] );
            auto indirect_blocks = ( blockid_t* )buf;
            for ( size_t j = 0; j < BLOCK_SIZE / sizeof( blockid_t ); j++ ) {
                if ( indirect_blocks[ j ] == 0 ) {
                    break;
                }
                bm->free_block( indirect_blocks[ j ] );
                freed_bytes += BLOCK_SIZE;
            }
        }
        bm->free_block( block_array[ i ] );
        freed_bytes += BLOCK_SIZE;
    }
    // take myself away
    bm->free_block( IBLOCK( inum, bm->sb.nblocks ) );
    free_inode( inum );
    delete pinode;
}
