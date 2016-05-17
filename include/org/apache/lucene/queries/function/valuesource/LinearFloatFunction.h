//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/LinearFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction))
#define OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief <code>LinearFloatFunction</code> implements a linear function over
 another <code>ValueSource</code>.
 <br>
 Normally Used as an argument to a <code>org.apache.lucene.queries.function.FunctionQuery</code>
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *source_;
  jfloat slope_;
  jfloat intercept_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                        withFloat:(jfloat)slope
                                                        withFloat:(jfloat)intercept;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction, source_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat slope, jfloat intercept);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat slope, jfloat intercept) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat slope, jfloat intercept);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction")
