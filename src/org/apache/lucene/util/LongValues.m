//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/LongValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/util/LongValues.h"

@interface OrgApacheLuceneUtilLongValues_$1 : OrgApacheLuceneUtilLongValues

- (jlong)getWithLong:(jlong)index;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilLongValues_$1)

__attribute__((unused)) static void OrgApacheLuceneUtilLongValues_$1_init(OrgApacheLuceneUtilLongValues_$1 *self);

__attribute__((unused)) static OrgApacheLuceneUtilLongValues_$1 *new_OrgApacheLuceneUtilLongValues_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilLongValues_$1 *create_OrgApacheLuceneUtilLongValues_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilLongValues_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilLongValues)

OrgApacheLuceneUtilLongValues *OrgApacheLuceneUtilLongValues_IDENTITY;

@implementation OrgApacheLuceneUtilLongValues

+ (OrgApacheLuceneUtilLongValues *)IDENTITY {
  return OrgApacheLuceneUtilLongValues_IDENTITY;
}

- (jlong)getWithLong:(jlong)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getWithInt:(jint)idx {
  return [self getWithLong:(jlong) idx];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilLongValues_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilLongValues class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilLongValues_IDENTITY, new_OrgApacheLuceneUtilLongValues_$1_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilLongValues)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithLong:", "get", "J", 0x401, NULL, NULL },
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "init", "LongValues", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "IDENTITY", "IDENTITY", 0x19, "Lorg.apache.lucene.util.LongValues;", &OrgApacheLuceneUtilLongValues_IDENTITY, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilLongValues = { 2, "LongValues", "org.apache.lucene.util", NULL, 0x401, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilLongValues;
}

@end

void OrgApacheLuceneUtilLongValues_init(OrgApacheLuceneUtilLongValues *self) {
  OrgApacheLuceneIndexNumericDocValues_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilLongValues)

@implementation OrgApacheLuceneUtilLongValues_$1

- (jlong)getWithLong:(jlong)index {
  return index;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilLongValues_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilLongValues_$1 = { 2, "", "org.apache.lucene.util", "LongValues", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilLongValues_$1;
}

@end

void OrgApacheLuceneUtilLongValues_$1_init(OrgApacheLuceneUtilLongValues_$1 *self) {
  OrgApacheLuceneUtilLongValues_init(self);
}

OrgApacheLuceneUtilLongValues_$1 *new_OrgApacheLuceneUtilLongValues_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilLongValues_$1, init)
}

OrgApacheLuceneUtilLongValues_$1 *create_OrgApacheLuceneUtilLongValues_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilLongValues_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilLongValues_$1)
