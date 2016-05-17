//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/NGramTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNgramNGramTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNgramNGramTokenFilter

#if !defined (OrgApacheLuceneAnalysisNgramNGramTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisNgramNGramTokenFilter))
#define OrgApacheLuceneAnalysisNgramNGramTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Tokenizes the input into n-grams of the given size(s).
 As of Lucene 4.4, this token filter:<ul>
 <li>handles supplementary characters correctly,</li>
 <li>emits all n-grams for the same token at the same position,</li>
 <li>does not modify offsets,</li>
 <li>sorts n-grams by their offset in the original token first, then
 increasing length (meaning that "abc" will give "a", "ab", "abc", "b", "bc",
 "c").</li></ul>
 <p>You can make this filter use the old behavior by using
 <code>org.apache.lucene.analysis.ngram.Lucene43NGramTokenFilter</code> but this is not recommended as
 it will lead to broken <code>TokenStream</code>s that will cause highlighting
 bugs.
 <p>If you were using this <code>TokenFilter</code> to perform partial highlighting,
 this won't work anymore since this filter doesn't update offsets. You should
 modify your analysis chain to use <code>NGramTokenizer</code>, and potentially
 override <code>NGramTokenizer.isTokenChar(int)</code> to perform pre-tokenization.
 */
@interface OrgApacheLuceneAnalysisNgramNGramTokenFilter : OrgApacheLuceneAnalysisTokenFilter

+ (jint)DEFAULT_MIN_NGRAM_SIZE;

+ (jint)DEFAULT_MAX_NGRAM_SIZE;

#pragma mark Public

/*!
 @brief Creates NGramTokenFilter with default min and max n-grams.
 @param input <code>TokenStream</code> holding the input to be tokenized
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

/*!
 @brief Creates NGramTokenFilter with given min and max n-grams.
 @param input <code>TokenStream</code> holding the input to be tokenized
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)minGram
                                                   withInt:(jint)maxGram;

/*!
 @brief Returns the next token in the stream, or null at EOS.
 */
- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramNGramTokenFilter)

inline jint OrgApacheLuceneAnalysisNgramNGramTokenFilter_get_DEFAULT_MIN_NGRAM_SIZE();
#define OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramNGramTokenFilter, DEFAULT_MIN_NGRAM_SIZE, jint)

inline jint OrgApacheLuceneAnalysisNgramNGramTokenFilter_get_DEFAULT_MAX_NGRAM_SIZE();
#define OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramNGramTokenFilter, DEFAULT_MAX_NGRAM_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisNgramNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenFilter *create_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisNgramNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenFilter *create_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramNGramTokenFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenFilter")
