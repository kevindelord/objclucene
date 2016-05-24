//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ByteBlockPool.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool")
#ifdef RESTRICT_OrgApacheLuceneUtilByteBlockPool
#define INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilByteBlockPool
#ifdef INCLUDE_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator
#define INCLUDE_OrgApacheLuceneUtilByteBlockPool_Allocator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneUtilByteBlockPool_DirectAllocator
#define INCLUDE_OrgApacheLuceneUtilByteBlockPool_Allocator 1
#endif

#if !defined (OrgApacheLuceneUtilByteBlockPool_) && (INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool || defined(INCLUDE_OrgApacheLuceneUtilByteBlockPool))
#define OrgApacheLuceneUtilByteBlockPool_

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneUtilByteBlockPool_Allocator;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Class that Posting and PostingVector use to write byte
 streams into shared fixed-size byte[] arrays.
 The idea
 is to allocate slices of increasing lengths For
 example, the first slice is 5 bytes, the next slice is
 14, etc.  We start by writing our bytes into the first
 5 bytes.  When we hit the end of the slice, we allocate
 the next slice and then write the address of the new
 slice into the last 4 bytes of the previous slice (the
 "forwarding address").
 Each slice is filled with 0's initially, and we mark
 the end with a non-zero byte.  This way the methods
 that are writing into the slice don't need to record
 its length and instead allocate a new slice once they
 hit a non-zero byte. 
 */
@interface OrgApacheLuceneUtilByteBlockPool : NSObject {
 @public
  /*!
   @brief array of buffers currently used in the pool.
   Buffers are allocated if
 needed don't modify this outside of this class.
   */
  IOSObjectArray *buffers_;
  /*!
   @brief Where we are in head buffer
   */
  jint byteUpto_;
  /*!
   @brief Current head buffer
   */
  IOSByteArray *buffer_;
  /*!
   @brief Current head offset
   */
  jint byteOffset_;
}

+ (jint)BYTE_BLOCK_SHIFT;

+ (jint)BYTE_BLOCK_SIZE;

+ (jint)BYTE_BLOCK_MASK;

+ (IOSIntArray *)NEXT_LEVEL_ARRAY;

+ (IOSIntArray *)LEVEL_SIZE_ARRAY;

+ (jint)FIRST_LEVEL_SIZE;

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilByteBlockPool_Allocator:(OrgApacheLuceneUtilByteBlockPool_Allocator *)allocator;

/*!
 @brief Creates a new byte slice with the given starting size and 
 returns the slices offset in the pool.
 */
- (jint)allocSliceWithByteArray:(IOSByteArray *)slice
                        withInt:(jint)upto OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Appends the bytes in the provided <code>BytesRef</code> at
 the current position.
 */
- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

/*!
 @brief Allocates a new slice with the given size.
 - seealso: ByteBlockPool#FIRST_LEVEL_SIZE
 */
- (jint)newSliceWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Advances the pool to its next buffer.
 This method should be called once
 after the constructor to initialize the pool. In contrast to the
 constructor a <code>ByteBlockPool.reset()</code> call will advance the pool to
 its first buffer immediately.
 */
- (void)nextBuffer;

/*!
 @brief Reads bytes bytes out of the pool starting at the given offset with the given  
 length into the given byte array at offset <tt>off</tt>.
 <p>Note: this method allows to copy across block boundaries.</p>
 */
- (void)readBytesWithLong:(jlong)offset
            withByteArray:(IOSByteArray *)bytes
                  withInt:(jint)off
                  withInt:(jint)length;

/*!
 @brief Resets the pool to its initial state reusing the first buffer and fills all
 buffers with <tt>0</tt> bytes before they reused or passed to
 <code>Allocator.recycleByteBlocks(byte[][],int,int)</code>.
 Calling
 <code>ByteBlockPool.nextBuffer()</code> is not needed after reset.
 */
- (void)reset;

/*!
 @brief Expert: Resets the pool to its initial state reusing the first buffer.
 Calling
 <code>ByteBlockPool.nextBuffer()</code> is not needed after reset. 
 @param zeroFillBuffers if <code>true</code> the buffers are filled with <tt>0</tt>. 
 This should be set to <code>true</code> if this pool is used with slices.
 @param reuseFirst if <code>true</code> the first buffer will be reused and calling
 <code>ByteBlockPool.nextBuffer()</code> is not needed after reset iff the 
 block pool was used before ie. <code>ByteBlockPool.nextBuffer()</code> was called before.
 */
