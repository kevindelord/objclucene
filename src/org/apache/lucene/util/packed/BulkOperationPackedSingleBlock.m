//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPackedSingleBlock.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/util/packed/BulkOperation.h"
#include "org/apache/lucene/util/packed/BulkOperationPackedSingleBlock.h"

@interface OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock () {
 @public
  jint bitsPerValue_;
  jint valueCount_;
  jlong mask_;
}

+ (jlong)readLongWithByteArray:(IOSByteArray *)blocks
                       withInt:(jint)blocksOffset;

- (jint)decodeWithLong:(jlong)block
         withLongArray:(IOSLongArray *)values
               withInt:(jint)valuesOffset;

- (jint)decodeWithLong:(jlong)block
          withIntArray:(IOSIntArray *)values
               withInt:(jint)valuesOffset;

- (jlong)encodeWithLongArray:(IOSLongArray *)values
                     withInt:(jint)valuesOffset;

- (jlong)encodeWithIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset;

@end

inline jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_get_BLOCK_COUNT();
#define OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock, BLOCK_COUNT, jint)

__attribute__((unused)) static jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(IOSByteArray *blocks, jint blocksOffset);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSLongArray *values, jint valuesOffset);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSIntArray *values, jint valuesOffset);

__attribute__((unused)) static jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSLongArray *values, jint valuesOffset);

__attribute__((unused)) static jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSIntArray *values, jint valuesOffset);

@implementation OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock

- (instancetype)initWithInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(self, bitsPerValue);
  return self;
}

- (jint)longBlockCount {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT;
}

- (jint)byteBlockCount {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT * 8;
}

- (jint)longValueCount {
  return valueCount_;
}

- (jint)byteValueCount {
  return valueCount_;
}

+ (jlong)readLongWithByteArray:(IOSByteArray *)blocks
                       withInt:(jint)blocksOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(blocks, blocksOffset);
}

- (jint)decodeWithLong:(jlong)block
         withLongArray:(IOSLongArray *)values
               withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(self, block, values, valuesOffset);
}

- (jint)decodeWithLong:(jlong)block
          withIntArray:(IOSIntArray *)values
               withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(self, block, values, valuesOffset);
}

- (jlong)encodeWithLongArray:(IOSLongArray *)values
                     withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(self, values, valuesOffset);
}

- (jlong)encodeWithIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset {
  return OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(self, values, valuesOffset);
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(blocks, blocksOffset);
    blocksOffset += 8;
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  if (bitsPerValue_ > 32) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$I$", @"Cannot decode ", bitsPerValue_, @"-bits values into an int[]"));
  }
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  if (bitsPerValue_ > 32) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$I$", @"Cannot decode ", bitsPerValue_, @"-bits values into an int[]"));
  }
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(blocks, blocksOffset);
    blocksOffset += 8;
    valuesOffset = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(self, block, values, valuesOffset);
  }
}

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    *IOSLongArray_GetRef(nil_chk(blocks), blocksOffset++) = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
  }
}

- (void)encodeWithIntArray:(IOSIntArray *)values
                   withInt:(jint)valuesOffset
             withLongArray:(IOSLongArray *)blocks
                   withInt:(jint)blocksOffset
                   withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    *IOSLongArray_GetRef(nil_chk(blocks), blocksOffset++) = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
  }
}

- (void)encodeWithLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
              withByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
    blocksOffset = [self writeLongWithLong:block withByteArray:blocks withInt:blocksOffset];
  }
}

- (void)encodeWithIntArray:(IOSIntArray *)values
                   withInt:(jint)valuesOffset
             withByteArray:(IOSByteArray *)blocks
                   withInt:(jint)blocksOffset
                   withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(self, values, valuesOffset);
    valuesOffset += valueCount_;
    blocksOffset = [self writeLongWithLong:block withByteArray:blocks withInt:blocksOffset];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "BulkOperationPackedSingleBlock", NULL, 0x1, NULL, NULL },
    { "longBlockCount", NULL, "I", 0x11, NULL, NULL },
    { "byteBlockCount", NULL, "I", 0x11, NULL, NULL },
    { "longValueCount", NULL, "I", 0x1, NULL, NULL },
    { "byteValueCount", NULL, "I", 0x11, NULL, NULL },
    { "readLongWithByteArray:withInt:", "readLong", "J", 0xa, NULL, NULL },
    { "decodeWithLong:withLongArray:withInt:", "decode", "I", 0x2, NULL, NULL },
    { "decodeWithLong:withIntArray:withInt:", "decode", "I", 0x2, NULL, NULL },
    { "encodeWithLongArray:withInt:", "encode", "J", 0x2, NULL, NULL },
    { "encodeWithIntArray:withInt:", "encode", "J", 0x2, NULL, NULL },
    { "decodeWithLongArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "encodeWithLongArray:withInt:withLongArray:withInt:withInt:", "encode", "V", 0x1, NULL, NULL },
    { "encodeWithIntArray:withInt:withLongArray:withInt:withInt:", "encode", "V", 0x1, NULL, NULL },
    { "encodeWithLongArray:withInt:withByteArray:withInt:withInt:", "encode", "V", 0x1, NULL, NULL },
    { "encodeWithIntArray:withInt:withByteArray:withInt:withInt:", "encode", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BLOCK_COUNT", "BLOCK_COUNT", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_BLOCK_COUNT },
    { "bitsPerValue_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "valueCount_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "mask_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock = { 2, "BulkOperationPackedSingleBlock", "org.apache.lucene.util.packed", NULL, 0x10, 18, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedBulkOperation_init(self);
  self->bitsPerValue_ = bitsPerValue;
  self->valueCount_ = 64 / bitsPerValue;
  self->mask_ = (JreLShift64(1LL, bitsPerValue)) - 1;
}

OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock, initWithInt_, bitsPerValue)
}

OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *create_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock, initWithInt_, bitsPerValue)
}

jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_readLongWithByteArray_withInt_(IOSByteArray *blocks, jint blocksOffset) {
  OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initialize();
  jint unseq$1 = blocksOffset++;
  jint unseq$2 = blocksOffset++;
  jint unseq$3 = blocksOffset++;
  jint unseq$4 = blocksOffset++;
  jint unseq$5 = blocksOffset++;
  jint unseq$6 = blocksOffset++;
  jint unseq$7 = blocksOffset++;
  return (JreLShift64((IOSByteArray_Get(nil_chk(blocks), unseq$1) & (jlong) 0xFFLL), 56)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$2) & (jlong) 0xFFLL), 48)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$3) & (jlong) 0xFFLL), 40)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$4) & (jlong) 0xFFLL), 32)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$5) & (jlong) 0xFFLL), 24)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$6) & (jlong) 0xFFLL), 16)) | (JreLShift64((IOSByteArray_Get(blocks, unseq$7) & (jlong) 0xFFLL), 8)) | (IOSByteArray_Get(blocks, blocksOffset++) & (jlong) 0xFFLL);
}

jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSLongArray *values, jint valuesOffset) {
  *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = block & self->mask_;
  for (jint j = 1; j < self->valueCount_; ++j) {
    JreURShiftAssignLong(&block, self->bitsPerValue_);
    *IOSLongArray_GetRef(values, valuesOffset++) = block & self->mask_;
  }
  return valuesOffset;
}

jint OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_decodeWithLong_withIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, jlong block, IOSIntArray *values, jint valuesOffset) {
  *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (block & self->mask_);
  for (jint j = 1; j < self->valueCount_; ++j) {
    JreURShiftAssignLong(&block, self->bitsPerValue_);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block & self->mask_);
  }
  return valuesOffset;
}

jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithLongArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSLongArray *values, jint valuesOffset) {
  jlong block = IOSLongArray_Get(nil_chk(values), valuesOffset++);
  for (jint j = 1; j < self->valueCount_; ++j) {
    block |= JreLShift64(IOSLongArray_Get(values, valuesOffset++), (j * self->bitsPerValue_));
  }
  return block;
}

jlong OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_encodeWithIntArray_withInt_(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *self, IOSIntArray *values, jint valuesOffset) {
  jlong block = IOSIntArray_Get(nil_chk(values), valuesOffset++) & (jlong) 0xFFFFFFFFLL;
  for (jint j = 1; j < self->valueCount_; ++j) {
    block |= JreLShift64((IOSIntArray_Get(values, valuesOffset++) & (jlong) 0xFFFFFFFFLL), (j * self->bitsPerValue_));
  }
  return block;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)
