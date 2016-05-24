//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/SparseFixedBitSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilSparseFixedBitSet")
#ifdef RESTRICT_OrgApacheLuceneUtilSparseFixedBitSet
#define INCLUDE_ALL_OrgApacheLuceneUtilSparseFixedBitSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilSparseFixedBitSet 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilSparseFixedBitSet

#if !defined (OrgApacheLuceneUtilSparseFixedBitSet_) && (INCLUDE_ALL_OrgApacheLuceneUtilSparseFixedBitSet || defined(INCLUDE_OrgApacheLuceneUtilSparseFixedBitSet))
#define OrgApacheLuceneUtilSparseFixedBitSet_

#define RESTRICT_OrgApacheLuceneUtilBitSet 1
#define INCLUDE_OrgApacheLuceneUtilBitSet 1
#include "org/apache/lucene/util/BitSet.h"

#define RESTRICT_OrgApacheLuceneUtilBits 1
#define INCLUDE_OrgApacheLuceneUtilBits 1
#include "org/apache/lucene/util/Bits.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneSearchDocIdSetIterator;

/*!
 @brief A bit set that only stores longs that have at least one bit which is set.
 The way it works is that the space of bits is divided into blocks of
 4096 bits, which is 64 longs. Then for each block, we have:<ul>
 <li>a long[] which stores the non-zero longs for that block</li>
 <li>a long so that bit <tt>i</tt> being set means that the <code>i-th</code>
 long of the block is non-null, and its offset in the array of longs is
 the number of one bits on the right of the <code>i-th</code> bit.</li></ul>
 */
@interface OrgApacheLuceneUtilSparseFixedBitSet : OrgApacheLuceneUtilBitSet < OrgApacheLuceneUtilBits, OrgApacheLuceneUtilAccountable > {
 @public
  IOSLongArray *indices_;
  IOSObjectArray *bits_;
  jint length_;
  jint nonZeroLongCount_;
  jlong ramBytesUsed_;
}

#pragma mark Public

/*!
 @brief Create a <code>SparseFixedBitSet</code> that can contain bits between
 <code>0</code> included and <code>length</code> excluded.
 */
- (instancetype)initWithInt:(jint)length;

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)it;

- (jint)approximateCardinality;

- (jint)cardinality;

/*!
 @brief Clear the bit at index <tt>i</tt>.
 */
- (void)clearWithInt:(jint)i;

- (void)clearWithInt:(jint)from
             withInt:(jint)to;

- (jboolean)getWithInt:(jint)i;

- (jint)length;

- (jint)nextSetBitWithInt:(jint)i;

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)it;

- (jint)prevSetBitWithInt:(jint)i;

- (jlong)ramBytesUsed;

/*!
 @brief Set the bit at index <tt>i</tt>.
 */
- (void)setWithInt:(jint)i;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilSparseFixedBitSet)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilSparseFixedBitSet, indices_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilSparseFixedBitSet, bits_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilSparseFixedBitSet *new_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilSparseFixedBitSet *create_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(jint length);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSparseFixedBitSet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilSparseFixedBitSet")