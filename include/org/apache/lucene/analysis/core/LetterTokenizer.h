//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LetterTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCoreLetterTokenizer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCoreLetterTokenizer_RESTRICT
#define OrgApacheLuceneAnalysisCoreLetterTokenizer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCoreLetterTokenizer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCoreLetterTokenizer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCoreLetterTokenizer_) && (OrgApacheLuceneAnalysisCoreLetterTokenizer_INCLUDE_ALL || OrgApacheLuceneAnalysisCoreLetterTokenizer_INCLUDE)
#define _OrgApacheLuceneAnalysisCoreLetterTokenizer_

#define OrgApacheLuceneAnalysisUtilCharTokenizer_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilCharTokenizer_INCLUDE 1
#include "org/apache/lucene/analysis/util/CharTokenizer.h"

@class OrgApacheLuceneUtilAttributeFactory;

@interface OrgApacheLuceneAnalysisCoreLetterTokenizer : OrgApacheLuceneAnalysisUtilCharTokenizer

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

#pragma mark Protected

- (jboolean)isTokenCharWithInt:(jint)c;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreLetterTokenizer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLetterTokenizer_init(OrgApacheLuceneAnalysisCoreLetterTokenizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLetterTokenizer *new_OrgApacheLuceneAnalysisCoreLetterTokenizer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLetterTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisCoreLetterTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLetterTokenizer *new_OrgApacheLuceneAnalysisCoreLetterTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreLetterTokenizer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCoreLetterTokenizer_INCLUDE_ALL")