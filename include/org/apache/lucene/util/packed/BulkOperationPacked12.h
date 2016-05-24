//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked12.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked12")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked12
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked12 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked12 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked12

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked12_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked12 || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked12))
#define OrgApacheLuceneUtilPackedBulkOperationPacked12_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked12 : OrgApacheLuceneUtilPackedBulkOperationPacked

#pragma mark Public

- (instancetype)init;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked12)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked12_init(OrgApacheLuceneUtilPackedBulkOperationPacked12 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked12 *new_OrgApacheLuceneUtilPackedBulkOperationPacked12_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked12 *create_OrgApacheLuceneUtilPackedBulkOperationPacked12_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked12)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked12")