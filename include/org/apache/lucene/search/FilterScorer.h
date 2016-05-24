//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilterScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilterScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchFilterScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchFilterScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilterScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilterScorer

#if !defined (OrgApacheLuceneSearchFilterScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilterScorer || defined(INCLUDE_OrgApacheLuceneSearchFilterScorer))
#define OrgApacheLuceneSearchFilterScorer_

#define RESTRICT_OrgApacheLuceneSearchScorer 1
#define INCLUDE_OrgApacheLuceneSearchScorer 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneSearchTwoPhaseIterator;
@class OrgApacheLuceneSearchWeight;

/*!
 @brief A <code>FilterScorer</code> contains another <code>Scorer</code>, which it
 uses as its basic source of data, possibly transforming the data along the
 way or providing additional functionality.
 The class
 <code>FilterScorer</code> itself simply implements all abstract methods
 of <code>Scorer</code> with versions that pass all requests to the
 contained scorer. Subclasses of <code>FilterScorer</code> may
 further override some of these methods and may also provide additional
 methods and fields.
 */
@interface OrgApacheLuceneSearchFilterScorer : OrgApacheLuceneSearchScorer {
 @public
  OrgApacheLuceneSearchScorer *in_;
}

#pragma mark Public

/*!
 @brief Create a new FilterScorer
 @param inArg the <code>Scorer</code> to wrap
 */
- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)inArg;

/*!
 @brief Create a new FilterScorer with a specific weight
 @param inArg the <code>Scorer</code> to wrap
 @param weight a <code>Weight</code>
 */
- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)inArg
                    withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight;

- (jint)advanceWithInt:(jint)target;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (jint)nextDoc;

- (jfloat)score;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilterScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilterScorer, in_, OrgApacheLuceneSearchScorer *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchFilterScorer *self, OrgApacheLuceneSearchScorer *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchWeight_(OrgApacheLuceneSearchFilterScorer *self, OrgApacheLuceneSearchScorer *inArg, OrgApacheLuceneSearchWeight *weight);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilterScorer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilterScorer")