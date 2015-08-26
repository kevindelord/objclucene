//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/collation/CollationKeyAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCollationCollationKeyAnalyzer_INCLUDE_ALL")
#if OrgApacheLuceneCollationCollationKeyAnalyzer_RESTRICT
#define OrgApacheLuceneCollationCollationKeyAnalyzer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCollationCollationKeyAnalyzer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCollationCollationKeyAnalyzer_RESTRICT

#if !defined (_OrgApacheLuceneCollationCollationKeyAnalyzer_) && (OrgApacheLuceneCollationCollationKeyAnalyzer_INCLUDE_ALL || OrgApacheLuceneCollationCollationKeyAnalyzer_INCLUDE)
#define _OrgApacheLuceneCollationCollationKeyAnalyzer_

#define OrgApacheLuceneAnalysisAnalyzer_RESTRICT 1
#define OrgApacheLuceneAnalysisAnalyzer_INCLUDE 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class JavaTextCollator;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;

@interface OrgApacheLuceneCollationCollationKeyAnalyzer : OrgApacheLuceneAnalysisAnalyzer

#pragma mark Public

- (instancetype)initWithJavaTextCollator:(JavaTextCollator *)collator;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCollationCollationKeyAnalyzer)

FOUNDATION_EXPORT void OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(OrgApacheLuceneCollationCollationKeyAnalyzer *self, JavaTextCollator *collator);

FOUNDATION_EXPORT OrgApacheLuceneCollationCollationKeyAnalyzer *new_OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(JavaTextCollator *collator) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCollationCollationKeyAnalyzer)

#endif

#pragma pop_macro("OrgApacheLuceneCollationCollationKeyAnalyzer_INCLUDE_ALL")