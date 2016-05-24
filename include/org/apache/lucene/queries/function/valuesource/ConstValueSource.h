//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/ConstValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceConstValueSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource))
#define OrgApacheLuceneQueriesFunctionValuesourceConstValueSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource 1
#include "org/apache/lucene/queries/function/valuesource/ConstNumberSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@protocol JavaUtilMap;

/*!
 @brief <code>ConstValueSource</code> returns a constant for all documents
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceConstValueSource : OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource {
 @public
  jfloat constant_;
}

#pragma mark Public

- (instancetype)initWithFloat:(jfloat)constant;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (jboolean)getBool;

- (jdouble)getDouble;

- (jfloat)getFloat;

- (jint)getInt;

- (jlong)getLong;

- (NSNumber *)getNumber;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceConstValueSource)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceConstValueSource_initWithFloat_(OrgApacheLuceneQueriesFunctionValuesourceConstValueSource *self, jfloat constant);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceConstValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource_initWithFloat_(jfloat constant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceConstValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource_initWithFloat_(jfloat constant);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceConstValueSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceConstValueSource")