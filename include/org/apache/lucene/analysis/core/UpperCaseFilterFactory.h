//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/UpperCaseFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory

#if !defined (OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory))
#define OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisCoreUpperCaseFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>UpperCaseFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_uppercase" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
 &lt;filter class="solr.UpperCaseFilterFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 <p><b>NOTE:</b> In Unicode, this transformation may lose information when the
 upper case character represents more than one lower case character. Use this filter
 when you require uppercase tokens.  Use the <code>LowerCaseFilterFactory</code> for 
 general search matching
 */
@interface OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

/*!
 @brief Creates a new UpperCaseFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCoreUpperCaseFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory *new_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory *create_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory")