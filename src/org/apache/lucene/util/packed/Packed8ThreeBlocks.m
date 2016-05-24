//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/Packed8ThreeBlocks.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/Packed8ThreeBlocks.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@implementation OrgApacheLuceneUtilPackedPacked8ThreeBlocks

+ (jint)MAX_SIZE {
  return OrgApacheLuceneUtilPackedPacked8ThreeBlocks_MAX_SIZE;
}

- (instancetype)initWithInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(self, valueCount);
  return self;
}

- (instancetype)initWithInt:(jint)packedIntsVersion
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                    withInt:(jint)valueCount {
  OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(self, packedIntsVersion, inArg, valueCount);
  return self;
}

- (jlong)getWithInt:(jint)index {
  jint o = index * 3;
  return (JreLShift64((IOSByteArray_Get(nil_chk(blocks_), o) & (jlong) 0xFFLL), 16)) | (JreLShift64((IOSByteArray_Get(blocks_, o + 1) & (jlong) 0xFFLL), 8)) | (IOSByteArray_Get(blocks_, o + 2) & (jlong) 0xFFLL);
}

- (jint)getWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len {
  JreAssert((len > 0), (JreStrcat("$IC", @"len must be > 0 (got ", len, ')')));
  JreAssert((index >= 0 && index < valueCount_), (@"org/apache/lucene/util/packed/Packed8ThreeBlocks.java:64 condition failed: assert index >= 0 && index < valueCount;"));
  JreAssert((off + len <= ((IOSLongArray *) nil_chk(arr))->size_), (@"org/apache/lucene/util/packed/Packed8ThreeBlocks.java:65 condition failed: assert off + len <= arr.length;"));
  jint gets = JavaLangMath_minWithInt_withInt_(valueCount_ - index, len);
  for (jint i = index * 3, end = (index + gets) * 3; i < end; i += 3) {
    *IOSLongArray_GetRef(arr, off++) = (JreLShift64((IOSByteArray_Get(nil_chk(blocks_), i) & (jlong) 0xFFLL), 16)) | (JreLShift64((IOSByteArray_Get(blocks_, i + 1) & (jlong) 0xFFLL), 8)) | (IOSByteArray_Get(blocks_, i + 2) & (jlong) 0xFFLL);
  }
  return gets;
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  jint o = index * 3;
  *IOSByteArray_GetRef(nil_chk(blocks_), o) = (jbyte) (JreURShift64(value, 16));
  *IOSByteArray_GetRef(blocks_, o + 1) = (jbyte) (JreURShift64(value, 8));
  *IOSByteArray_GetRef(blocks_, o + 2) = (jbyte) value;
}

- (jint)setWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len {
  JreAssert((len > 0), (JreStrcat("$IC", @"len must be > 0 (got ", len, ')')));
  JreAssert((index >= 0 && index < valueCount_), (@"org/apache/lucene/util/packed/Packed8ThreeBlocks.java:85 condition failed: assert index >= 0 && index < valueCount;"));
  JreAssert((off + len <= ((IOSLongArray *) nil_chk(arr))->size_), (@"org/apache/lucene/util/packed/Packed8ThreeBlocks.java:86 condition failed: assert off + len <= arr.length;"));
  jint sets = JavaLangMath_minWithInt_withInt_(valueCount_ - index, len);
  for (jint i = off, o = index * 3, end = off + sets; i < end; ++i) {
    jlong value = IOSLongArray_Get(arr, i);
    *IOSByteArray_GetRef(nil_chk(blocks_), o++) = (jbyte) (JreURShift64(value, 16));
    *IOSByteArray_GetRef(blocks_, o++) = (jbyte) (JreURShift64(value, 8));
    *IOSByteArray_GetRef(blocks_, o++) = (jbyte) value;
  }
  return sets;
}

- (void)fillWithInt:(jint)fromIndex
            withInt:(jint)toIndex
           withLong:(jlong)val {
  jbyte block1 = (jbyte) (JreURShift64(val, 16));
  jbyte block2 = (jbyte) (JreURShift64(val, 8));
  jbyte block3 = (jbyte) val;
  for (jint i = fromIndex * 3, end = toIndex * 3; i < end; i += 3) {
    *IOSByteArray_GetRef(nil_chk(blocks_), i) = block1;
    *IOSByteArray_GetRef(blocks_, i + 1) = block2;
    *IOSByteArray_GetRef(blocks_, i + 2) = block3;
  }
}

- (void)clear {
  JavaUtilArrays_fillWithByteArray_withByte_(blocks_, (jbyte) 0);
}

- (jlong)ramBytesUsed {
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER) + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(blocks_);
}

- (NSString *)description {
  return JreStrcat("$$I$I$IC", [[self getClass] getSimpleName], @"(bitsPerValue=", bitsPerValue_, @",size=", [self size], @",blocks=", ((IOSByteArray *) nil_chk(blocks_))->size_, ')');
}

- (void)dealloc {
  RELEASE_(blocks_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "Packed8ThreeBlocks", NULL, 0x0, NULL, NULL },
    { "initWithInt:withOrgApacheLuceneStoreDataInput:withInt:", "Packed8ThreeBlocks", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "getWithInt:withLongArray:withInt:withInt:", "get", "I", 0x1, NULL, NULL },
    { "setWithInt:withLong:", "set", "V", 0x1, NULL, NULL },
    { "setWithInt:withLongArray:withInt:withInt:", "set", "I", 0x1, NULL, NULL },
    { "fillWithInt:withInt:withLong:", "fill", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "blocks_", NULL, 0x10, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "MAX_SIZE", "MAX_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedPacked8ThreeBlocks_MAX_SIZE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPacked8ThreeBlocks = { 2, "Packed8ThreeBlocks", "org.apache.lucene.util.packed", NULL, 0x10, 10, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedPacked8ThreeBlocks;
}

@end

void OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(OrgApacheLuceneUtilPackedPacked8ThreeBlocks *self, jint valueCount) {
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(self, valueCount, 24);
  if (valueCount > OrgApacheLuceneUtilPackedPacked8ThreeBlocks_MAX_SIZE) {
    @throw create_JavaLangArrayIndexOutOfBoundsException_initWithNSString_(@"MAX_SIZE exceeded");
  }
  JreStrongAssignAndConsume(&self->blocks_, [IOSByteArray newArrayWithLength:valueCount * 3]);
}

OrgApacheLuceneUtilPackedPacked8ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked8ThreeBlocks, initWithInt_, valueCount)
}

OrgApacheLuceneUtilPackedPacked8ThreeBlocks *create_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked8ThreeBlocks, initWithInt_, valueCount)
}

void OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedPacked8ThreeBlocks *self, jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(self, valueCount);
  [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readBytesWithByteArray:self->blocks_ withInt:0 withInt:3 * valueCount];
  jint remaining = (jint) ([((OrgApacheLuceneUtilPackedPackedInts_Format *) nil_chk(JreLoadEnum(OrgApacheLuceneUtilPackedPackedInts_Format, PACKED))) byteCountWithInt:packedIntsVersion withInt:valueCount withInt:24] - 3LL * valueCount * 1);
  for (jint i = 0; i < remaining; ++i) {
    [inArg readByte];
  }
}

OrgApacheLuceneUtilPackedPacked8ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked8ThreeBlocks, initWithInt_withOrgApacheLuceneStoreDataInput_withInt_, packedIntsVersion, inArg, valueCount)
}

OrgApacheLuceneUtilPackedPacked8ThreeBlocks *create_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(jint packedIntsVersion, OrgApacheLuceneStoreDataInput *inArg, jint valueCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked8ThreeBlocks, initWithInt_withOrgApacheLuceneStoreDataInput_withInt_, packedIntsVersion, inArg, valueCount)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPacked8ThreeBlocks)