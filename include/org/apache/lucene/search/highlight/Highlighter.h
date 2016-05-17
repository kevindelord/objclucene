//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/Highlighter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightHighlighter")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightHighlighter
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightHighlighter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightHighlighter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightHighlighter

#if !defined (OrgApacheLuceneSearchHighlightHighlighter_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightHighlighter || defined(INCLUDE_OrgApacheLuceneSearchHighlightHighlighter))
#define OrgApacheLuceneSearchHighlightHighlighter_

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol OrgApacheLuceneSearchHighlightEncoder;
@protocol OrgApacheLuceneSearchHighlightFormatter;
@protocol OrgApacheLuceneSearchHighlightFragmenter;
@protocol OrgApacheLuceneSearchHighlightScorer;

/*!
 @brief Class used to markup highlighted terms found in the best sections of a
 text, using configurable <code>Fragmenter</code>, <code>Scorer</code>, <code>Formatter</code>,
 <code>Encoder</code> and tokenizers.
 */
@interface OrgApacheLuceneSearchHighlightHighlighter : NSObject

+ (jint)DEFAULT_MAX_CHARS_TO_ANALYZE;

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchHighlightFormatter:(id<OrgApacheLuceneSearchHighlightFormatter>)formatter
                      withOrgApacheLuceneSearchHighlightEncoder:(id<OrgApacheLuceneSearchHighlightEncoder>)encoder
                       withOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)fragmentScorer;

- (instancetype)initWithOrgApacheLuceneSearchHighlightFormatter:(id<OrgApacheLuceneSearchHighlightFormatter>)formatter
                       withOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)fragmentScorer;

- (instancetype)initWithOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)fragmentScorer;

/*!
 @brief Highlights chosen terms in a text, extracting the most relevant section.
 This is a convenience method that calls
 <code>getBestFragment(TokenStream,String)</code>
 @param analyzer   the analyzer that will be used to split <code>text</code>
 into chunks
 @param text text to highlight terms in
 @param fieldName Name of field used to influence analyzer's tokenization policy
 @return highlighted text fragment or null if no terms found
 @throws InvalidTokenOffsetsException thrown if any token's endOffset exceeds the provided text's length
 */
- (NSString *)getBestFragmentWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
                                                    withNSString:(NSString *)text;

/*!
 @brief Highlights chosen terms in a text, extracting the most relevant section.
 The document text is analysed in chunks to record hit statistics
 across the document. After accumulating stats, the fragment with the highest score
 is returned
 @param tokenStream   a stream of tokens identified in the text parameter, including offset information.
 This is typically produced by an analyzer re-parsing a document's
 text. Some work may be done on retrieving TokenStreams more efficiently
 by adding support for storing original text position data in the Lucene
 index but this support is not currently available (as of Lucene 1.4 rc2).
 @param text text to highlight terms in
 @return highlighted text fragment or null if no terms found
 @throws InvalidTokenOffsetsException thrown if any token's endOffset exceeds the provided text's length
 */
- (NSString *)getBestFragmentWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                       withNSString:(NSString *)text;

/*!
 @brief Highlights chosen terms in a text, extracting the most relevant sections.
 This is a convenience method that calls
 <code>getBestFragments(TokenStream,String,int)</code>
 @param analyzer   the analyzer that will be used to split <code>text</code>
 into chunks
 @param fieldName     the name of the field being highlighted (used by analyzer)
 @param text          text to highlight terms in
 @param maxNumFragments  the maximum number of fragments.
 @return highlighted text fragments (between 0 and maxNumFragments number of fragments)
 @throws InvalidTokenOffsetsException thrown if any token's endOffset exceeds the provided text's length
 */
- (IOSObjectArray *)getBestFragmentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                           withNSString:(NSString *)fieldName
                                                           withNSString:(NSString *)text
                                                                withInt:(jint)maxNumFragments;

/*!
 @brief Highlights chosen terms in a text, extracting the most relevant sections.
 The document text is analysed in chunks to record hit statistics
 across the document. After accumulating stats, the fragments with the highest scores
 are returned as an array of strings in order of score (contiguous fragments are merged into
 one in their original order to improve readability)
 @param text          text to highlight terms in
 @param maxNumFragments  the maximum number of fragments.
 @return highlighted text fragments (between 0 and maxNumFragments number of fragments)
 @throws InvalidTokenOffsetsException thrown if any token's endOffset exceeds the provided text's length
 */
- (IOSObjectArray *)getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                              withNSString:(NSString *)text
                                                                   withInt:(jint)maxNumFragments;

/*!
 @brief Highlights terms in the  text , extracting the most relevant sections
 and concatenating the chosen fragments with a separator (typically "...").
 The document text is analysed in chunks to record hit statistics
 across the document. After accumulating stats, the fragments with the highest scores
 are returned in order as "separator" delimited strings.
 @param text        text to highlight terms in
 @param maxNumFragments  the maximum number of fragments.
 @param separator  the separator used to intersperse the document fragments (typically "...")
 @return highlighted text
 @throws InvalidTokenOffsetsException thrown if any token's endOffset exceeds the provided text's length
 */
- (NSString *)getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                        withNSString:(NSString *)text
                                                             withInt:(jint)maxNumFragments
                                                        withNSString:(NSString *)separator;

/*!
 @brief Low level api to get the most relevant (formatted) sections of the document.
 This method has been made public to allow visibility of score information held in TextFragment objects.
 Thanks to Jason Calabrese for help in redefining the interface.
 @throws IOException If there is a low-level I/O error
 @throws InvalidTokenOffsetsException thrown if any token's endOffset exceeds the provided text's length
 */
- (IOSObjectArray *)getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                                  withNSString:(NSString *)text
                                                                   withBoolean:(jboolean)mergeContiguousFragments
                                                                       withInt:(jint)maxNumFragments;

- (id<OrgApacheLuceneSearchHighlightEncoder>)getEncoder;

/*!
 @return Object used to score each text fragment
 */
- (id<OrgApacheLuceneSearchHighlightScorer>)getFragmentScorer;

- (jint)getMaxDocCharsToAnalyze;

- (id<OrgApacheLuceneSearchHighlightFragmenter>)getTextFragmenter;

- (void)setEncoderWithOrgApacheLuceneSearchHighlightEncoder:(id<OrgApacheLuceneSearchHighlightEncoder>)encoder;

- (void)setFragmentScorerWithOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)scorer;

- (void)setMaxDocCharsToAnalyzeWithInt:(jint)maxDocCharsToAnalyze;

- (void)setTextFragmenterWithOrgApacheLuceneSearchHighlightFragmenter:(id<OrgApacheLuceneSearchHighlightFragmenter>)fragmenter;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightHighlighter)

inline jint OrgApacheLuceneSearchHighlightHighlighter_get_DEFAULT_MAX_CHARS_TO_ANALYZE();
#define OrgApacheLuceneSearchHighlightHighlighter_DEFAULT_MAX_CHARS_TO_ANALYZE 51200
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchHighlightHighlighter, DEFAULT_MAX_CHARS_TO_ANALYZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightScorer_(OrgApacheLuceneSearchHighlightHighlighter *self, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightHighlighter *new_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightHighlighter *create_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer);

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(OrgApacheLuceneSearchHighlightHighlighter *self, id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightHighlighter *new_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightHighlighter *create_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer);

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(OrgApacheLuceneSearchHighlightHighlighter *self, id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightHighlighter *new_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightHighlighter *create_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightHighlighter)

#endif

#if !defined (OrgApacheLuceneSearchHighlightFragmentQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightHighlighter || defined(INCLUDE_OrgApacheLuceneSearchHighlightFragmentQueue))
#define OrgApacheLuceneSearchHighlightFragmentQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneSearchHighlightTextFragment;

@interface OrgApacheLuceneSearchHighlightFragmentQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchHighlightTextFragment *)fragA
                    withId:(OrgApacheLuceneSearchHighlightTextFragment *)fragB;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightFragmentQueue)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(OrgApacheLuceneSearchHighlightFragmentQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightFragmentQueue *new_OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightFragmentQueue *create_OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightFragmentQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightHighlighter")
