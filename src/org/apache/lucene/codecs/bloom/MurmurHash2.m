//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/bloom/MurmurHash2.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/bloom/HashFunction.h"
#include "org/apache/lucene/codecs/bloom/MurmurHash2.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneCodecsBloomMurmurHash2 ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneCodecsBloomMurmurHash2_init(OrgApacheLuceneCodecsBloomMurmurHash2 *self);

__attribute__((unused)) static OrgApacheLuceneCodecsBloomMurmurHash2 *new_OrgApacheLuceneCodecsBloomMurmurHash2_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsBloomMurmurHash2)

OrgApacheLuceneCodecsBloomMurmurHash2 *OrgApacheLuceneCodecsBloomMurmurHash2_INSTANCE_;

@implementation OrgApacheLuceneCodecsBloomMurmurHash2

- (instancetype)init {
  OrgApacheLuceneCodecsBloomMurmurHash2_init(self);
  return self;
}

+ (jint)hash__WithByteArray:(IOSByteArray *)data
                    withInt:(jint)seed
                    withInt:(jint)offset
                    withInt:(jint)len {
  return OrgApacheLuceneCodecsBloomMurmurHash2_hash__WithByteArray_withInt_withInt_withInt_(data, seed, offset, len);
}

+ (jint)hash32WithByteArray:(IOSByteArray *)data
                    withInt:(jint)offset
                    withInt:(jint)len {
  return OrgApacheLuceneCodecsBloomMurmurHash2_hash32WithByteArray_withInt_withInt_(data, offset, len);
}

- (jint)hash__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)br {
  return OrgApacheLuceneCodecsBloomMurmurHash2_hash32WithByteArray_withInt_withInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(br))->bytes_, br->offset_, br->length_);
}

- (NSString *)description {
  return [[self getClass] getSimpleName];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsBloomMurmurHash2 class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsBloomMurmurHash2_INSTANCE_, new_OrgApacheLuceneCodecsBloomMurmurHash2_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsBloomMurmurHash2)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MurmurHash2", NULL, 0x2, NULL, NULL },
    { "hash__WithByteArray:withInt:withInt:withInt:", "hash", "I", 0x9, NULL, NULL },
    { "hash32WithByteArray:withInt:withInt:", "hash32", "I", 0x19, NULL, NULL },
    { "hash__WithOrgApacheLuceneUtilBytesRef:", "hash", "I", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x19, "Lorg.apache.lucene.codecs.bloom.MurmurHash2;", &OrgApacheLuceneCodecsBloomMurmurHash2_INSTANCE_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBloomMurmurHash2 = { 2, "MurmurHash2", "org.apache.lucene.codecs.bloom", NULL, 0x11, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBloomMurmurHash2;
}

@end

void OrgApacheLuceneCodecsBloomMurmurHash2_init(OrgApacheLuceneCodecsBloomMurmurHash2 *self) {
  OrgApacheLuceneCodecsBloomHashFunction_init(self);
}

OrgApacheLuceneCodecsBloomMurmurHash2 *new_OrgApacheLuceneCodecsBloomMurmurHash2_init() {
  OrgApacheLuceneCodecsBloomMurmurHash2 *self = [OrgApacheLuceneCodecsBloomMurmurHash2 alloc];
  OrgApacheLuceneCodecsBloomMurmurHash2_init(self);
  return self;
}

jint OrgApacheLuceneCodecsBloomMurmurHash2_hash__WithByteArray_withInt_withInt_withInt_(IOSByteArray *data, jint seed, jint offset, jint len) {
  OrgApacheLuceneCodecsBloomMurmurHash2_initialize();
  jint m = (jint) 0x5bd1e995;
  jint r = 24;
  jint h = seed ^ len;
  jint len_4 = JreRShift32(len, 2);
  for (jint i = 0; i < len_4; i++) {
    jint i_4 = offset + (JreLShift32(i, 2));
    jint k = IOSByteArray_Get(nil_chk(data), i_4 + 3);
    k = JreLShift32(k, 8);
    k = k | (IOSByteArray_Get(data, i_4 + 2) & (jint) 0xff);
    k = JreLShift32(k, 8);
    k = k | (IOSByteArray_Get(data, i_4 + 1) & (jint) 0xff);
    k = JreLShift32(k, 8);
    k = k | (IOSByteArray_Get(data, i_4 + 0) & (jint) 0xff);
    k *= m;
    k ^= JreURShift32(k, r);
    k *= m;
    h *= m;
    h ^= k;
  }
  jint len_m = JreLShift32(len_4, 2);
  jint left = len - len_m;
  if (left != 0) {
    if (left >= 3) {
      h ^= JreLShift32(IOSByteArray_Get(nil_chk(data), offset + len - 3), 16);
    }
    if (left >= 2) {
      h ^= JreLShift32(IOSByteArray_Get(nil_chk(data), offset + len - 2), 8);
    }
    if (left >= 1) {
      h ^= IOSByteArray_Get(nil_chk(data), offset + len - 1);
    }
    h *= m;
  }
  h ^= JreURShift32(h, 13);
  h *= m;
  h ^= JreURShift32(h, 15);
  return h;
}

jint OrgApacheLuceneCodecsBloomMurmurHash2_hash32WithByteArray_withInt_withInt_(IOSByteArray *data, jint offset, jint len) {
  OrgApacheLuceneCodecsBloomMurmurHash2_initialize();
  return OrgApacheLuceneCodecsBloomMurmurHash2_hash__WithByteArray_withInt_withInt_withInt_(data, (jint) 0x9747b28c, offset, len);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBloomMurmurHash2)