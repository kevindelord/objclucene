//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/TrimFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory

#if !defined (OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory))
#define OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>TrimFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_trm" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.NGramTokenizerFactory"/&gt;
 &lt;filter class="solr.TrimFilterFactory" /&gt;
 &lt;/analyzer&gt;
 
@endcode
 - seealso: TrimFilter
 */
@interface OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new TrimFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory")
