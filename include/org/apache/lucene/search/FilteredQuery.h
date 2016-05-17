//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilteredQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchFilteredQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilteredQuery
#ifdef INCLUDE_OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy
#define INCLUDE_OrgApacheLuceneSearchFilteredQuery_FilterStrategy 1
#endif

#if !defined (OrgApacheLuceneSearchFilteredQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilteredQuery || defined(INCLUDE_OrgApacheLuceneSearchFilteredQuery))
#define OrgApacheLuceneSearchFilteredQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFilter;
@class OrgApacheLuceneSearchFilteredQuery_FilterStrategy;

/*!
 @brief A query that applies a filter to the results of another query.
 <p>Note: the bits are retrieved from the filter each time this
 query is used in a search - use a CachingWrapperFilter to avoid
 regenerating the bits every time.
 @since 1.4
 - seealso: CachingWrapperQuery
 */
@interface OrgApacheLuceneSearchFilteredQuery : OrgApacheLuceneSearchQuery

+ (OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)RANDOM_ACCESS_FILTER_STRATEGY;

+ (OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)LEAP_FROG_FILTER_FIRST_STRATEGY;

+ (OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)LEAP_FROG_QUERY_FIRST_STRATEGY;

+ (OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)QUERY_FIRST_FILTER_STRATEGY;

#pragma mark Public

/*!
 @brief Constructs a new query which applies a filter to the results of the original query.
 <code>Filter.getDocIdSet</code> will be called every time this query is used in a search.
 @param query  Query to be filtered, cannot be <code>null</code>.
 @param filter Filter to apply to query results, cannot be <code>null</code>.
 */
- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                   withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

/*!
 @brief Expert: Constructs a new query which applies a filter to the results of the original query.
 <code>Filter.getDocIdSet</code> will be called every time this query is used in a search.
 @param query  Query to be filtered, cannot be <code>null</code>.
 @param filter Filter to apply to query results, cannot be <code>null</code>.
 @param strategy a filter strategy used to create a filtered scorer.
 - seealso: FilterStrategy
 */
- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                   withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
withOrgApacheLuceneSearchFilteredQuery_FilterStrategy:(OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)strategy;

/*!
 @brief Returns true iff <code>o</code> is equal to this.
 */
- (jboolean)isEqual:(id)o;

/*!
 @brief Returns this FilteredQuery's filter
 */
- (OrgApacheLuceneSearchFilter *)getFilter;

/*!
 @brief Returns this FilteredQuery's <code>FilterStrategy</code>
 */
- (OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)getFilterStrategy;

/*!
 @brief Returns this FilteredQuery's (unfiltered) Query
 */
- (OrgApacheLuceneSearchQuery *)getQuery;

/*!
 @brief Returns a hash code value for this object.
 */
- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

/*!
 @brief Prints a user-readable version of this query.
 */
- (NSString *)toStringWithNSString:(NSString *)s;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchFilteredQuery)

/*!
 @brief A <code>FilterStrategy</code> that conditionally uses a random access filter if
 the given <code>DocIdSet</code> supports random access (returns a non-null value
 from <code>DocIdSet.bits()</code>) and
 <code>RandomAccessFilterStrategy.useRandomAccess(Bits,long)</code> returns
 <code>true</code>.
 Otherwise this strategy falls back to a "zig-zag join" (
 <code>FilteredQuery.LEAP_FROG_FILTER_FIRST_STRATEGY</code>) strategy.
 <p>
 Note: this strategy is the default strategy in <code>FilteredQuery</code>
 </p>
 */
inline OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_get_RANDOM_ACCESS_FILTER_STRATEGY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_RANDOM_ACCESS_FILTER_STRATEGY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchFilteredQuery, RANDOM_ACCESS_FILTER_STRATEGY, OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)

/*!
 @brief A filter strategy that uses a "leap-frog" approach (also called "zig-zag join").
 In spite of the name of this constant, which one will be iterated first depends
 on the <code>cost</code> of the filter compared to the query.
 */
inline OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_get_LEAP_FROG_FILTER_FIRST_STRATEGY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_LEAP_FROG_FILTER_FIRST_STRATEGY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchFilteredQuery, LEAP_FROG_FILTER_FIRST_STRATEGY, OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)

