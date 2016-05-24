//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseLightStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory

#if !defined (OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory))
#define OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>PortugueseLightStemFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_ptlgtstem" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
 &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
 &lt;filter class="solr.PortugueseLightStemFilterFactory"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new PortugueseLightStemFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory *new_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory *create_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPtPortugueseLightStemFilterFactory")