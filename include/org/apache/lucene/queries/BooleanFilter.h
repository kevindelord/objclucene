//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/BooleanFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesBooleanFilter")
#ifdef RESTRICT_OrgApacheLuceneQueriesBooleanFilter
#define INCLUDE_ALL_OrgApacheLuceneQueriesBooleanFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesBooleanFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesBooleanFilter

#if !defined (OrgApacheLuceneQueriesBooleanFilter_) && (INCLUDE_ALL_OrgApacheLuceneQueriesBooleanFilter || defined(INCLUDE_OrgApacheLuceneQueriesBooleanFilter))
#define OrgApacheLuceneQueriesBooleanFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFilterClause;
@class OrgApacheLuceneSearchBooleanClause_Occur;
@class OrgApacheLuceneSearchDocIdSet;
@protocol JavaUtilIterator;
@protocol JavaUtilList;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief A container Filter that allows Boolean composition of Filters.
 Filters are allocated into one of three logical constructs;
 SHOULD, MUST NOT, MUST
 The results Filter BitSet is constructed as follows:
 SHOULD Filters are OR'd together
 The resulting Filter is NOT'd with the NOT Filters
 The resulting Filter is AND'd with the MUST Filters
 */
@interface OrgApacheLuceneQueriesBooleanFilter : OrgApacheLuceneSearchFilter < JavaLangIterable >

#pragma mark Public

- (instancetype)init;

- (void)addWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
withOrgApacheLuceneSearchBooleanClause_Occur:(OrgApacheLuceneSearchBooleanClause_Occur *)occur;

/*!
 @brief Adds a new FilterClause to the Boolean Filter container
 @param filterClause A FilterClause object containing a Filter and an Occur parameter
 */
- (void)addWithOrgApacheLuceneQueriesFilterClause:(OrgApacheLuceneQueriesFilterClause *)filterClause;

/*!
 @brief Returns the list of clauses
 */
- (id<JavaUtilList>)clauses;

- (jboolean)isEqual:(id)obj;

/*!
 @brief Returns the a DocIdSetIterator representing the Boolean composition
 of the filters that have been added.
 */
- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (NSUInteger)hash;

/*!
 @brief Returns an iterator on the clauses in this query.
 It implements the <code>Iterable</code> interface to
 make it possible to do:
 
@endcode
 */
- (id<JavaUtilIterator>)iterator;

/*!
 @brief Prints a user-readable version of this Filter.
 */
- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesBooleanFilter)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesBooleanFilter_init(OrgApacheLuceneQueriesBooleanFilter *self);

FOUNDATION_EXPORT OrgApacheLuceneQueriesBooleanFilter *new_OrgApacheLuceneQueriesBooleanFilter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesBooleanFilter *create_OrgApacheLuceneQueriesBooleanFilter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesBooleanFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesBooleanFilter")
