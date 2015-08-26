//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked4.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPacked4_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPacked4_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPacked4_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPacked4_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPacked4_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPacked4_) && (OrgApacheLuceneUtilPackedBulkOperationPacked4_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPacked4_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPacked4_

#define OrgApacheLuceneUtilPackedBulkOperationPacked_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperationPacked_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

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

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked4)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPacked4_INCLUDE_ALL")