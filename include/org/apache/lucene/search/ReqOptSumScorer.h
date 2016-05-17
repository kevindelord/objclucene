//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ReqOptSumScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchReqOptSumScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchReqOptSumScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchReqOptSumScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchReqOptSumScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchReqOptSumScorer

#if !defined (OrgApacheLuceneSearchReqOptSumScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchReqOptSumScorer || defined(INCLUDE_OrgApacheLuceneSearchReqOptSumScorer))
#define OrgApacheLuceneSearchReqOptSumScorer_

#define RESTRICT_OrgApacheLuceneSearchScorer 1
#define INCLUDE_OrgApacheLuceneSearchScorer 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneSearchTwoPhaseIterator;
@protocol JavaUtilCollection;

/*!
 @brief A Scorer for queries with a required part and an optional part.
 Delays skipTo() on the optional part until a score() is needed.
 <br>
 This <code>Scorer</code> implements <code>Scorer.advance(int)</code>.
 */
@interface OrgApacheLuceneSearchReqOptSumScorer : OrgApacheLuceneSearchScorer {
 @public
  /*!
   @brief The scorers passed from the constructor.
   These are set to null as soon as their next() or skipTo() returns false.
   */
  OrgApacheLuceneSearchScorer *reqScorer_;
  OrgApacheLuceneSearchScorer *optScorer_;
}

#pragma mark Public

/*!
 @brief Construct a <code>ReqOptScorer</code>.
 @param reqScorer The required scorer. This must match.
 @param optScorer The optional scorer. This is used for scoring only.
 */
- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)reqScorer
                    withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)optScorer;

- (jint)advanceWithInt:(jint)target;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (id<JavaUtilCollection>)getChildren;

- (jint)nextDoc;

/*!
 @brief Returns the score of the current document matching the query.
 Initially invalid, until <code>nextDoc()</code> is called the first time.
 @return The score of the required scorer, eventually increased by the score
 of the optional scorer when it also matches the current document.
 */
- (jfloat)score;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchReqOptSumScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqOptSumScorer, reqScorer_, OrgApacheLuceneSearchScorer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqOptSumScorer, optScorer_, OrgApacheLuceneSearchScorer *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchReqOptSumScorer *self, OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchReqOptSumScorer *new_OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchReqOptSumScorer *create_OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *optScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchReqOptSumScorer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchReqOptSumScorer")
