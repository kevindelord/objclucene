//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fa/PersianCharFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFaPersianCharFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisFaPersianCharFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFaPersianCharFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFaPersianCharFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisFaPersianCharFilterFactory

#if !defined (OrgApacheLuceneAnalysisFaPersianCharFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisFaPersianCharFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisFaPersianCharFilterFactory))
#define OrgApacheLuceneAnalysisFaPersianCharFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilCharFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilCharFilterFactory 1
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisCharFilter;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>PersianCharFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_fa" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;charFilter class="solr.PersianCharFilterFactory"/&gt;
 &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisFaPersianCharFilterFactory : OrgApacheLuceneAnalysisUtilCharFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

/*!
 @brief Creates a new PersianCharFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCharFilter *)createWithJavaIoReader:(JavaIoReader *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFaPersianCharFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFaPersianCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisFaPersianCharFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFaPersianCharFilterFactory *new_OrgApacheLuceneAnalysisFaPersianCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFaPersianCharFilterFactory *create_OrgApacheLuceneAnalysisFaPersianCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFaPersianCharFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFaPersianCharFilterFactory")