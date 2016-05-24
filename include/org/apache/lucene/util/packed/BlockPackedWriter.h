//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BlockPackedWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedWriter")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBlockPackedWriter
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBlockPackedWriter

#if !defined (OrgApacheLuceneUtilPackedBlockPackedWriter_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedWriter || defined(INCLUDE_OrgApacheLuceneUtilPackedBlockPackedWriter))
#define OrgApacheLuceneUtilPackedBlockPackedWriter_

#define RESTRICT_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter 1
#define INCLUDE_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter 1
#include "org/apache/lucene/util/packed/AbstractBlockPackedWriter.h"

@class OrgApacheLuceneStoreDataOutput;

/*!
 @brief A writer for large sequences of longs.
 <p>
 The sequence is divided into fixed-size blocks and for each block, the
 difference between each value and the minimum value of the block is encoded
 using as few bits as possible. Memory usage of this class is proportional to
 the block size. Each block has an overhead between 1 and 10 bytes to store
 the minimum value and the number of bits per value of the block.
 <p>
 Format:
 <ul>
 <li>&lt;BLock&gt;<sup>BlockCount</sup>
 <li>BlockCount: &lceil; ValueCount / BlockSize &rceil;
 <li>Block: &lt;Header, (Ints)&gt;
 <li>Header: &lt;Token, (MinValue)&gt;
 <li>Token: a <code>byte</code>, first 7 bits are the
 number of bits per value (<tt>bitsPerValue</tt>). If the 8th bit is 1,
 then MinValue (see next) is <tt>0</tt>, otherwise MinValue and needs to
 be decoded
 <li>MinValue: a
 <a href="https://developers.google.com/protocol-buffers/docs/encoding#types">zigzag-encoded</a>
 <code>variable-length long</code> whose value
 should be added to every int from the block to restore the original
 values
 <li>Ints: If the number of bits per value is <tt>0</tt>, then there is
 nothing to decode and all ints are equal to MinValue. Otherwise: BlockSize
 <code>packed ints</code> encoded on exactly <tt>bitsPerValue</tt>
 bits per value. They are the subtraction of the original values and
 MinValue
 </ul>
 - seealso: BlockPackedReaderIterator
 - seealso: BlockPackedReader
 */
@interface OrgApacheLuceneUtilPackedBlockPackedWriter : OrgApacheLuceneUtilPackedAbstractBlockPackedWriter

#pragma mark Public

/*!
 @brief Sole constructor.
 @param blockSize the number of values of a single block, must be a power of 2
 */
- (instancetype)initWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                               withInt:(jint)blockSize;

#pragma mark Protected

- (void)flush;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBlockPackedWriter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(OrgApacheLuceneUtilPackedBlockPackedWriter *self, OrgApacheLuceneStoreDataOutput *outArg, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBlockPackedWriter *new_OrgApacheLuceneUtilPackedBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(OrgApacheLuceneStoreDataOutput *outArg, jint blockSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBlockPackedWriter *create_OrgApacheLuceneUtilPackedBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(OrgApacheLuceneStoreDataOutput *outArg, jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBlockPackedWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedWriter")