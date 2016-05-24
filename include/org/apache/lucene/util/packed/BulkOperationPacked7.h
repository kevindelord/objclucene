//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked7.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked7")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked7
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked7 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked7 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked7

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked7_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked7 || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked7))
#define OrgApacheLuceneUtilPackedBulkOperationPacked7_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked7 : OrgApacheLuceneUtilPackedBulkOperationPacked

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked7)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked7_init(OrgApacheLuceneUtilPackedBulkOperationPacked7 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked7 *new_OrgApacheLuceneUtilPackedBulkOperationPacked7_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked7 *create_OrgApacheLuceneUtilPackedBulkOperationPacked7_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked7)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked7")