//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilteredDocIdSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet")
#ifdef RESTRICT_OrgApacheLuceneSearchFilteredDocIdSet
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilteredDocIdSet

#if !defined (OrgApacheLuceneSearchFilteredDocIdSet_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet || defined(INCLUDE_OrgApacheLuceneSearchFilteredDocIdSet))
#define OrgApacheLuceneSearchFilteredDocIdSet_

#define RESTRICT_OrgApacheLuceneSearchDocIdSet 1
#define INCLUDE_OrgApacheLuceneSearchDocIdSet 1
#include "org/apache/lucene/search/DocIdSet.h"

@class OrgApacheLuceneSearchDocIdSetIterator;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Abstract decorator class for a DocIdSet implementation
 that provides on-demand filtering/validation
 mechanism on a given DocIdSet.
 <p>
 Technically, this same functionality could be achieved
 with ChainedFilter (under queries/), however the
 benefit of this class is it never materializes the full
 bitset for the filter.  Instead, the <code>match</code>
 method is invoked on-demand, per docID visited during
 searching.  If you know few docIDs will be visited, and
 the logic behind <code>match</code> is relatively costly,
 this may be a better way to filter than ChainedFilter.
 - seealso: DocIdSet
 */
@interface OrgApacheLuceneSearchFilteredDocIdSet : OrgApacheLuceneSearchDocIdSet

#pragma mark Public

/*!
 @brief Constructor.
 @param innerSet Underlying DocIdSet
 */
- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)innerSet;

- (id<OrgApacheLuceneUtilBits>)bits;

- (id<JavaUtilCollection>)getChildResources;

/*!
 @brief Return the wrapped <code>DocIdSet</code>.
 */
- (OrgApacheLuceneSearchDocIdSet *)getDelegate;

/*!
 @brief This DocIdSet implementation is cacheable if the inner set is cacheable.
 */
- (jboolean)isCacheable;

/*!
 @brief Implementation of the contract to build a DocIdSetIterator.
 - seealso: DocIdSetIterator
 - seealso: FilteredDocIdSetIterator
 */
- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

- (jlong)ramBytesUsed;

#pragma mark Protected

/*!
 @brief Validation method to determine whether a docid should be in the result set.
 @param docid docid to be tested
 @return true if input docid should be in the result set, false otherwise.
 */
- (jboolean)matchWithInt:(jint)docid;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredDocIdSet)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilteredDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchFilteredDocIdSet *self, OrgApacheLuceneSearchDocIdSet *innerSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredDocIdSet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet")
