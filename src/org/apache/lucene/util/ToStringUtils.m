//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ToStringUtils.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneUtilToStringUtils ()

- (instancetype)init;

@end

inline IOSCharArray *OrgApacheLuceneUtilToStringUtils_get_HEX();
static IOSCharArray *OrgApacheLuceneUtilToStringUtils_HEX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilToStringUtils, HEX, IOSCharArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilToStringUtils_init(OrgApacheLuceneUtilToStringUtils *self);

__attribute__((unused)) static OrgApacheLuceneUtilToStringUtils *new_OrgApacheLuceneUtilToStringUtils_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilToStringUtils *create_OrgApacheLuceneUtilToStringUtils_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilToStringUtils)

@implementation OrgApacheLuceneUtilToStringUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilToStringUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)boostWithFloat:(jfloat)boost {
  return OrgApacheLuceneUtilToStringUtils_boostWithFloat_(boost);
}

+ (void)byteArrayWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                             withByteArray:(IOSByteArray *)bytes {
  OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(buffer, bytes);
}

+ (NSString *)longHexWithLong:(jlong)x {
  return OrgApacheLuceneUtilToStringUtils_longHexWithLong_(x);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilToStringUtils class]) {
    JreStrongAssign(&OrgApacheLuceneUtilToStringUtils_HEX, [@"0123456789abcdef" toCharArray]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilToStringUtils)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ToStringUtils", NULL, 0x2, NULL, NULL },
    { "boostWithFloat:", "boost", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "byteArrayWithJavaLangStringBuilder:withByteArray:", "byteArray", "V", 0x9, NULL, NULL },
    { "longHexWithLong:", "longHex", "Ljava.lang.String;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEX", "HEX", 0x1a, "[C", &OrgApacheLuceneUtilToStringUtils_HEX, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilToStringUtils = { 2, "ToStringUtils", "org.apache.lucene.util", NULL, 0x11, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilToStringUtils;
}

@end

void OrgApacheLuceneUtilToStringUtils_init(OrgApacheLuceneUtilToStringUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilToStringUtils *new_OrgApacheLuceneUtilToStringUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilToStringUtils, init)
}

OrgApacheLuceneUtilToStringUtils *create_OrgApacheLuceneUtilToStringUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilToStringUtils, init)
}

NSString *OrgApacheLuceneUtilToStringUtils_boostWithFloat_(jfloat boost) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  if (boost != 1.0f) {
    return JreStrcat("C$", '^', JavaLangFloat_toStringWithFloat_(boost));
  }
  else return @"";
}

void OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(JavaLangStringBuilder *buffer, IOSByteArray *bytes) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(bytes))->size_; i++) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:@"b["])) appendWithInt:i])) appendWithNSString:@"]="])) appendWithInt:IOSByteArray_Get(bytes, i)];
    if (i < bytes->size_ - 1) {
      [buffer appendWithChar:','];
    }
  }
}

NSString *OrgApacheLuceneUtilToStringUtils_longHexWithLong_(jlong x) {
  OrgApacheLuceneUtilToStringUtils_initialize();
  IOSCharArray *asHex = [IOSCharArray arrayWithLength:16];
  for (jint i = 16; --i >= 0; JreURShiftAssignLong(&x, 4)) {
    *IOSCharArray_GetRef(asHex, i) = IOSCharArray_Get(nil_chk(OrgApacheLuceneUtilToStringUtils_HEX), (jint) x & (jint) 0x0F);
  }
  return JreStrcat("$$", @"0x", [NSString stringWithCharacters:asHex]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilToStringUtils)
