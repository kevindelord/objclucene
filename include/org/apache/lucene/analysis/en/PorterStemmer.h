//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/PorterStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisEnPorterStemmer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisEnPorterStemmer_RESTRICT
#define OrgApacheLuceneAnalysisEnPorterStemmer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisEnPorterStemmer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisEnPorterStemmer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisEnPorterStemmer_) && (OrgApacheLuceneAnalysisEnPorterStemmer_INCLUDE_ALL || OrgApacheLuceneAnalysisEnPorterStemmer_INCLUDE)
#define _OrgApacheLuceneAnalysisEnPorterStemmer_

@class IOSCharArray;

@interface OrgApacheLuceneAnalysisEnPorterStemmer : NSObject

#pragma mark Public

- (instancetype)init;

- (void)addWithChar:(jchar)ch;

- (IOSCharArray *)getResultBuffer;

- (jint)getResultLength;

- (void)reset;

- (jboolean)stem;

- (jboolean)stemWithCharArray:(IOSCharArray *)word;

- (jboolean)stemWithCharArray:(IOSCharArray *)word
                      withInt:(jint)wordLen;

- (jboolean)stemWithCharArray:(IOSCharArray *)wordBuffer
                      withInt:(jint)offset
                      withInt:(jint)wordLen;

- (jboolean)stemWithInt:(jint)i0;

- (NSString *)stemWithNSString:(NSString *)s;

- (NSString *)description;

#pragma mark Package-Private

- (void)rWithNSString:(NSString *)s;

- (void)settoWithNSString:(NSString *)s;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEnPorterStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnPorterStemmer_init(OrgApacheLuceneAnalysisEnPorterStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnPorterStemmer *new_OrgApacheLuceneAnalysisEnPorterStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnPorterStemmer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisEnPorterStemmer_INCLUDE_ALL")