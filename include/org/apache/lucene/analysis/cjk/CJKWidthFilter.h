//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKWidthFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCjkCJKWidthFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCjkCJKWidthFilter_RESTRICT
#define OrgApacheLuceneAnalysisCjkCJKWidthFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCjkCJKWidthFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCjkCJKWidthFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCjkCJKWidthFilter_) && (OrgApacheLuceneAnalysisCjkCJKWidthFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisCjkCJKWidthFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisCjkCJKWidthFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisCjkCJKWidthFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCjkCJKWidthFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCjkCJKWidthFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKWidthFilter *new_OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCjkCJKWidthFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCjkCJKWidthFilter_INCLUDE_ALL")