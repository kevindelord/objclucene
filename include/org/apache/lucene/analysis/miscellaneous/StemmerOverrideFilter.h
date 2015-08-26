//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_) && (OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap;
@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap:(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *)stemmerOverrideMap;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *stemmerOverrideMap);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *stemmerOverrideMap) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter)

#endif

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_) && (OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_

@class IOSCharArray;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilFstFST_Arc;
@class OrgApacheLuceneUtilFstFST_BytesReader;

@interface OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
                                      withBoolean:(jboolean)ignoreCase;

- (OrgApacheLuceneUtilBytesRef *)getWithCharArray:(IOSCharArray *)buffer
                                          withInt:(jint)bufferLen
                withOrgApacheLuceneUtilFstFST_Arc:(OrgApacheLuceneUtilFstFST_Arc *)scratchArc
        withOrgApacheLuceneUtilFstFST_BytesReader:(OrgApacheLuceneUtilFstFST_BytesReader *)fstReader;

- (OrgApacheLuceneUtilFstFST_BytesReader *)getBytesReader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_initWithOrgApacheLuceneUtilFstFST_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *self, OrgApacheLuceneUtilFstFST *fst, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_initWithOrgApacheLuceneUtilFstFST_withBoolean_(OrgApacheLuceneUtilFstFST *fst, jboolean ignoreCase) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap)

#endif

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_) && (OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_

@class OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap;
@protocol JavaLangCharSequence;

@interface OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithBoolean:(jboolean)ignoreCase;

- (jboolean)addWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
               withJavaLangCharSequence:(id<JavaLangCharSequence>)output;

- (OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *)build;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_init(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *self, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(jboolean ignoreCase) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_INCLUDE_ALL")