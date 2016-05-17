//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/shingle/ShingleFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisShingleShingleFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisShingleShingleFilterFactory

#if !defined (OrgApacheLuceneAnalysisShingleShingleFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisShingleShingleFilterFactory))
#define OrgApacheLuceneAnalysisShingleShingleFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisShingleShingleFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>ShingleFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_shingle" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
 &lt;filter class="solr.ShingleFilterFactory" minShingleSize="2" maxShingleSize="2"
 outputUnigrams="true" outputUnigramsIfNoShingles="false" tokenSeparator=" " fillerToken="_"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisShingleShingleFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new ShingleFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisShingleShingleFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisShingleShingleFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisShingleShingleFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisShingleShingleFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilterFactory *new_OrgApacheLuceneAnalysisShingleShingleFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilterFactory *create_OrgApacheLuceneAnalysisShingleShingleFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisShingleShingleFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisShingleShingleFilterFactory")
