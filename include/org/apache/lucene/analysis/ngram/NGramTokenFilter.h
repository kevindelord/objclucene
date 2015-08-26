//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/NGramTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisNgramNGramTokenFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisNgramNGramTokenFilter_RESTRICT
#define OrgApacheLuceneAnalysisNgramNGramTokenFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisNgramNGramTokenFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisNgramNGramTokenFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisNgramNGramTokenFilter_) && (OrgApacheLuceneAnalysisNgramNGramTokenFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisNgramNGramTokenFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisNgramNGramTokenFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

#define OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE 1
#define OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE 2

@interface OrgApacheLuceneAnalysisNgramNGramTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)minGram
                                                   withInt:(jint)maxGram;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramNGramTokenFilter)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, DEFAULT_MIN_NGRAM_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, DEFAULT_MAX_NGRAM_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisNgramNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisNgramNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramNGramTokenFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisNgramNGramTokenFilter_INCLUDE_ALL")