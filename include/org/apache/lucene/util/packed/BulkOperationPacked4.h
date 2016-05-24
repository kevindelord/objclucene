//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked4.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked4")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked4
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked4 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked4 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked4

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked4_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked4 || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked4))
#define OrgApacheLuceneUtilPackedBulkOperationPacked4_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked4 : OrgApacheLuceneUtilPackedBulkOperationPacked

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked4)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked4_init(OrgApacheLuceneUtilPackedBulkOperationPacked4 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked4 *new_OrgApacheLuceneUtilPackedBulkOperationPacked4_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked4 *create_OrgApacheLuceneUtilPackedBulkOperationPacked4_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked4)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked4")