- (void)resetWithBoolean:(jboolean)zeroFillBuffers
             withBoolean:(jboolean)reuseFirst;

- (void)setBytesRefWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                           withInt:(jint)textStart;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool, buffers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool, buffer_, IOSByteArray *)

inline jint OrgApacheLuceneUtilByteBlockPool_get_BYTE_BLOCK_SHIFT();
#define OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT 15
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilByteBlockPool, BYTE_BLOCK_SHIFT, jint)

inline jint OrgApacheLuceneUtilByteBlockPool_get_BYTE_BLOCK_SIZE();
#define OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE 32768
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilByteBlockPool, BYTE_BLOCK_SIZE, jint)

inline jint OrgApacheLuceneUtilByteBlockPool_get_BYTE_BLOCK_MASK();
#define OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK 32767
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilByteBlockPool, BYTE_BLOCK_MASK, jint)

/*!
 @brief An array holding the offset into the <code>ByteBlockPool.LEVEL_SIZE_ARRAY</code>
 to quickly navigate to the next slice level.
 */
inline IOSIntArray *OrgApacheLuceneUtilByteBlockPool_get_NEXT_LEVEL_ARRAY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilByteBlockPool, NEXT_LEVEL_ARRAY, IOSIntArray *)

/*!
 @brief An array holding the level sizes for byte slices.
 */
inline IOSIntArray *OrgApacheLuceneUtilByteBlockPool_get_LEVEL_SIZE_ARRAY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilByteBlockPool, LEVEL_SIZE_ARRAY, IOSIntArray *)

/*!
 @brief The first level size for new slices
 - seealso: ByteBlockPool#newSlice(int)
 */
inline jint OrgApacheLuceneUtilByteBlockPool_get_FIRST_LEVEL_SIZE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilByteBlockPool, FIRST_LEVEL_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool *self, OrgApacheLuceneUtilByteBlockPool_Allocator *allocator);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool *new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool *create_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool_Allocator *allocator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool)

#endif

#if !defined (OrgApacheLuceneUtilByteBlockPool_Allocator_) && (INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool || defined(INCLUDE_OrgApacheLuceneUtilByteBlockPool_Allocator))
#define OrgApacheLuceneUtilByteBlockPool_Allocator_

@class IOSByteArray;
@class IOSObjectArray;
@protocol JavaUtilList;

/*!
 @brief Abstract class for allocating and freeing byte
 blocks.
 */
@interface OrgApacheLuceneUtilByteBlockPool_Allocator : NSObject {
 @public
  jint blockSize_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)blockSize;

- (IOSByteArray *)getByteBlock;

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end;

- (void)recycleByteBlocksWithJavaUtilList:(id<JavaUtilList>)blocks;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool_Allocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_Allocator *self, jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool_Allocator)

#endif

#if !defined (OrgApacheLuceneUtilByteBlockPool_DirectAllocator_) && (INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool || defined(INCLUDE_OrgApacheLuceneUtilByteBlockPool_DirectAllocator))
#define OrgApacheLuceneUtilByteBlockPool_DirectAllocator_

@class IOSObjectArray;

/*!
 @brief A simple <code>Allocator</code> that never recycles.
 */
@interface OrgApacheLuceneUtilByteBlockPool_DirectAllocator : OrgApacheLuceneUtilByteBlockPool_Allocator

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)blockSize;

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool_DirectAllocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init();

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(jint blockSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool_DirectAllocator)

#endif

#if !defined (OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_) && (INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool || defined(INCLUDE_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator))
#define OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneUtilCounter;

/*!
 @brief A simple <code>Allocator</code> that never recycles, but
 tracks how much total RAM is in use.
 */
@interface OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator : OrgApacheLuceneUtilByteBlockPool_Allocator

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed;

- (instancetype)initWithInt:(jint)blockSize
withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed;

- (IOSByteArray *)getByteBlock;

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, OrgApacheLuceneUtilCounter *bytesUsed);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed);

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilByteBlockPool")