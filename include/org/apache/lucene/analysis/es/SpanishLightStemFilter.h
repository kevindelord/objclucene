//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/es/SpanishLightStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEsSpanishLightStemFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEsSpanishLightStemFilter

#if !defined (OrgApacheLuceneAnalysisEsSpanishLightStemFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemFilter || defined(INCLUDE_OrgApacheLuceneAnalysisEsSpanishLightStemFilter))
#define OrgApacheLuceneAnalysisEsSpanishLightStemFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief A <code>TokenFilter</code> that applies <code>SpanishLightStemmer</code> to stem Spanish
 words.
 <p>
 To prevent terms from being stemmed use an instance of
 <code>SetKeywordMarkerFilter</code> or a custom <code>TokenFilter</code> that sets
 the <code>KeywordAttribute</code> before this <code>TokenStream</code>.
 </p>
 */
@interface OrgApacheLuceneAnalysisEsSpanishLightStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEsSpanishLightStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEsSpanishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisEsSpanishLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEsSpanishLightStemFilter *new_OrgApacheLuceneAnalysisEsSpanishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEsSpanishLightStemFilter *create_OrgApacheLuceneAnalysisEsSpanishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEsSpanishLightStemFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemFilter")