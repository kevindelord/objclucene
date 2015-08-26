//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionWeight.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestDocumentCompletionWeight_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestDocumentCompletionWeight_RESTRICT
#define OrgApacheLuceneSearchSuggestDocumentCompletionWeight_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestDocumentCompletionWeight_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestDocumentCompletionWeight_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestDocumentCompletionWeight_) && (OrgApacheLuceneSearchSuggestDocumentCompletionWeight_INCLUDE_ALL || OrgApacheLuceneSearchSuggestDocumentCompletionWeight_INCLUDE)
#define _OrgApacheLuceneSearchSuggestDocumentCompletionWeight_

#define OrgApacheLuceneSearchWeight_RESTRICT 1
#define OrgApacheLuceneSearchWeight_INCLUDE 1
#include "org/apache/lucene/search/Weight.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchBulkScorer;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchSuggestDocumentCompletionQuery;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilIntsRef;
@protocol JavaLangCharSequence;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSuggestDocumentCompletionWeight : OrgApacheLuceneSearchWeight

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery:(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *)query
                                  withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton;

- (OrgApacheLuceneSearchBulkScorer *)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (OrgApacheLuceneUtilAutomatonAutomaton *)getAutomaton;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

#pragma mark Protected

- (jfloat)boost;

- (id<JavaLangCharSequence>)context;

- (void)setNextMatchWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)pathPrefix;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionWeight)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchSuggestDocumentCompletionWeight *self, OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query, OrgApacheLuceneUtilAutomatonAutomaton *automaton);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionWeight *new_OrgApacheLuceneSearchSuggestDocumentCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query, OrgApacheLuceneUtilAutomatonAutomaton *automaton) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionWeight)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestDocumentCompletionWeight_INCLUDE_ALL")