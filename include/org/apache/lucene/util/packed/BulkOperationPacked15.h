//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked15.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked15")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked15
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked15 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked15 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked15

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked15_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked15 || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked15))
#define OrgApacheLuceneUtilPackedBulkOperationPacked15_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked15 : OrgApacheLuceneUtilPackedBulkOperationPacked

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked15)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked15_init(OrgApacheLuceneUtilPackedBulkOperationPacked15 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked15 *new_OrgApacheLuceneUtilPackedBulkOperationPacked15_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked15 *create_OrgApacheLuceneUtilPackedBulkOperationPacked15_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked15)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked15")