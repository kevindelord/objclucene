//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/synonym/SolrSynonymParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisSynonymSolrSynonymParser_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisSynonymSolrSynonymParser_RESTRICT
#define OrgApacheLuceneAnalysisSynonymSolrSynonymParser_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisSynonymSolrSynonymParser_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisSynonymSolrSynonymParser_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisSynonymSolrSynonymParser_) && (OrgApacheLuceneAnalysisSynonymSolrSynonymParser_INCLUDE_ALL || OrgApacheLuceneAnalysisSynonymSolrSynonymParser_INCLUDE)
#define _OrgApacheLuceneAnalysisSynonymSolrSynonymParser_

#define OrgApacheLuceneAnalysisSynonymSynonymMap_RESTRICT 1
#define OrgApacheLuceneAnalysisSynonymSynonymMap_Parser_INCLUDE 1
#include "org/apache/lucene/analysis/synonym/SynonymMap.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisAnalyzer;

@interface OrgApacheLuceneAnalysisSynonymSolrSynonymParser : OrgApacheLuceneAnalysisSynonymSynonymMap_Parser

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)dedup
                    withBoolean:(jboolean)expand
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (void)parseWithJavaIoReader:(JavaIoReader *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSynonymSolrSynonymParser)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisSynonymSolrSynonymParser *self, jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSolrSynonymParser *new_OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSynonymSolrSynonymParser)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisSynonymSolrSynonymParser_INCLUDE_ALL")