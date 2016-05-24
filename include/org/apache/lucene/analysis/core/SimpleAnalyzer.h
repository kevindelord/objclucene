//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/SimpleAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreSimpleAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreSimpleAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreSimpleAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreSimpleAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreSimpleAnalyzer

#if !defined (OrgApacheLuceneAnalysisCoreSimpleAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreSimpleAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisCoreSimpleAnalyzer))
#define OrgApacheLuceneAnalysisCoreSimpleAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzer 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzer 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;

/*!
 @brief An <code>Analyzer</code> that filters <code>LetterTokenizer</code> 
 with <code>LowerCaseFilter</code>
 */
@interface OrgApacheLuceneAnalysisCoreSimpleAnalyzer : OrgApacheLuceneAnalysisAnalyzer

#pragma mark Public

/*!
 @brief Creates a new <code>SimpleAnalyzer</code>
 */
- (instancetype)init;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreSimpleAnalyzer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreSimpleAnalyzer_init(OrgApacheLuceneAnalysisCoreSimpleAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreSimpleAnalyzer *new_OrgApacheLuceneAnalysisCoreSimpleAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreSimpleAnalyzer *create_OrgApacheLuceneAnalysisCoreSimpleAnalyzer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreSimpleAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreSimpleAnalyzer")