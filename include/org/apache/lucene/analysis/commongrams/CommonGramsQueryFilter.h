//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/commongrams/CommonGramsQueryFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_RESTRICT
#define OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_) && (OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisCommongramsCommonGramsFilter;

@interface OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisCommongramsCommonGramsFilter:(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *)input;

- (jboolean)incrementToken;

- (jboolean)isGramType;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_initWithOrgApacheLuceneAnalysisCommongramsCommonGramsFilter_(OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter *self, OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter *new_OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_initWithOrgApacheLuceneAnalysisCommongramsCommonGramsFilter_(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCommongramsCommonGramsQueryFilter_INCLUDE_ALL")