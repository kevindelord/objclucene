//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/FunctionValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionFunctionValues_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionFunctionValues_RESTRICT
#define OrgApacheLuceneQueriesFunctionFunctionValues_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionFunctionValues_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionFunctionValues_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionFunctionValues_) && (OrgApacheLuceneQueriesFunctionFunctionValues_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionFunctionValues_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionFunctionValues_

@class IOSByteArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class IOSShortArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller;
@class OrgApacheLuceneQueriesFunctionValueSourceScorer;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneUtilBytesRefBuilder;

@interface OrgApacheLuceneQueriesFunctionFunctionValues : NSObject

#pragma mark Public

- (instancetype)init;

- (jboolean)boolValWithInt:(jint)doc;

- (jboolean)bytesValWithInt:(jint)doc
withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)target;

- (jbyte)byteValWithInt:(jint)doc;

- (void)byteValWithInt:(jint)doc
         withByteArray:(IOSByteArray *)vals;

- (jdouble)doubleValWithInt:(jint)doc;

- (void)doubleValWithInt:(jint)doc
         withDoubleArray:(IOSDoubleArray *)vals;

- (jboolean)existsWithInt:(jint)doc;

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)doc;

- (jfloat)floatValWithInt:(jint)doc;

- (void)floatValWithInt:(jint)doc
         withFloatArray:(IOSFloatArray *)vals;

- (OrgApacheLuceneQueriesFunctionValueSourceScorer *)getRangeScorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                          withNSString:(NSString *)lowerVal
                                                                                          withNSString:(NSString *)upperVal
                                                                                           withBoolean:(jboolean)includeLower
                                                                                           withBoolean:(jboolean)includeUpper;

- (OrgApacheLuceneQueriesFunctionValueSourceScorer *)getScorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller;

- (jint)intValWithInt:(jint)doc;

- (void)intValWithInt:(jint)doc
         withIntArray:(IOSIntArray *)vals;

- (jlong)longValWithInt:(jint)doc;

- (void)longValWithInt:(jint)doc
         withLongArray:(IOSLongArray *)vals;

- (jint)numOrd;

- (id)objectValWithInt:(jint)doc;

- (jint)ordValWithInt:(jint)doc;

- (jshort)shortValWithInt:(jint)doc;

- (void)shortValWithInt:(jint)doc
         withShortArray:(IOSShortArray *)vals;

- (NSString *)strValWithInt:(jint)doc;

- (void)strValWithInt:(jint)doc
    withNSStringArray:(IOSObjectArray *)vals;

- (NSString *)toStringWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionFunctionValues)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionFunctionValues_init(OrgApacheLuceneQueriesFunctionFunctionValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionFunctionValues)

#endif

#if !defined (_OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_) && (OrgApacheLuceneQueriesFunctionFunctionValues_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_

@class OrgApacheLuceneUtilMutableMutableValue;

@interface OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller : NSObject

#pragma mark Public

- (instancetype)init;

- (void)fillValueWithInt:(jint)doc;

- (OrgApacheLuceneUtilMutableMutableValue *)getValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_init(OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionFunctionValues_INCLUDE_ALL")