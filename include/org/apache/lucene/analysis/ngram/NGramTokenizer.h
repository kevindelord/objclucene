//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/NGramTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNgramNGramTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNgramNGramTokenizer

#if !defined (OrgApacheLuceneAnalysisNgramNGramTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisNgramNGramTokenizer))
#define OrgApacheLuceneAnalysisNgramNGramTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenizer 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class OrgApacheLuceneUtilAttributeFactory;

/*!
 @brief Tokenizes the input into n-grams of the given size(s).
 <p>On the contrary to <code>NGramTokenFilter</code>, this class sets offsets so
 that characters between startOffset and endOffset in the original stream are
 the same as the term chars.
 <p>For example, "abcde" would be tokenized as (minGram=2, maxGram=3):
 <table summary="ngram tokens example">
 <tr><th>Term</th><td>ab</td><td>abc</td><td>bc</td><td>bcd</td><td>cd</td><td>cde</td><td>de</td></tr>
 <tr><th>Position increment</th><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr>
 <tr><th>Position length</th><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr>
 <tr><th>Offsets</th><td>[0,2[</td><td>[0,3[</td><td>[1,3[</td><td>[1,4[</td><td>[2,4[</td><td>[2,5[</td><td>[3,5[</td></tr>
 </table>
 <a name="version"></a>
 <p>This tokenizer changed a lot in Lucene 4.4 in order to:<ul>
 <li>tokenize in a streaming fashion to support streams which are larger
 than 1024 chars (limit of the previous version),
 <li>count grams based on unicode code points instead of java chars (and
 never split in the middle of surrogate pairs),
 <li>give the ability to <code>pre-tokenize</code> the stream
 before computing n-grams.</ul>
 <p>Additionally, this class doesn't trim trailing whitespaces and emits
 tokens in a different order, tokens are now emitted by increasing start
 offsets while they used to be emitted by increasing lengths (which prevented
 from supporting large input streams).
 <p>Although <b style="color:red">highly</b> discouraged, it is still possible
 to use the old behavior through <code>Lucene43NGramTokenizer</code>.
 */
@interface OrgApacheLuceneAnalysisNgramNGramTokenizer : OrgApacheLuceneAnalysisTokenizer

+ (jint)DEFAULT_MIN_NGRAM_SIZE;

+ (jint)DEFAULT_MAX_NGRAM_SIZE;

#pragma mark Public

/*!
 @brief Creates NGramTokenizer with default min and max n-grams.
 */
- (instancetype)init;

/*!
 @brief Creates NGramTokenizer with given min and max n-grams.
 @param factory <code>org.apache.lucene.util.AttributeFactory</code> to use
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram;

/*!
 @brief Creates NGramTokenizer with given min and max n-grams.
 @param minGram the smallest n-gram to generate
 @param maxGram the largest n-gram to generate
 */
- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram;

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

#pragma mark Protected

/*!
 @brief Only collect characters which satisfy this condition.
 */
- (jboolean)isTokenCharWithInt:(jint)chr;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram
                                                withBoolean:(jboolean)edgesOnly;

- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram
                withBoolean:(jboolean)edgesOnly;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramNGramTokenizer)

inline jint OrgApacheLuceneAnalysisNgramNGramTokenizer_get_DEFAULT_MIN_NGRAM_SIZE();
#define OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MIN_NGRAM_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramNGramTokenizer, DEFAULT_MIN_NGRAM_SIZE, jint)

inline jint OrgApacheLuceneAnalysisNgramNGramTokenizer_get_DEFAULT_MAX_NGRAM_SIZE();
#define OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MAX_NGRAM_SIZE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisNgramNGramTokenizer, DEFAULT_MAX_NGRAM_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, jint minGram, jint maxGram, jboolean edgesOnly);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(jint minGram, jint maxGram, jboolean edgesOnly) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(jint minGram, jint maxGram, jboolean edgesOnly);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram, jboolean edgesOnly);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram, jboolean edgesOnly) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram, jboolean edgesOnly);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramNGramTokenizer_init(OrgApacheLuceneAnalysisNgramNGramTokenizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramNGramTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramNGramTokenizer")