/*!
 @brief A filter strategy that uses a "leap-frog" approach (also called "zig-zag join").
 In spite of the name of this constant, which one will be iterated first depends
 on the <code>cost</code> of the filter compared to the query.
 */
inline OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_get_LEAP_FROG_QUERY_FIRST_STRATEGY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_LEAP_FROG_QUERY_FIRST_STRATEGY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchFilteredQuery, LEAP_FROG_QUERY_FIRST_STRATEGY, OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)

/*!
 @brief A filter strategy that advances the Query or rather its <code>Scorer</code> first and consults the
 filter <code>DocIdSet</code> for each matched document.
 <p>
 Note: this strategy requires a <code>DocIdSet.bits()</code> to return a non-null value. Otherwise
 this strategy falls back to <code>FilteredQuery.LEAP_FROG_QUERY_FIRST_STRATEGY</code>
 </p>
 <p>
 Use this strategy if the filter computation is more expensive than document
 scoring or if the filter has a linear running time to compute the next
 matching doc like exact geo distances.
 </p>
 */
inline OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_get_QUERY_FIRST_FILTER_STRATEGY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery_FilterStrategy *OrgApacheLuceneSearchFilteredQuery_QUERY_FIRST_FILTER_STRATEGY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchFilteredQuery, QUERY_FIRST_FILTER_STRATEGY, OrgApacheLuceneSearchFilteredQuery_FilterStrategy *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilteredQuery *self, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchFilter *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery *new_OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchFilter *filter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery *create_OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchFilter *filter);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilteredQuery_FilterStrategy_(OrgApacheLuceneSearchFilteredQuery *self, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchFilteredQuery_FilterStrategy *strategy);

FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery *new_OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilteredQuery_FilterStrategy_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchFilteredQuery_FilterStrategy *strategy) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery *create_OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilteredQuery_FilterStrategy_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchFilteredQuery_FilterStrategy *strategy);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredQuery)

#endif

#if !defined (OrgApacheLuceneSearchFilteredQuery_FilterStrategy_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilteredQuery || defined(INCLUDE_OrgApacheLuceneSearchFilteredQuery_FilterStrategy))
#define OrgApacheLuceneSearchFilteredQuery_FilterStrategy_

@class OrgApacheLuceneSearchFilter;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief Abstract class that defines how the filter (<code>DocIdSet</code>) applied during document collection.
 */
@interface OrgApacheLuceneSearchFilteredQuery_FilterStrategy : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Rewrite the filter.
 */
- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredQuery_FilterStrategy)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilteredQuery_FilterStrategy_init(OrgApacheLuceneSearchFilteredQuery_FilterStrategy *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredQuery_FilterStrategy)

#endif

#if !defined (OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilteredQuery || defined(INCLUDE_OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy))
#define OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy_

@class OrgApacheLuceneSearchFilter;
@class OrgApacheLuceneSearchQuery;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief A <code>FilterStrategy</code> that conditionally uses a random access filter if
 the given <code>DocIdSet</code> supports random access (returns a non-null value
 from <code>DocIdSet.bits()</code>) and
 <code>RandomAccessFilterStrategy.useRandomAccess(Bits,long)</code> returns
 <code>true</code>.
 Otherwise this strategy falls back to a "zig-zag join" (
 <code>FilteredQuery.LEAP_FROG_FILTER_FIRST_STRATEGY</code>) strategy .
 */
@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy : OrgApacheLuceneSearchFilteredQuery_FilterStrategy

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

#pragma mark Protected

/*!
 @brief Expert: decides if a filter should be executed as "random-access" or not.
 random-access means the filter "filters" in a similar way as deleted docs are filtered
 in Lucene. This is faster when the filter accepts many documents.
 However, when the filter is very sparse, it can be faster to execute the query+filter
 as a conjunction in some cases.
 The default implementation returns <code>true</code> if the filter matches more than 1%
 of documents
 */
- (jboolean)useRandomAccessWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)bits
                                              withLong:(jlong)filterCost;

#pragma mark Package-Private

- (jboolean)alwaysUseRandomAccess;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy_init(OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy *new_OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy *create_OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterStrategy)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredQuery")
