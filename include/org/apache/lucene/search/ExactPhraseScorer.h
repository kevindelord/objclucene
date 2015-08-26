//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ExactPhraseScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchExactPhraseScorer_INCLUDE_ALL")
#if OrgApacheLuceneSearchExactPhraseScorer_RESTRICT
#define OrgApacheLuceneSearchExactPhraseScorer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchExactPhraseScorer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchExactPhraseScorer_RESTRICT

#if !defined (_OrgApacheLuceneSearchExactPhraseScorer_) && (OrgApacheLuceneSearchExactPhraseScorer_INCLUDE_ALL || OrgApacheLuceneSearchExactPhraseScorer_INCLUDE)
#define _OrgApacheLuceneSearchExactPhraseScorer_

#define OrgApacheLuceneSearchScorer_RESTRICT 1
#define OrgApacheLuceneSearchScorer_INCLUDE 1
#include "org/apache/lucene/search/Scorer.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchExactPhraseScorer : OrgApacheLuceneSearchScorer

#pragma mark Public

- (jint)advanceWithInt:(jint)target;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (jint)nextDoc;

- (jfloat)score;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray:(IOSObjectArray *)postings
withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer
                                        withBoolean:(jboolean)needsScores;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchExactPhraseScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(OrgApacheLuceneSearchExactPhraseScorer *self, OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer, jboolean needsScores);

FOUNDATION_EXPORT OrgApacheLuceneSearchExactPhraseScorer *new_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer, jboolean needsScores) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchExactPhraseScorer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchExactPhraseScorer_INCLUDE_ALL")