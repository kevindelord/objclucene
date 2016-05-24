//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocValues

#if !defined (OrgApacheLuceneIndexDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocValues || defined(INCLUDE_OrgApacheLuceneIndexDocValues))
#define OrgApacheLuceneIndexDocValues_

@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexRandomAccessOrds;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief This class contains utility methods and constants for DocValues
 */
@interface OrgApacheLuceneIndexDocValues : NSObject

#pragma mark Public

/*!
 @brief Returns a Bits representing all documents from <code>dv</code> that have a value.
 */
+ (id<OrgApacheLuceneUtilBits>)docsWithValueWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)dv
                                                                            withInt:(jint)maxDoc;

/*!
 @brief Returns a Bits representing all documents from <code>dv</code> that have a value.
 */
+ (id<OrgApacheLuceneUtilBits>)docsWithValueWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)dv
                                                                                   withInt:(jint)maxDoc;

/*!
 @brief Returns a Bits representing all documents from <code>dv</code> that have a value.
 */
+ (id<OrgApacheLuceneUtilBits>)docsWithValueWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)dv
                                                                               withInt:(jint)maxDoc;

/*!
 @brief An empty BinaryDocValues which returns <code>BytesRef.EMPTY_BYTES</code> for every document
 */
+ (OrgApacheLuceneIndexBinaryDocValues *)emptyBinary;

/*!
 @brief An empty NumericDocValues which returns zero for every document
 */
+ (OrgApacheLuceneIndexNumericDocValues *)emptyNumeric;

/*!
 @brief An empty SortedDocValues which returns <code>BytesRef.EMPTY_BYTES</code> for every document
 */
+ (OrgApacheLuceneIndexSortedDocValues *)emptySorted;

/*!
 @brief An empty SortedNumericDocValues which returns zero values for every document
 */
+ (OrgApacheLuceneIndexSortedNumericDocValues *)emptySortedNumericWithInt:(jint)maxDoc;

/*!
 @brief An empty SortedDocValues which returns <code>SortedSetDocValues.NO_MORE_ORDS</code> for every document
 */
+ (OrgApacheLuceneIndexRandomAccessOrds *)emptySortedSet;

/*!
 @brief Returns BinaryDocValues for the field, or <code>emptyBinary</code> if it has none.
 @return docvalues instance, or an empty instance if <code>field</code> does not exist in this reader.
 @throws IllegalStateException if <code>field</code> exists, but was not indexed with docvalues.
 @throws IllegalStateException if <code>field</code> has docvalues, but the type is not <code>DocValuesType.BINARY</code>
 or <code>DocValuesType.SORTED</code>.
 @throws IOException if an I/O error occurs.
 */
+ (OrgApacheLuceneIndexBinaryDocValues *)getBinaryWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                        withNSString:(NSString *)field;

/*!
 @brief Returns Bits for the field, or <code>Bits</code> matching nothing if it has none.
 @return bits instance, or an empty instance if <code>field</code> does not exist in this reader.
 @throws IllegalStateException if <code>field</code> exists, but was not indexed with docvalues.
 @throws IOException if an I/O error occurs.
 */
+ (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                     withNSString:(NSString *)field;

/*!
 @brief Returns NumericDocValues for the field, or <code>emptyNumeric()</code> if it has none.
 @return docvalues instance, or an empty instance if <code>field</code> does not exist in this reader.
 @throws IllegalStateException if <code>field</code> exists, but was not indexed with docvalues.
 @throws IllegalStateException if <code>field</code> has docvalues, but the type is not <code>DocValuesType.NUMERIC</code>.
 @throws IOException if an I/O error occurs.
 */
+ (OrgApacheLuceneIndexNumericDocValues *)getNumericWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                          withNSString:(NSString *)field;

/*!
 @brief Returns SortedDocValues for the field, or <code>emptySorted</code> if it has none.
 @return docvalues instance, or an empty instance if <code>field</code> does not exist in this reader.
 @throws IllegalStateException if <code>field</code> exists, but was not indexed with docvalues.
 @throws IllegalStateException if <code>field</code> has docvalues, but the type is not <code>DocValuesType.SORTED</code>.
 @throws IOException if an I/O error occurs.
 */
+ (OrgApacheLuceneIndexSortedDocValues *)getSortedWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                        withNSString:(NSString *)field;

/*!
 @brief Returns SortedNumericDocValues for the field, or <code>emptySortedNumeric</code> if it has none.
 @return docvalues instance, or an empty instance if <code>field</code> does not exist in this reader.
 @throws IllegalStateException if <code>field</code> exists, but was not indexed with docvalues.
 @throws IllegalStateException if <code>field</code> has docvalues, but the type is not <code>DocValuesType.SORTED_NUMERIC</code>
 or <code>DocValuesType.NUMERIC</code>.
 @throws IOException if an I/O error occurs.
 */
+ (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                                      withNSString:(NSString *)field;

/*!
 @brief Returns SortedSetDocValues for the field, or <code>emptySortedSet</code> if it has none.
 @return docvalues instance, or an empty instance if <code>field</code> does not exist in this reader.
 @throws IllegalStateException if <code>field</code> exists, but was not indexed with docvalues.
 @throws IllegalStateException if <code>field</code> has docvalues, but the type is not <code>DocValuesType.SORTED_SET</code>
 or <code>DocValuesType.SORTED</code>.
 @throws IOException if an I/O error occurs.
 */
+ (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                                              withNSString:(NSString *)field;

/*!
 @brief Returns a multi-valued view over the provided NumericDocValues
 */
+ (OrgApacheLuceneIndexSortedNumericDocValues *)singletonWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)dv
                                                                      withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithField;

/*!
 @brief Returns a multi-valued view over the provided SortedDocValues
 */
+ (OrgApacheLuceneIndexRandomAccessOrds *)singletonWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)dv;

/*!
 @brief Returns a single-valued view of the SortedNumericDocValues, if it was previously
 wrapped with <code>singleton(NumericDocValues,Bits)</code>, or null.
 - seealso: #unwrapSingletonBits(SortedNumericDocValues)
 */
+ (OrgApacheLuceneIndexNumericDocValues *)unwrapSingletonWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)dv;

/*!
 @brief Returns a single-valued view of the SortedSetDocValues, if it was previously
 wrapped with <code>singleton(SortedDocValues)</code>, or null.
 */
+ (OrgApacheLuceneIndexSortedDocValues *)unwrapSingletonWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)dv;

/*!
 @brief Returns the documents with a value for the SortedNumericDocValues, if it was previously
 wrapped with <code>singleton(NumericDocValues,Bits)</code>, or null.
 */
+ (id<OrgApacheLuceneUtilBits>)unwrapSingletonBitsWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)dv;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocValues)

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValues *OrgApacheLuceneIndexDocValues_emptyBinary();

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexDocValues_emptyNumeric();

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneIndexDocValues_emptySorted();

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedNumericDocValues *OrgApacheLuceneIndexDocValues_emptySortedNumericWithInt_(jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneIndexRandomAccessOrds *OrgApacheLuceneIndexDocValues_emptySortedSet();

FOUNDATION_EXPORT OrgApacheLuceneIndexRandomAccessOrds *OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValues *dv);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneIndexDocValues_unwrapSingletonWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *dv);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexDocValues_unwrapSingletonWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *dv);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_unwrapSingletonBitsWithOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneIndexSortedNumericDocValues *dv);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedNumericDocValues *OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *dv, id<OrgApacheLuceneUtilBits> docsWithField);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedDocValues_withInt_(OrgApacheLuceneIndexSortedDocValues *dv, jint maxDoc);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedSetDocValues_withInt_(OrgApacheLuceneIndexSortedSetDocValues *dv, jint maxDoc);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedNumericDocValues_withInt_(OrgApacheLuceneIndexSortedNumericDocValues *dv, jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneIndexDocValues_getNumericWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexBinaryDocValues *OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedNumericDocValues *OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexSortedSetDocValues *OrgApacheLuceneIndexDocValues_getSortedSetWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

FOUNDATION_EXPORT id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_(OrgApacheLuceneIndexLeafReader *reader, NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocValues)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocValues")