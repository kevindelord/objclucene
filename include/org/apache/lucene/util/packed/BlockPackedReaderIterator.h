//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BlockPackedReaderIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedReaderIterator")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBlockPackedReaderIterator
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedReaderIterator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedReaderIterator 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBlockPackedReaderIterator

#if !defined (OrgApacheLuceneUtilPackedBlockPackedReaderIterator_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedReaderIterator || defined(INCLUDE_OrgApacheLuceneUtilPackedBlockPackedReaderIterator))
#define OrgApacheLuceneUtilPackedBlockPackedReaderIterator_

@class IOSByteArray;
@class IOSLongArray;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneUtilLongsRef;

/*!
 @brief Reader for sequences of longs written with <code>BlockPackedWriter</code>.
 - seealso: BlockPackedWriter
 */
@interface OrgApacheLuceneUtilPackedBlockPackedReaderIterator : NSObject {
 @public
  OrgApacheLuceneStoreDataInput *in_;
  jint packedIntsVersion_;
  jlong valueCount_;
  jint blockSize_;
  IOSLongArray *values_;
  OrgApacheLuceneUtilLongsRef *valuesRef_;
  IOSByteArray *blocks_;
  jint off_;
  jlong ord_;
}

#pragma mark Public

/*!
 @brief Sole constructor.
 @param blockSize the number of values of a block, must be equal to the
 block size of the <code>BlockPackedWriter</code> which has
 been used to write the stream
 */
- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)packedIntsVersion
                                              withInt:(jint)blockSize
                                             withLong:(jlong)valueCount;

/*!
 @brief Read the next value.
 */
- (jlong)next;

/*!
 @brief Read between <tt>1</tt> and <code>count</code> values.
 */
- (OrgApacheLuceneUtilLongsRef *)nextWithInt:(jint)count;

/*!
 @brief Return the offset of the next value to read.
 */
- (jlong)ord;

/*!
 @brief Reset the current reader to wrap a stream of <code>valueCount</code>
 values contained in <code>in</code>.
 The block size remains unchanged. 
 */
- (void)resetWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                      withLong:(jlong)valueCount;

/*!
 @brief Skip exactly <code>count</code> values.
 */
- (void)skipWithLong:(jlong)count;

#pragma mark Package-Private

+ (jlong)readVLongWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBlockPackedReaderIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedBlockPackedReaderIterator, in_, OrgApacheLuceneStoreDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedBlockPackedReaderIterator, values_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedBlockPackedReaderIterator, valuesRef_, OrgApacheLuceneUtilLongsRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedBlockPackedReaderIterator, blocks_, IOSByteArray *)

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilPackedBlockPackedReaderIterator_readVLongWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(OrgApacheLuceneUtilPackedBlockPackedReaderIterator *self, OrgApacheLuceneStoreDataInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBlockPackedReaderIterator *new_OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(OrgApacheLuceneStoreDataInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBlockPackedReaderIterator *create_OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(OrgApacheLuceneStoreDataInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBlockPackedReaderIterator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBlockPackedReaderIterator")