//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/PerFieldAnalyzerWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper

#if !defined (OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper))
#define OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_

#define RESTRICT_OrgApacheLuceneAnalysisDelegatingAnalyzerWrapper 1
#define INCLUDE_OrgApacheLuceneAnalysisDelegatingAnalyzerWrapper 1
#include "org/apache/lucene/analysis/DelegatingAnalyzerWrapper.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@protocol JavaUtilMap;

/*!
 @brief This analyzer is used to facilitate scenarios where different
 fields require different analysis techniques.
 Use the Map
 argument in <code>PerFieldAnalyzerWrapper(Analyzer,java.util.Map)</code>
 to add non-default analyzers for fields.
 <p>Example usage:
 <pre class="prettyprint">
 <code>Map<String,Analyzer> analyzerPerField = new HashMap<>();
 analyzerPerField.put("firstname", new KeywordAnalyzer());
 analyzerPerField.put("lastname", new KeywordAnalyzer());
 PerFieldAnalyzerWrapper aWrapper =
 new PerFieldAnalyzerWrapper(new StandardAnalyzer(version), analyzerPerField);</code>
 
@endcode
 <p>In this example, StandardAnalyzer will be used for all fields except "firstname"
 and "lastname", for which KeywordAnalyzer will be used.
 <p>A PerFieldAnalyzerWrapper can be used like any other analyzer, for both indexing
 and query parsing.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper : OrgApacheLuceneAnalysisDelegatingAnalyzerWrapper

#pragma mark Public

/*!
 @brief Constructs with default analyzer.
 @param defaultAnalyzer Any fields not specifically
 defined to use a different analyzer will use the one provided here.
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)defaultAnalyzer;

/*!
 @brief Constructs with default analyzer and a map of analyzers to use for 
 specific fields.
 @param defaultAnalyzer Any fields not specifically
 defined to use a different analyzer will use the one provided here.
 @param fieldAnalyzers a Map (String field name to the Analyzer) to be 
 used for those fields
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)defaultAnalyzer
                                        withJavaUtilMap:(id<JavaUtilMap>)fieldAnalyzers;

- (NSString *)description;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper *new_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper *create_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, id<JavaUtilMap> fieldAnalyzers);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper *new_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, id<JavaUtilMap> fieldAnalyzers) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper *create_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, id<JavaUtilMap> fieldAnalyzers);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousPerFieldAnalyzerWrapper")