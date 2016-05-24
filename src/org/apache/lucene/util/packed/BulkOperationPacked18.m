//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked18.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked18.h"

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked18

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPackedBulkOperationPacked18_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (JreURShift64(block0, 46));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 28)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 10)) & 262143LL);
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block0 & 1023LL), 8)) | (JreURShift64(block1, 56)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 38)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 20)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 2)) & 262143LL);
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block1 & 3LL), 16)) | (JreURShift64(block2, 48)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 30)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 12)) & 262143LL);
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block2 & 4095LL), 6)) | (JreURShift64(block3, 58)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 40)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 22)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 4)) & 262143LL);
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block3 & 15LL), 14)) | (JreURShift64(block4, 50)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 32)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 14)) & 262143LL);
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block4 & 16383LL), 4)) | (JreURShift64(block5, 60)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 42)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 24)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 6)) & 262143LL);
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block5 & 63LL), 12)) | (JreURShift64(block6, 52)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 34)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 16)) & 262143LL);
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block6 & 65535LL), 2)) | (JreURShift64(block7, 62)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 44)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 26)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 8)) & 262143LL);
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block7 & 255LL), 10)) | (JreURShift64(block8, 54)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 36)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 18)) & 262143LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block8 & 262143LL);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jint byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jint byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32(byte0, 10)) | (JreLShift32(byte1, 2)) | (JreURShift32(byte2, 6));
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte2 & 63), 12)) | (JreLShift32(byte3, 4)) | (JreURShift32(byte4, 4));
    jint byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte4 & 15), 14)) | (JreLShift32(byte5, 6)) | (JreURShift32(byte6, 2));
    jint byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte6 & 3), 16)) | (JreLShift32(byte7, 8)) | byte8;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 46);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 28)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 10)) & 262143LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 1023LL), 8)) | (JreURShift64(block1, 56));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 38)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 20)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 2)) & 262143LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 3LL), 16)) | (JreURShift64(block2, 48));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 30)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 12)) & 262143LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 4095LL), 6)) | (JreURShift64(block3, 58));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 40)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 22)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 4)) & 262143LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 15LL), 14)) | (JreURShift64(block4, 50));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 32)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 14)) & 262143LL;
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block4 & 16383LL), 4)) | (JreURShift64(block5, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 42)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 24)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 6)) & 262143LL;
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block5 & 63LL), 12)) | (JreURShift64(block6, 52));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 34)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 16)) & 262143LL;
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block6 & 65535LL), 2)) | (JreURShift64(block7, 62));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 44)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 26)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 8)) & 262143LL;
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block7 & 255LL), 10)) | (JreURShift64(block8, 54));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 36)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 18)) & 262143LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block8 & 262143LL;
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jlong byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64(byte0, 10)) | (JreLShift64(byte1, 2)) | (JreURShift64(byte2, 6));
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte2 & 63), 12)) | (JreLShift64(byte3, 4)) | (JreURShift64(byte4, 4));
    jlong byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte4 & 15), 14)) | (JreLShift64(byte5, 6)) | (JreURShift64(byte6, 2));
    jlong byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte6 & 3), 16)) | (JreLShift64(byte7, 8)) | byte8;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BulkOperationPacked18", NULL, 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked18 = { 2, "BulkOperationPacked18", "org.apache.lucene.util.packed", NULL, 0x10, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked18;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked18_init(OrgApacheLuceneUtilPackedBulkOperationPacked18 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(self, 18);
}

OrgApacheLuceneUtilPackedBulkOperationPacked18 *new_OrgApacheLuceneUtilPackedBulkOperationPacked18_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked18, init)
}

OrgApacheLuceneUtilPackedBulkOperationPacked18 *create_OrgApacheLuceneUtilPackedBulkOperationPacked18_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked18, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked18)