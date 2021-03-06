//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueLong.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueLong.h"

@implementation OrgApacheLuceneUtilMutableMutableValueLong

- (id)toObject {
  JreAssert((exists_ || 0LL == value_), (@"org/apache/lucene/util/mutable/MutableValueLong.java:30 condition failed: assert exists || 0L == value;"));
  return exists_ ? JavaLangLong_valueOfWithLong_(value_) : nil;
}

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source {
  OrgApacheLuceneUtilMutableMutableValueLong *s = (OrgApacheLuceneUtilMutableMutableValueLong *) cast_chk(source, [OrgApacheLuceneUtilMutableMutableValueLong class]);
  exists_ = ((OrgApacheLuceneUtilMutableMutableValueLong *) nil_chk(s))->exists_;
  value_ = s->value_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate {
  OrgApacheLuceneUtilMutableMutableValueLong *v = create_OrgApacheLuceneUtilMutableMutableValueLong_init();
  v->value_ = self->value_;
  v->exists_ = self->exists_;
  return v;
}

- (jboolean)equalsSameTypeWithId:(id)other {
  JreAssert((exists_ || 0LL == value_), (@"org/apache/lucene/util/mutable/MutableValueLong.java:51 condition failed: assert exists || 0L == value;"));
  OrgApacheLuceneUtilMutableMutableValueLong *b = (OrgApacheLuceneUtilMutableMutableValueLong *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueLong class]);
  return value_ == ((OrgApacheLuceneUtilMutableMutableValueLong *) nil_chk(b))->value_ && exists_ == b->exists_;
}

- (jint)compareSameTypeWithId:(id)other {
  JreAssert((exists_ || 0LL == value_), (@"org/apache/lucene/util/mutable/MutableValueLong.java:58 condition failed: assert exists || 0L == value;"));
  OrgApacheLuceneUtilMutableMutableValueLong *b = (OrgApacheLuceneUtilMutableMutableValueLong *) cast_chk(other, [OrgApacheLuceneUtilMutableMutableValueLong class]);
  jlong bv = ((OrgApacheLuceneUtilMutableMutableValueLong *) nil_chk(b))->value_;
  if (value_ < bv) return -1;
  if (value_ > bv) return 1;
  if (exists_ == b->exists_) return 0;
  return exists_ ? 1 : -1;
}

- (NSUInteger)hash {
  JreAssert((exists_ || 0LL == value_), (@"org/apache/lucene/util/mutable/MutableValueLong.java:70 condition failed: assert exists || 0L == value;"));
  return (jint) value_ + (jint) (JreRShift64(value_, 32));
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilMutableMutableValueLong_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toObject", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "copy__WithOrgApacheLuceneUtilMutableMutableValue:", "copy", "V", 0x1, NULL, NULL },
    { "duplicate", NULL, "Lorg.apache.lucene.util.mutable.MutableValue;", 0x1, NULL, NULL },
    { "equalsSameTypeWithId:", "equalsSameType", "Z", 0x1, NULL, NULL },
    { "compareSameTypeWithId:", "compareSameType", "I", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", "MutableValueLong", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "value_", NULL, 0x1, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilMutableMutableValueLong = { 2, "MutableValueLong", "org.apache.lucene.util.mutable", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilMutableMutableValueLong;
}

@end

void OrgApacheLuceneUtilMutableMutableValueLong_init(OrgApacheLuceneUtilMutableMutableValueLong *self) {
  OrgApacheLuceneUtilMutableMutableValue_init(self);
}

OrgApacheLuceneUtilMutableMutableValueLong *new_OrgApacheLuceneUtilMutableMutableValueLong_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilMutableMutableValueLong, init)
}

OrgApacheLuceneUtilMutableMutableValueLong *create_OrgApacheLuceneUtilMutableMutableValueLong_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilMutableMutableValueLong, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilMutableMutableValueLong)
