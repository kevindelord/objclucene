//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SortedSetFieldSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource))
#define OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource 1
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchSortField;
@class OrgApacheLuceneSearchSortedSetSelector_Type;
@protocol JavaUtilMap;

/*!
 @brief Retrieves <code>FunctionValues</code> instances for multi-valued string based fields.
 <p>
 A SortedSetDocValues contains multiple values for a field, so this 
 technique "selects" a value as the representative value for the document.
 - seealso: SortedSetSelector
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource : OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource {
 @public
  OrgApacheLuceneSearchSortedSetSelector_Type *selector_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field;

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortedSetSelector_Type:(OrgApacheLuceneSearchSortedSetSelector_Type *)selector;

- (NSString *)description__;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneSearchSortField *)getSortFieldWithBoolean:(jboolean)reverse;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource, selector_, OrgApacheLuceneSearchSortedSetSelector_Type *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource *new_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource *create_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_initWithNSString_(NSString *field);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_initWithNSString_withOrgApacheLuceneSearchSortedSetSelector_Type_(OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource *self, NSString *field, OrgApacheLuceneSearchSortedSetSelector_Type *selector);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource *new_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_initWithNSString_withOrgApacheLuceneSearchSortedSetSelector_Type_(NSString *field, OrgApacheLuceneSearchSortedSetSelector_Type *selector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource *create_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource_initWithNSString_withOrgApacheLuceneSearchSortedSetSelector_Type_(NSString *field, OrgApacheLuceneSearchSortedSetSelector_Type *selector);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceSortedSetFieldSource")