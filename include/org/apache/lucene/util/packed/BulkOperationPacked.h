//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked))
#define OrgApacheLuceneUtilPackedBulkOperationPacked_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperation 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperation 1
#include "org/apache/lucene/util/packed/BulkOperation.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Non-specialized <code>BulkOperation</code> for <code>PackedInts.Format.PACKED</code>.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked : OrgApacheLuceneUtilPackedBulkOperation

#pragma mark Public

- (instancetype)initWithInt:(jint)bitsPerValue;

- (jint)byteBlockCount;

- (jint)byteValueCount;

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

- (void)encodeWithIntArray:(IOSIntArray *)values
                   withInt:(jint)valuesOffset
             withByteArray:(IOSByteArray *)blocks
                   withInt:(jint)blocksOffset
                   withInt:(jint)iterations;

- (void)encodeWithIntArray:(IOSIntArray *)values
                   withInt:(jint)valuesOffset
             withLongArray:(IOSLongArray *)blocks
                   withInt:(jint)blocksOffset
                   withInt:(jint)iterations;

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations;

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations;

- (jint)longBlockCount;

- (jint)longValueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(OrgApacheLuceneUtilPackedBulkOperationPacked *self, jint bitsPerValue);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked *new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(jint bitsPerValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked *create_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(jint bitsPerValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked")
