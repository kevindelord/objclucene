//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/RoaringDocIdSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilRoaringDocIdSet")
#ifdef RESTRICT_OrgApacheLuceneUtilRoaringDocIdSet
#define INCLUDE_ALL_OrgApacheLuceneUtilRoaringDocIdSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilRoaringDocIdSet 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilRoaringDocIdSet

#if !defined (OrgApacheLuceneUtilRoaringDocIdSet_) && (INCLUDE_ALL_OrgApacheLuceneUtilRoaringDocIdSet || defined(INCLUDE_OrgApacheLuceneUtilRoaringDocIdSet))
#define OrgApacheLuceneUtilRoaringDocIdSet_

#define RESTRICT_OrgApacheLuceneSearchDocIdSet 1
#define INCLUDE_OrgApacheLuceneSearchDocIdSet 1
#include "org/apache/lucene/search/DocIdSet.h"

@class OrgApacheLuceneSearchDocIdSetIterator;

/*!
 @brief <code>DocIdSet</code> implementation inspired from http://roaringbitmap.org/
 The space is divided into blocks of 2^16 bits and each block is encoded
 independently.
 In each block, if less than 2^12 bits are set, then
 documents are simply stored in a short[]. If more than 2^16-2^12 bits are
 set, then the inverse of the set is encoded in a simple short[]. Otherwise
 a <code>FixedBitSet</code> is used.
 */
@interface OrgApacheLuceneUtilRoaringDocIdSet : OrgApacheLuceneSearchDocIdSet

#pragma mark Public

/*!
 @brief Return the exact number of documents that are contained in this set.
 */
- (jint)cardinality;

- (jboolean)isCacheable;

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

- (jlong)ramBytesUsed;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilRoaringDocIdSet)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRoaringDocIdSet)

#endif

#if !defined (OrgApacheLuceneUtilRoaringDocIdSet_Builder_) && (INCLUDE_ALL_OrgApacheLuceneUtilRoaringDocIdSet || defined(INCLUDE_OrgApacheLuceneUtilRoaringDocIdSet_Builder))
#define OrgApacheLuceneUtilRoaringDocIdSet_Builder_

@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneUtilRoaringDocIdSet;

/*!
 @brief A builder of <code>RoaringDocIdSet</code>s.
 */
@interface OrgApacheLuceneUtilRoaringDocIdSet_Builder : NSObject

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)initWithInt:(jint)maxDoc;

/*!
 @brief Add the content of the provided <code>DocIdSetIterator</code>.
 */
- (OrgApacheLuceneUtilRoaringDocIdSet_Builder *)addWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)disi;

/*!
 @brief Add a new doc-id to this builder.
 NOTE: doc ids must be added in order.
 */
- (OrgApacheLuceneUtilRoaringDocIdSet_Builder *)addWithInt:(jint)docId;

/*!
 @brief Build an instance.
 */
- (OrgApacheLuceneUtilRoaringDocIdSet *)build;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilRoaringDocIdSet_Builder)

FOUNDATION_EXPORT void OrgApacheLuceneUtilRoaringDocIdSet_Builder_initWithInt_(OrgApacheLuceneUtilRoaringDocIdSet_Builder *self, jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneUtilRoaringDocIdSet_Builder *new_OrgApacheLuceneUtilRoaringDocIdSet_Builder_initWithInt_(jint maxDoc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilRoaringDocIdSet_Builder *create_OrgApacheLuceneUtilRoaringDocIdSet_Builder_initWithInt_(jint maxDoc);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRoaringDocIdSet_Builder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilRoaringDocIdSet")