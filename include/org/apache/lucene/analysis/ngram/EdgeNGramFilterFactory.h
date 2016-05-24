//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/EdgeNGramFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory

#if !defined (OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory))
#define OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Creates new instances of <code>EdgeNGramTokenFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_edgngrm" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
 &lt;filter class="solr.EdgeNGramFilterFactory" minGramSize="1" maxGramSize="1"/&gt;
 &lt;/analyzer&gt;
 
@endcode
 */
@interface OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new EdgeNGramFilterFactory
 */
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory *new_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory *create_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory")