//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/DocValuesConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsDocValuesConsumer")
#ifdef RESTRICT_OrgApacheLuceneCodecsDocValuesConsumer
#define INCLUDE_ALL_OrgApacheLuceneCodecsDocValuesConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsDocValuesConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsDocValuesConsumer

#if !defined (OrgApacheLuceneCodecsDocValuesConsumer_) && (INCLUDE_ALL_OrgApacheLuceneCodecsDocValuesConsumer || defined(INCLUDE_OrgApacheLuceneCodecsDocValuesConsumer))
#define OrgApacheLuceneCodecsDocValuesConsumer_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexMergeState;
@protocol JavaLangIterable;
@protocol JavaUtilList;

/*!
 @brief Abstract API that consumes numeric, binary and
 sorted docvalues.
 Concrete implementations of this
 actually do "something" with the docvalues (write it into
 the index in a specific format).
 <p>
 The lifecycle is:
 <ol>
 <li>DocValuesConsumer is created by 
 <code>NormsFormat.normsConsumer(SegmentWriteState)</code>.
 <li><code>addNumericField</code>, <code>addBinaryField</code>,
 <code>addSortedField</code>, <code>addSortedSetField</code>,
 or <code>addSortedNumericField</code> are called for each Numeric,
 Binary, Sorted, SortedSet, or SortedNumeric docvalues field. 
 The API is a "pull" rather than "push", and the implementation 
 is free to iterate over the values multiple times 
 (<code>Iterable.iterator()</code>).
 <li>After all fields are added, the consumer is <code>close</code>d.
 </ol>
 */
@interface OrgApacheLuceneCodecsDocValuesConsumer : NSObject < JavaIoCloseable >

#pragma mark Public

/*!
 @brief Writes binary docvalues for a field.
 @param field field information
 @param values Iterable of binary values (one for each document). <code>null</code> indicates
 a missing value.
 @throws IOException if an I/O error occurred.
 */
- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                   withJavaLangIterable:(id<JavaLangIterable>)values;

/*!
 @brief Writes numeric docvalues for a field.
 @param field field information
 @param values Iterable of numeric values (one for each document). <code>null</code> indicates
 a missing value.
 @throws IOException if an I/O error occurred.
 */
- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                    withJavaLangIterable:(id<JavaLangIterable>)values;

/*!
 @brief Writes pre-sorted binary docvalues for a field.
 @param field field information
 @param values Iterable of binary values in sorted order (deduplicated).
 @param docToOrd Iterable of ordinals (one for each document). <code>-1</code> indicates
 a missing value.
 @throws IOException if an I/O error occurred.
 */
- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                   withJavaLangIterable:(id<JavaLangIterable>)values
                                   withJavaLangIterable:(id<JavaLangIterable>)docToOrd;

/*!
 @brief Writes pre-sorted numeric docvalues for a field
 @param field field information
 @param docToValueCount Iterable of the number of values for each document. A zero
 count indicates a missing value.
 @param values Iterable of numeric values in sorted order (not deduplicated).
 @throws IOException if an I/O error occurred.
 */
- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                          withJavaLangIterable:(id<JavaLangIterable>)docToValueCount
                                          withJavaLangIterable:(id<JavaLangIterable>)values;

/*!
 @brief Writes pre-sorted set docvalues for a field
 @param field field information
 @param values Iterable of binary values in sorted order (deduplicated).
 @param docToOrdCount Iterable of the number of values for each document. A zero ordinal
 count indicates a missing value.
 @param ords Iterable of ordinal occurrences (docToOrdCount*maxDoc total).
 @throws IOException if an I/O error occurred.
 */
- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                      withJavaLangIterable:(id<JavaLangIterable>)values
                                      withJavaLangIterable:(id<JavaLangIterable>)docToOrdCount
                                      withJavaLangIterable:(id<JavaLangIterable>)ords;

/*!
 @brief Helper: returns true if the given docToValue count contains only at most one value
 */
+ (jboolean)isSingleValuedWithJavaLangIterable:(id<JavaLangIterable>)docToValueCount;

/*!
 @brief Merges in the fields from the readers in 
 <code>mergeState</code>.
 The default implementation 
 calls <code>mergeNumericField</code>, <code>mergeBinaryField</code>,
 <code>mergeSortedField</code>, <code>mergeSortedSetField</code>,
 or <code>mergeSortedNumericField</code> for each field,
 depending on its type.
 Implementations can override this method 
 for more sophisticated merging (bulk-byte copying, etc). 
 */
- (void)mergeWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState;

/*!
 @brief Merges the binary docvalues from <code>toMerge</code>.
 <p>
 The default implementation calls <code>addBinaryField</code>, passing
 an Iterable that merges and filters deleted documents on the fly.
 */
- (void)mergeBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                       withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                                         withJavaUtilList:(id<JavaUtilList>)toMerge
                                         withJavaUtilList:(id<JavaUtilList>)docsWithField;

/*!
 @brief Merges the numeric docvalues from <code>toMerge</code>.
 <p>
 The default implementation calls <code>addNumericField</code>, passing
 an Iterable that merges and filters deleted documents on the fly.
 */
- (void)mergeNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                        withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                                          withJavaUtilList:(id<JavaUtilList>)toMerge
                                          withJavaUtilList:(id<JavaUtilList>)docsWithField;

/*!
 @brief Merges the sorted docvalues from <code>toMerge</code>.
 <p>
 The default implementation calls <code>addSortedField</code>, passing
 an Iterable that merges ordinals and values and filters deleted documents .
 */
- (void)mergeSortedFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                       withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                                         withJavaUtilList:(id<JavaUtilList>)toMerge;

/*!
 @brief Merges the sorted docvalues from <code>toMerge</code>.
 <p>
 The default implementation calls <code>addSortedNumericField</code>, passing
 iterables that filter deleted documents.
 */
- (void)mergeSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                              withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                                                withJavaUtilList:(id<JavaUtilList>)toMerge;

/*!
 @brief Merges the sortedset docvalues from <code>toMerge</code>.
 <p>
 The default implementation calls <code>addSortedSetField</code>, passing
 an Iterable that merges ordinals and values and filters deleted documents .
 */
- (void)mergeSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                          withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                                            withJavaUtilList:(id<JavaUtilList>)toMerge;

/*!
 @brief Helper: returns single-valued view, using <code>missingValue</code> when count is zero
 */
+ (id<JavaLangIterable>)singletonViewWithJavaLangIterable:(id<JavaLangIterable>)docToValueCount
                                     withJavaLangIterable:(id<JavaLangIterable>)values
                                             withNSNumber:(NSNumber *)missingValue;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
 constructors, typically implicit.) 
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsDocValuesConsumer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsDocValuesConsumer_init(OrgApacheLuceneCodecsDocValuesConsumer *self);

FOUNDATION_EXPORT jboolean OrgApacheLuceneCodecsDocValuesConsumer_isSingleValuedWithJavaLangIterable_(id<JavaLangIterable> docToValueCount);

FOUNDATION_EXPORT id<JavaLangIterable> OrgApacheLuceneCodecsDocValuesConsumer_singletonViewWithJavaLangIterable_withJavaLangIterable_withNSNumber_(id<JavaLangIterable> docToValueCount, id<JavaLangIterable> values, NSNumber *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsDocValuesConsumer)

#endif

#if !defined (OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_) && (INCLUDE_ALL_OrgApacheLuceneCodecsDocValuesConsumer || defined(INCLUDE_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum))
#define OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_

#define RESTRICT_OrgApacheLuceneIndexFilteredTermsEnum 1
#define INCLUDE_OrgApacheLuceneIndexFilteredTermsEnum 1
#include "org/apache/lucene/index/FilteredTermsEnum.h"

@class OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilLongBitSet;

@interface OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum : OrgApacheLuceneIndexFilteredTermsEnum {
 @public
  OrgApacheLuceneUtilLongBitSet *liveTerms_;
}

#pragma mark Protected

- (OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus *)acceptWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)inArg
                    withOrgApacheLuceneUtilLongBitSet:(OrgApacheLuceneUtilLongBitSet *)liveTerms;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum, liveTerms_, OrgApacheLuceneUtilLongBitSet *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_(OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum *self, OrgApacheLuceneIndexTermsEnum *inArg, OrgApacheLuceneUtilLongBitSet *liveTerms);

FOUNDATION_EXPORT OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum *new_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_(OrgApacheLuceneIndexTermsEnum *inArg, OrgApacheLuceneUtilLongBitSet *liveTerms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum *create_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_(OrgApacheLuceneIndexTermsEnum *inArg, OrgApacheLuceneUtilLongBitSet *liveTerms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsDocValuesConsumer")