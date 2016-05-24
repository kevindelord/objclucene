//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ru/RussianLightStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory

#if !defined (OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory))
#define OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>RussianLightStemFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_rulgtstem" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
 &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
 &lt;filter class="solr.RussianLightStemFilterFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new RussianLightStemFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory *new_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory *create_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisRuRussianLightStemFilterFactory")