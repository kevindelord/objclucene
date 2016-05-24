//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/CustomScoreQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesCustomScoreQuery")
#ifdef RESTRICT_OrgApacheLuceneQueriesCustomScoreQuery
#define INCLUDE_ALL_OrgApacheLuceneQueriesCustomScoreQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesCustomScoreQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesCustomScoreQuery

#if !defined (OrgApacheLuceneQueriesCustomScoreQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueriesCustomScoreQuery || defined(INCLUDE_OrgApacheLuceneQueriesCustomScoreQuery))
#define OrgApacheLuceneQueriesCustomScoreQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesCustomScoreProvider;
@class OrgApacheLuceneQueriesFunctionFunctionQuery;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;

/*!
 @brief Query that sets document score as a programmatic function of several (sub) scores:
 <ol>
 <li>the score of its subQuery (any query)</li>
 <li>(optional) the score of its <code>FunctionQuery</code> (or queries).
 </li>
 </ol>
 Subclasses can modify the computation by overriding <code>getCustomScoreProvider</code>.
 */
@interface OrgApacheLuceneQueriesCustomScoreQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

/*!
 @brief Create a CustomScoreQuery over input subQuery.
 @param subQuery the sub query whose scored is being customized. Must not be null.
 */
- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery;

/*!
 @brief Create a CustomScoreQuery over input subQuery and a <code>org.apache.lucene.queries.function.FunctionQuery</code>.
 @param subQuery the sub query whose score is being customized. Must not be null.
 @param scoringQuery a value source query whose scores are used in the custom score
 computation.  This parameter is optional - it can be null.
 */
- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery
   withOrgApacheLuceneQueriesFunctionFunctionQuery:(OrgApacheLuceneQueriesFunctionFunctionQuery *)scoringQuery;

/*!
 @brief Create a CustomScoreQuery over input subQuery and a <code>org.apache.lucene.queries.function.FunctionQuery</code>.
 @param subQuery the sub query whose score is being customized. Must not be null.
 @param scoringQueries value source queries whose scores are used in the custom score
 computation.  This parameter is optional - it can be null or even an empty array.
 */
- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery
withOrgApacheLuceneQueriesFunctionFunctionQueryArray:(IOSObjectArray *)scoringQueries;

- (OrgApacheLuceneQueriesCustomScoreQuery *)clone;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

/*!
 @brief Returns true if <code>o</code> is equal to this.
 */
- (jboolean)isEqual:(id)o;

/*!
 @brief The scoring queries that only affect the score of CustomScoreQuery.
 */
- (IOSObjectArray *)getScoringQueries;

/*!
 @brief The sub-query that CustomScoreQuery wraps, affecting both the score and which documents match.
 */
- (OrgApacheLuceneSearchQuery *)getSubQuery;

/*!
 @brief Returns a hash code value for this object.
 */
- (NSUInteger)hash;

/*!
 @brief Checks if this is strict custom scoring.
 In strict custom scoring, the <code>ValueSource</code> part does not participate in weight normalization.
 This may be useful when one wants full control over how scores are modified, and does 
 not care about normalizing by the <code>ValueSource</code> part.
 One particular case where this is useful if for testing this query.   
 <P>
 Note: only has effect when the <code>ValueSource</code> part is not null.
 */
- (jboolean)isStrict;

/*!
 @brief A short name of this query, used in <code>toString(String)</code>.
 */
- (NSString *)name;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

/*!
 @brief Set the strict mode of this query.
 @param strict The strict mode to set.
 - seealso: #isStrict()
 */
- (void)setStrictWithBoolean:(jboolean)strict;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

/*!
 @brief Returns a <code>CustomScoreProvider</code> that calculates the custom scores
 for the given <code>IndexReader</code>.
 The default implementation returns a default
 implementation as specified in the docs of <code>CustomScoreProvider</code>.
 @since 2.9.2
 */
- (OrgApacheLuceneQueriesCustomScoreProvider *)getCustomScoreProviderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesCustomScoreQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneQueriesCustomScoreQuery *self, OrgApacheLuceneSearchQuery *subQuery);

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *new_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *subQuery) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *create_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *subQuery);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQuery_(OrgApacheLuceneQueriesCustomScoreQuery *self, OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionFunctionQuery *scoringQuery);

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *new_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQuery_(OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionFunctionQuery *scoringQuery) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *create_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQuery_(OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionFunctionQuery *scoringQuery);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQueryArray_(OrgApacheLuceneQueriesCustomScoreQuery *self, OrgApacheLuceneSearchQuery *subQuery, IOSObjectArray *scoringQueries);

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *new_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQueryArray_(OrgApacheLuceneSearchQuery *subQuery, IOSObjectArray *scoringQueries) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesCustomScoreQuery *create_OrgApacheLuceneQueriesCustomScoreQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionFunctionQueryArray_(OrgApacheLuceneSearchQuery *subQuery, IOSObjectArray *scoringQueries);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesCustomScoreQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesCustomScoreQuery")