#include "inode_manager.h"
#include <cstring>
#include <iostream>

// disk layer -----------------------------------------

disk::disk() {
    bzero( blocks, sizeof( blocks ) );
}

void disk::read_block( blockid_t id, char* buf ) {
    std::memcpy( buf, blocks[ id ], BLOCK_SIZE );
}

void disk::write_block( blockid_t id, const char* buf ) {
    std::memcpy( blocks[ id ], buf, BLOCK_SIZE );
}

// block layer -----------------------------------------

// Allocate a free disk block.
blockid_t block_manager::alloc_block() {
    for ( uint32_t i = IBLOCK( 0, sb.nblocks ); i < BLOCK_SIZE; ++i ) {
        auto found_iter = using_blocks.find( i );
        if ( found_iter == using_blocks.end() ) {
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
    auto remove_iter = using_blocks.find( id );
    if ( remove_iter != using_blocks.end() ) {
        using_blocks.erase( remove_iter );

        char buf[ BLOCK_SIZE ];
        read_block( BBLOCK( id ), buf );

        uint32_t block_inner_id = id % BPB;
        short    block_offset   = ( short )block_inner_id % 8;
        buf[ block_inner_id ] &= ~( short( 1 ) << ( 7 - block_offset ) );

        write_block( BBLOCK( id ), buf );

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
    d->read_block( id, buf );
}

void block_manager::write_block( uint32_t id, const char* buf ) {
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
    inode pinode;
    pinode.type        = type;
    pinode.size        = 0;
    pinode.ctime       = ( unsigned int )time( NULL );
    pinode.mtime       = ( unsigned int )time( NULL );
    pinode.atime       = ( unsigned int )time( NULL );
    pinode.blocks[ 0 ] = 0;

    // Finding a block to put inode in

    for ( uint32_t inum = 1; inum < INODE_NUM; ++inum ) {
        if ( get_inode( inum ) == NULL ) {
            // gotcha!
            put_inode( inum, &pinode );
            return inum;
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

    return;
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

    ino_disk = ( struct inode* )buf + inum % IPB;
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

    bm->read_block( IBLOCK( inum, bm->sb.nblocks ), buf );
    ino_disk  = ( struct inode* )buf + inum % IPB;
    *ino_disk = *ino;
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

    return;
}

/* alloc/free blocks if needed */
void inode_manager::write_file( uint32_t inum, const char* buf, int size ) {
    /*
     * your code goes here.
     * note: write buf to blocks of inode inum.
     * you need to consider the situation when the size of buf
     * is larger or smaller than the size of original inode
     */

    return;
}

void inode_manager::getattr( uint32_t inum, extent_protocol::attr& a ) {

    auto pnode = get_inode( inum );
    // pnode->atime = ( uint32_t )time( NULL );
    a.type  = ( uint32_t )pnode->type;
    a.atime = pnode->atime;
    a.ctime = pnode->ctime;
    a.mtime = pnode->mtime;
    a.size  = pnode->size;
    return;
}

void inode_manager::remove_file( uint32_t inum ) {
    /*
     * your code goes here
     * note: you need to consider about both the data block and inode of the file
     */

    return;
}
