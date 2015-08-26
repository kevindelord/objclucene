//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/gl/GalicianStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisGlGalicianStemmer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisGlGalicianStemmer_RESTRICT
#define OrgApacheLuceneAnalysisGlGalicianStemmer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisGlGalicianStemmer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisGlGalicianStemmer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisGlGalicianStemmer_) && (OrgApacheLuceneAnalysisGlGalicianStemmer_INCLUDE_ALL || OrgApacheLuceneAnalysisGlGalicianStemmer_INCLUDE)
#define _OrgApacheLuceneAnalysisGlGalicianStemmer_

#define OrgApacheLuceneAnalysisPtRSLPStemmerBase_RESTRICT 1
#define OrgApacheLuceneAnalysisPtRSLPStemmerBase_INCLUDE 1
#include "org/apache/lucene/analysis/pt/RSLPStemmerBase.h"

@class IOSCharArray;

@interface OrgApacheLuceneAnalysisGlGalicianStemmer : OrgApacheLuceneAnalysisPtRSLPStemmerBase

#pragma mark Public

- (instancetype)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisGlGalicianStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGlGalicianStemmer_init(OrgApacheLuceneAnalysisGlGalicianStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGlGalicianStemmer *new_OrgApacheLuceneAnalysisGlGalicianStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisGlGalicianStemmer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisGlGalicianStemmer_INCLUDE_ALL")