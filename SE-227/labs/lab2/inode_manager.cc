#include "inode_manager.h"
#include <cstring>
#include <iostream>
#include <math.h>
#include <vector>

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
            using_blocks.insert( { i, 1 } );
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

    // printlog( "trying to free block #%u\n", id );
    auto remove_iter = using_blocks.find( id );
    if ( remove_iter != using_blocks.end() ) {
        using_blocks.erase( remove_iter );
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
    // printf( "\t\tbm::read block %u\n", id );
    d->read_block( id, buf );
}

void block_manager::write_block( uint32_t id, const char* buf ) {
    // printf( "\t\tbm::write block %u\n", id );
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
    // printlog( "!! prepared to alloc an inode which has a %u type\n", type );
    inode pinode;
    pinode.type  = type;
    pinode.size  = 0;
    pinode.ctime = ( unsigned int )time( NULL );
    pinode.mtime = ( unsigned int )time( NULL );
    pinode.atime = ( unsigned int )time( NULL );

    memset( pinode.blocks, 0, sizeof( pinode.blocks ) );

    // Finding a block to put inode in

    for ( uint32_t inum = 1; inum < INODE_NUM; ++inum ) {
        auto nodeptr = get_inode( inum );
        if ( nodeptr == NULL ) {
            // gotcha!
            // printlog( "found first best match of fresh inode %d\n", inum );
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

    // printf( "\tim: get_inode %d\n", inum );

    if ( inum < 0 || inum >= INODE_NUM ) {
        // printf( "\tim: inum out of range\n" );
        return NULL;
    }

    bm->read_block( IBLOCK( inum, bm->sb.nblocks ), buf );
    // printf("%s:%d\n", __FILE__, __LINE__);

    ino_disk = ( struct inode* )buf;
    if ( ino_disk->type == 0 ) {
        // printf( "\tim: inode not exist\n" );
        return NULL;
    }

    ino  = ( struct inode* )malloc( sizeof( struct inode ) );
    *ino = *ino_disk;

    return ino;
}

void inode_manager::put_inode( uint32_t inum, struct inode* ino ) {
    char buf[ BLOCK_SIZE ];

    // printf( "\tim: put_inode %d\n", inum );
    if ( ino == NULL )
        return;

    // printf( "\tput_inode::read_block %d\n", IBLOCK( inum, bm->sb.nblocks ) );
    bm->read_block( IBLOCK( inum, bm->sb.nblocks ), buf );

    memcpy( buf, ino, sizeof( inode ) );

    // printf( "\tput_inode::write_block %d\n", IBLOCK( inum, bm->sb.nblocks ) );
    bm->write_block( IBLOCK( inum, bm->sb.nblocks ), buf );
}

unsigned int getBlockCount( unsigned int size ) {
    if ( size <= 0 ) {
        return 0;
    }
    return int( ceil( double( size ) / BLOCK_SIZE ) );
}

std::vector< blockid_t > getUsedBlocks( const inode_t* pinode, block_manager* bm ) {
    printlog( "inode_manager::getUsedBlocks called!\n" );
    std::vector< blockid_t > block_id_vector;
    for ( size_t i = 0; i < NDIRECT; i++ ) {
        if ( pinode->blocks[ i ] < 2 || pinode->blocks[ i ] > BLOCK_NUM - 1 ) {
            printlog( "\tinvalid block_id %u. stopped.\n", pinode->blocks[ i ] );
            return block_id_vector;
        }
        printlog( "\tuse block %u\n", pinode->blocks[ i ] );
        block_id_vector.push_back( pinode->blocks[ i ] );
    }
    auto mother_block = pinode->blocks[ NDIRECT ];
    if ( mother_block < 2 || mother_block > BLOCK_NUM - 1 ) {
        printlog( "\tinvalid mother_block_id %u. stopped.\n", mother_block );
        return block_id_vector;
    }
    char buffer[ BLOCK_SIZE ];
    bm->read_block( mother_block, buffer );
    auto block_id_array = ( blockid_t* )buffer;
    for ( size_t i = 0; i < BLOCK_SIZE / sizeof( blockid_t ); i++ ) {
        if ( block_id_array[ i ] < 2 || block_id_array[ i ] > BLOCK_NUM ) {
            return block_id_vector;
        }
        printlog( "\tuse block %u\n", pinode->blocks[ i ] );
        block_id_vector.push_back( block_id_array[ i ] );
    }
    return block_id_vector;
}

blockid_t addOneBlock( inode_t* pinode, block_manager* bm, unsigned int currentBlockCount ) {

    auto blockCount = currentBlockCount;
    printlog( "addOneBlock called!\ncurrent block count is: %u", blockCount );
    auto blockid = bm->alloc_block();
    if ( blockCount < NDIRECT ) {
        pinode->blocks[ blockCount ] = blockid;
        printlog( "\tadd one block #%d at blocks[%d]\n", blockid, blockCount );
        return blockid;
    }
    else if ( blockCount == NDIRECT ) {
        pinode->blocks[ NDIRECT ] = bm->alloc_block();
    }
    char buffer[ BLOCK_SIZE ];
    bm->read_block( pinode->blocks[ NDIRECT ], buffer );
    ( ( blockid_t* )buffer )[ blockCount - NDIRECT ] = blockid;
    printlog( "\tadd one block #%d at blocks[100][%d]\n", blockid, blockCount - NDIRECT );
    bm->write_block( pinode->blocks[ NDIRECT ], buffer );
    return blockid;
}

void freeLastBlock( inode_t* pinode, block_manager* bm, unsigned int currentBlockCount ) {
    auto blockCount = currentBlockCount;
    // auto usedBlock  = getUsedBlocks( pinode, bm );
    // auto lastItem   = usedBlock[ usedBlock.size() - 1 ];
    if ( blockCount <= NDIRECT ) {
        bm->free_block( pinode->blocks[ blockCount - 1 ] );
        pinode->blocks[ blockCount - 1 ] = 0;
    }
    else if ( blockCount > NDIRECT ) {
        char buffer[ BLOCK_SIZE ];
        bm->read_block( pinode->blocks[ NDIRECT ], buffer );
        auto toremove_block_id = ( ( blockid_t* )buffer )[ blockCount - NDIRECT - 1 ];
        bm->free_block( toremove_block_id );
        pinode->blocks[ toremove_block_id ] = 0;
        if ( blockCount == NDIRECT + 1 ) {
            bm->free_block( pinode->blocks[ NDIRECT ] );
            pinode->blocks[ NDIRECT ] = 0;
        }
    }
}
/* Get all the data of a file by inum.
 * Return alloced data, should be freed by caller. */
void inode_manager::read_file( uint32_t inum, char** buf_out, int* size ) {
    printlog( "\n!!!   !!!\ninode_manager::read_file called! \n\tinum: %u\n", inum );
    /*
     * your code goes here.
     * note: read blocks related to inode number inum,
     * and copy them to buf_Out
     */
    auto pinode     = get_inode( inum );
    auto usedBlocks = getUsedBlocks( pinode, bm );
    auto total_size = pinode->size;
    *size           = ( int )total_size;
    printlog( "\tsize: %d\n\tgetBlockCount: %u\n\tusedBlocks.size(): %lu\n", *size, getBlockCount( pinode->size ), usedBlocks.size() );
    assert( getBlockCount( pinode->size ) == usedBlocks.size() );

    *buf_out          = ( char* )calloc( total_size, sizeof( char ) );
    size_t read_bytes = 0;

    char buf_in[ BLOCK_SIZE ];
    for ( auto elem : usedBlocks ) {
        auto to_read_bytes = std::min( ( unsigned long )BLOCK_SIZE, total_size - read_bytes );
        bm->read_block( elem, buf_in );
        memcpy( ( *buf_out ) + read_bytes, buf_in, to_read_bytes );
        printlog( "inode_manager::read_file reads %lu bytes from block #%d\n", to_read_bytes, elem );
        read_bytes += to_read_bytes;
    }
}

/* alloc/free blocks if needed */
void inode_manager::write_file( uint32_t inum, const char* buf, int size ) {
    printlog( "\n!!!   !!!\ninode_manager::write_file called! \n\tinum: %u\n\tsize: %d\n", inum, size );
    auto pinode       = get_inode( inum );
    auto current_size = pinode->size;
    auto new_size     = ( unsigned int )size;

    auto current_block_count = getBlockCount( current_size );
    auto new_block_count     = getBlockCount( new_size );
    pinode->size             = new_size;
    pinode->mtime            = ( unsigned )time( NULL );
    pinode->ctime            = ( unsigned )time( NULL );

    printlog( "\torigin bytes:  %u new bytes:  %u\n", current_size, new_size );
    printlog( "\torigin blocks: %u new blocks: %u\n", current_block_count, new_block_count );

    char tmpbuf[ BLOCK_SIZE ];
    auto to_write_blocks = getUsedBlocks( pinode, bm );
    if ( current_block_count == new_block_count ) {
        // needless to do anything
    }
    else if ( current_block_count > new_block_count ) {
        for ( size_t i = current_block_count; i > new_block_count; i-- ) {
            printlog( "inode_manager::write_file: going to free one block with current: %lu\n", i );
            freeLastBlock( pinode, bm, i );
        }
    }
    else if ( current_block_count < new_block_count ) {
        for ( size_t i = current_block_count; i < new_block_count; i++ ) {
            printlog( "inode_manager::write_file: going to allocate one block with current: %lu\n", i );
            to_write_blocks.push_back( addOneBlock( pinode, bm, i ) );
        }
    }
    unsigned long written_bytes = 0;
    for ( size_t i = 0; i < new_block_count; i++ ) {
        memset( tmpbuf, 0, BLOCK_SIZE );
        auto written_block_id = to_write_blocks[ i ];
        auto to_write_bytes   = std::min( ( unsigned long )BLOCK_SIZE, new_size - written_bytes );
        memcpy( tmpbuf, buf + written_bytes, to_write_bytes );
        printlog( "inode_manager::write_file: writing into block #%d\n", written_block_id );
        bm->write_block( written_block_id, tmpbuf );
        written_bytes += to_write_bytes;
    }
    put_inode( inum, pinode );
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

    // printlog( "\n=== getattr ===\n\n\tinode: %d\n\ttype: %d\n\tatime: %u\n\tctime: %u\n\tmtime: %u\n\tsize: %u\n\n", inum, a.type, a.atime, a.ctime, a.mtime, a.size );

    // printlog( "blocks: \n" );
    for ( size_t i = 0; i < 100; i++ ) {
        if ( pnode->blocks[ i ] == 0 ) {
            break;
        }
        // printlog( "#%d ", pnode->blocks[ i ] );
    }
    // printlog( ".\n" );
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
