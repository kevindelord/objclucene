//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SumTotalTermFreqValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource))
#define OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

/*!
 @brief <code>SumTotalTermFreqValueSource</code> returns the number of tokens.
 (sum of term freqs across all documents, across all terms).
 Returns -1 if frequencies were omitted for the field, or if 
 the codec doesn't support this statistic.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource : OrgApacheLuceneQueriesFunctionValueSource {
 @public
  NSString *indexedField_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)indexedField;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource, indexedField_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource *self, NSString *indexedField);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource_initWithNSString_(NSString *indexedField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource_initWithNSString_(NSString *indexedField);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSumTotalTermFreqValueSource")