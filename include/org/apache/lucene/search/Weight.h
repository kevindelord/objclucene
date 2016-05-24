//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Weight.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchWeight")
#ifdef RESTRICT_OrgApacheLuceneSearchWeight
#define INCLUDE_ALL_OrgApacheLuceneSearchWeight 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchWeight 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchWeight

#if !defined (OrgApacheLuceneSearchWeight_) && (INCLUDE_ALL_OrgApacheLuceneSearchWeight || defined(INCLUDE_OrgApacheLuceneSearchWeight))
#define OrgApacheLuceneSearchWeight_

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchBulkScorer;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchScorer;
@protocol JavaUtilSet;

/*!
 @brief Expert: Calculate query weights and build query scorers.
 <p>
 The purpose of <code>Weight</code> is to ensure searching does not modify a
 <code>Query</code>, so that a <code>Query</code> instance can be reused. <br>
 <code>IndexSearcher</code> dependent state of the query should reside in the
 <code>Weight</code>. <br>
 <code>org.apache.lucene.index.LeafReader</code> dependent state should reside in the <code>Scorer</code>.
 <p>
 Since <code>Weight</code> creates <code>Scorer</code> instances for a given
 <code>org.apache.lucene.index.LeafReaderContext</code> (<code>scorer(org.apache.lucene.index.LeafReaderContext)</code>)
 callers must maintain the relationship between the searcher's top-level
 <code>IndexReaderContext</code> and the context used to create a <code>Scorer</code>. 
 <p>
 A <code>Weight</code> is used in the following way:
 <ol>
 <li>A <code>Weight</code> is constructed by a top-level query, given a
 <code>IndexSearcher</code> (<code>Query.createWeight(IndexSearcher,boolean)</code>).
 <li>The <code>getValueForNormalization()</code> method is called on the
 <code>Weight</code> to compute the query normalization factor
 <code>Similarity.queryNorm(float)</code> of the query clauses contained in the
 query.
 <li>The query normalization factor is passed to <code>normalize(float,float)</code>. At
 this point the weighting is complete.
 <li>A <code>Scorer</code> is constructed by
 <code>scorer(org.apache.lucene.index.LeafReaderContext)</code>.
 </ol>
 @since 2.9
 */
@interface OrgApacheLuceneSearchWeight : NSObject {
 @public
  OrgApacheLuceneSearchQuery *parentQuery_;
}

#pragma mark Public

/*!
 @brief Optional method, to return a <code>BulkScorer</code> to
 score the query and send hits to a <code>Collector</code>.
 Only queries that have a different top-level approach
 need to override this; the default implementation
 pulls a normal <code>Scorer</code> and iterates and
 collects the resulting hits which are not marked as deleted.
 @param context
 the <code>org.apache.lucene.index.LeafReaderContext</code> for which to return the <code>Scorer</code>.
 @return a <code>BulkScorer</code> which scores documents and
 passes them to a collector.
 @throws IOException if there is a low-level I/O error
 */
- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

/*!
 @brief An explanation of the score computation for the named document.
 @param context the readers context to create the <code>Explanation</code> for.
 @param doc the document's id relative to the given context's reader
 @return an Explanation for the score
 @throws IOException if an <code>IOException</code> occurs
 */
- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

/*!
 @brief Expert: adds all terms occurring in this query to the terms set.
 If the
 <code>Weight</code> was created with <code>needsScores == true</code> then this
 method will only extract terms which are used for scoring, otherwise it
 will extract all terms which are used for matching.
 */
- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

/*!
 @brief The query that this concerns.
 */
- (OrgApacheLuceneSearchQuery *)getQuery;

/*!
 @brief The value for normalization of contained query clauses (e.g. sum of squared weights).
 */
- (jfloat)getValueForNormalization;

/*!
 @brief Assigns the query normalization factor and boost from parent queries to this.
 */
- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

/*!
 @brief Returns a <code>Scorer</code> which can iterate in order over all matching
 documents and assign them a score.
 <p>
 <b>NOTE:</b> null can be returned if no documents will be scored by this
 query.
 <p>
 <b>NOTE</b>: The returned <code>Scorer</code> does not have
 <code>LeafReader.getLiveDocs()</code> applied, they need to be checked on top.
 @param context
 the <code>org.apache.lucene.index.LeafReaderContext</code> for which to return the <code>Scorer</code>.
 @return a <code>Scorer</code> which scores documents in/out-of order.
 @throws IOException if there is a low-level I/O error
 */
- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

#pragma mark Protected

/*!
 @brief Sole constructor, typically invoked by sub-classes.
 @param query         the parent query
 */
- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchWeight, parentQuery_, OrgApacheLuceneSearchQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchWeight *self, OrgApacheLuceneSearchQuery *query);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchWeight)

#endif

#if !defined (OrgApacheLuceneSearchWeight_DefaultBulkScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchWeight || defined(INCLUDE_OrgApacheLuceneSearchWeight_DefaultBulkScorer))
#define OrgApacheLuceneSearchWeight_DefaultBulkScorer_

#define RESTRICT_OrgApacheLuceneSearchBulkScorer 1
#define INCLUDE_OrgApacheLuceneSearchBulkScorer 1
#include "org/apache/lucene/search/BulkScorer.h"

@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@protocol OrgApacheLuceneSearchLeafCollector;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Just wraps a Scorer and performs top scoring using it.
  
 */
@interface OrgApacheLuceneSearchWeight_DefaultBulkScorer : OrgApacheLuceneSearchBulkScorer

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (jlong)cost;

- (jint)scoreWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                        withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                            withInt:(jint)min
                                            withInt:(jint)max;

#pragma mark Package-Private

/*!
 @brief Specialized method to bulk-score all hits; we
 separate this from <code>scoreRange</code> to help out
 hotspot.
 See <a href="https://issues.apache.org/jira/browse/LUCENE-5487">LUCENE-5487</a> 
 */
+ (void)scoreAllWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                       withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer
             withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)twoPhase
                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

/*!
 @brief Specialized method to bulk-score a range of hits; we
 separate this from <code>scoreAll</code> to help out
 hotspot.
 See <a href="https://issues.apache.org/jira/browse/LUCENE-5487">LUCENE-5487</a> 
 */
+ (jint)scoreRangeWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                         withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer
               withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)twoPhase
                             withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                                 withInt:(jint)currentDoc
                                                 withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchWeight_DefaultBulkScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchWeight_DefaultBulkScorer *self, OrgApacheLuceneSearchScorer *scorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchWeight_DefaultBulkScorer *new_OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *scorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchWeight_DefaultBulkScorer *create_OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *scorer);

FOUNDATION_EXPORT jint OrgApacheLuceneSearchWeight_DefaultBulkScorer_scoreRangeWithOrgApacheLuceneSearchLeafCollector_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneUtilBits_withInt_withInt_(id<OrgApacheLuceneSearchLeafCollector> collector, OrgApacheLuceneSearchScorer *scorer, OrgApacheLuceneSearchTwoPhaseIterator *twoPhase, id<OrgApacheLuceneUtilBits> acceptDocs, jint currentDoc, jint end);

FOUNDATION_EXPORT void OrgApacheLuceneSearchWeight_DefaultBulkScorer_scoreAllWithOrgApacheLuceneSearchLeafCollector_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneUtilBits_(id<OrgApacheLuceneSearchLeafCollector> collector, OrgApacheLuceneSearchScorer *scorer, OrgApacheLuceneSearchTwoPhaseIterator *twoPhase, id<OrgApacheLuceneUtilBits> acceptDocs);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchWeight_DefaultBulkScorer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchWeight")