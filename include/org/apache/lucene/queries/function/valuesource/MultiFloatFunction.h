//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MultiFloatFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction))
#define OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief Abstract <code>ValueSource</code> implementation which wraps multiple ValueSources
 and applies an extendible float function to their values.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  IOSObjectArray *sources_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSourceArray:(IOSObjectArray *)sources;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

#pragma mark Protected

/*!
 @brief Called by <code>FunctionValues.exists</code> for each document.
 Default impl returns true if <em>all</em> of the specified <code>values</code> 
 <code>FunctionValues.exists</code> for the specified doc, else false.
 - seealso: FunctionValues#exists
 - seealso: MultiFunction#allExists
 */
- (jboolean)existsWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr;

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction, sources_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSourceArray_(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction *self, IOSObjectArray *sources);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiFloatFunction")