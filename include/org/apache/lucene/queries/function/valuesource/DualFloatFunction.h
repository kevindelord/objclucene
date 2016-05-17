//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DualFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction))
#define OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief Abstract <code>ValueSource</code> implementation which wraps two ValueSources
 and applies an extendible float function to their values.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *a_;
  OrgApacheLuceneQueriesFunctionValueSource *b_;
}

#pragma mark Public

/*!
 @param a  the base.
 @param b  the exponent.
 */
- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)a
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)b;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

#pragma mark Protected

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)aVals
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)bVals;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction, a_, OrgApacheLuceneQueriesFunctionValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction, b_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction")
