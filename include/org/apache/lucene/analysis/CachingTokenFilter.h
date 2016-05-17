//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/CachingTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCachingTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCachingTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCachingTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCachingTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCachingTokenFilter

#if !defined (OrgApacheLuceneAnalysisCachingTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCachingTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisCachingTokenFilter))
#define OrgApacheLuceneAnalysisCachingTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief This class can be used if the token attributes of a TokenStream
 are intended to be consumed more than once.
 It caches
 all token attribute states locally in a List when the first call to
 <code>incrementToken()</code> is called. Subsequent calls will used the cache.
 <p>
 <em>Important:</em> Like any proper TokenFilter, <code>reset()</code> propagates
 to the input, although only before <code>incrementToken()</code> is called the
 first time. Prior to  Lucene 5, it was never propagated.
 */
@interface OrgApacheLuceneAnalysisCachingTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

/*!
 @brief Create a new CachingTokenFilter around <code>input</code>.
 As with
 any normal TokenFilter, do <em>not</em> call reset on the input; this filter
 will do it normally.
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)end;

/*!
 @brief The first time called, it'll read and cache all tokens from the input.
 */
- (jboolean)incrementToken;

/*!
 @brief If the underlying token stream was consumed and cached.
 */
- (jboolean)isCached;

/*!
 @brief Propagates reset if incrementToken has not yet been called.
 Otherwise
 it rewinds the iterator to the beginning of the cached list.
 */
- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCachingTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCachingTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCachingTokenFilter *new_OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCachingTokenFilter *create_OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCachingTokenFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCachingTokenFilter")
