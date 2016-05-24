//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/DateTools.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/ThreadLocal.h"
#include "java/text/ParseException.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"
#include "java/util/TimeZone.h"
#include "org/apache/lucene/document/DateTools.h"

@interface OrgApacheLuceneDocumentDateTools ()

- (instancetype)init;

@end

inline JavaLangThreadLocal *OrgApacheLuceneDocumentDateTools_get_TL_CAL();
static JavaLangThreadLocal *OrgApacheLuceneDocumentDateTools_TL_CAL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneDocumentDateTools, TL_CAL, JavaLangThreadLocal *)

inline JavaLangThreadLocal *OrgApacheLuceneDocumentDateTools_get_TL_FORMATS();
static JavaLangThreadLocal *OrgApacheLuceneDocumentDateTools_TL_FORMATS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneDocumentDateTools, TL_FORMATS, JavaLangThreadLocal *)

__attribute__((unused)) static void OrgApacheLuceneDocumentDateTools_init(OrgApacheLuceneDocumentDateTools *self);

__attribute__((unused)) static OrgApacheLuceneDocumentDateTools *new_OrgApacheLuceneDocumentDateTools_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneDocumentDateTools *create_OrgApacheLuceneDocumentDateTools_init();

__attribute__((unused)) static void OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(OrgApacheLuceneDocumentDateTools_Resolution *self, jint formatLen, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneDocumentDateTools_$1 : JavaLangThreadLocal

- (JavaUtilCalendar *)initialValue OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentDateTools_$1)

__attribute__((unused)) static void OrgApacheLuceneDocumentDateTools_$1_init(OrgApacheLuceneDocumentDateTools_$1 *self);

__attribute__((unused)) static OrgApacheLuceneDocumentDateTools_$1 *new_OrgApacheLuceneDocumentDateTools_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneDocumentDateTools_$1 *create_OrgApacheLuceneDocumentDateTools_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDateTools_$1)

@interface OrgApacheLuceneDocumentDateTools_$2 : JavaLangThreadLocal

- (IOSObjectArray *)initialValue OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentDateTools_$2)

__attribute__((unused)) static void OrgApacheLuceneDocumentDateTools_$2_init(OrgApacheLuceneDocumentDateTools_$2 *self);

__attribute__((unused)) static OrgApacheLuceneDocumentDateTools_$2 *new_OrgApacheLuceneDocumentDateTools_$2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneDocumentDateTools_$2 *create_OrgApacheLuceneDocumentDateTools_$2_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDateTools_$2)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentDateTools)

JavaUtilTimeZone *OrgApacheLuceneDocumentDateTools_GMT;

@implementation OrgApacheLuceneDocumentDateTools

+ (JavaUtilTimeZone *)GMT {
  return OrgApacheLuceneDocumentDateTools_GMT;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneDocumentDateTools_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)dateToStringWithJavaUtilDate:(JavaUtilDate *)date
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution {
  return OrgApacheLuceneDocumentDateTools_dateToStringWithJavaUtilDate_withOrgApacheLuceneDocumentDateTools_Resolution_(date, resolution);
}

+ (NSString *)timeToStringWithLong:(jlong)time
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution {
  return OrgApacheLuceneDocumentDateTools_timeToStringWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_(time, resolution);
}

+ (jlong)stringToTimeWithNSString:(NSString *)dateString {
  return OrgApacheLuceneDocumentDateTools_stringToTimeWithNSString_(dateString);
}

+ (JavaUtilDate *)stringToDateWithNSString:(NSString *)dateString {
  return OrgApacheLuceneDocumentDateTools_stringToDateWithNSString_(dateString);
}

+ (JavaUtilDate *)roundWithJavaUtilDate:(JavaUtilDate *)date
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution {
  return OrgApacheLuceneDocumentDateTools_roundWithJavaUtilDate_withOrgApacheLuceneDocumentDateTools_Resolution_(date, resolution);
}

+ (jlong)roundWithLong:(jlong)time
withOrgApacheLuceneDocumentDateTools_Resolution:(OrgApacheLuceneDocumentDateTools_Resolution *)resolution {
  return OrgApacheLuceneDocumentDateTools_roundWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_(time, resolution);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentDateTools class]) {
    JreStrongAssign(&OrgApacheLuceneDocumentDateTools_GMT, JavaUtilTimeZone_getTimeZoneWithNSString_(@"GMT"));
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentDateTools_TL_CAL, new_OrgApacheLuceneDocumentDateTools_$1_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentDateTools_TL_FORMATS, new_OrgApacheLuceneDocumentDateTools_$2_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentDateTools)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DateTools", NULL, 0x2, NULL, NULL },
    { "dateToStringWithJavaUtilDate:withOrgApacheLuceneDocumentDateTools_Resolution:", "dateToString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "timeToStringWithLong:withOrgApacheLuceneDocumentDateTools_Resolution:", "timeToString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "stringToTimeWithNSString:", "stringToTime", "J", 0x9, "Ljava.text.ParseException;", NULL },
    { "stringToDateWithNSString:", "stringToDate", "Ljava.util.Date;", 0x9, "Ljava.text.ParseException;", NULL },
    { "roundWithJavaUtilDate:withOrgApacheLuceneDocumentDateTools_Resolution:", "round", "Ljava.util.Date;", 0x9, NULL, NULL },
    { "roundWithLong:withOrgApacheLuceneDocumentDateTools_Resolution:", "round", "J", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "GMT", "GMT", 0x18, "Ljava.util.TimeZone;", &OrgApacheLuceneDocumentDateTools_GMT, NULL, .constantValue.asLong = 0 },
    { "TL_CAL", "TL_CAL", 0x1a, "Ljava.lang.ThreadLocal;", &OrgApacheLuceneDocumentDateTools_TL_CAL, "Ljava/lang/ThreadLocal<Ljava/util/Calendar;>;", .constantValue.asLong = 0 },
    { "TL_FORMATS", "TL_FORMATS", 0x1a, "Ljava.lang.ThreadLocal;", &OrgApacheLuceneDocumentDateTools_TL_FORMATS, "Ljava/lang/ThreadLocal<[Ljava/text/SimpleDateFormat;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.document.DateTools$Resolution;"};
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentDateTools = { 2, "DateTools", "org.apache.lucene.document", NULL, 0x1, 7, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneDocumentDateTools;
}

@end

void OrgApacheLuceneDocumentDateTools_init(OrgApacheLuceneDocumentDateTools *self) {
  NSObject_init(self);
}

OrgApacheLuceneDocumentDateTools *new_OrgApacheLuceneDocumentDateTools_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDateTools, init)
}

OrgApacheLuceneDocumentDateTools *create_OrgApacheLuceneDocumentDateTools_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDateTools, init)
}

NSString *OrgApacheLuceneDocumentDateTools_dateToStringWithJavaUtilDate_withOrgApacheLuceneDocumentDateTools_Resolution_(JavaUtilDate *date, OrgApacheLuceneDocumentDateTools_Resolution *resolution) {
  OrgApacheLuceneDocumentDateTools_initialize();
  return OrgApacheLuceneDocumentDateTools_timeToStringWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_([((JavaUtilDate *) nil_chk(date)) getTime], resolution);
}

NSString *OrgApacheLuceneDocumentDateTools_timeToStringWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_(jlong time, OrgApacheLuceneDocumentDateTools_Resolution *resolution) {
  OrgApacheLuceneDocumentDateTools_initialize();
  JavaUtilDate *date = create_JavaUtilDate_initWithLong_(OrgApacheLuceneDocumentDateTools_roundWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_(time, resolution));
  return [((JavaTextSimpleDateFormat *) nil_chk(IOSObjectArray_Get(nil_chk([((JavaLangThreadLocal *) nil_chk(OrgApacheLuceneDocumentDateTools_TL_FORMATS)) get]), ((OrgApacheLuceneDocumentDateTools_Resolution *) nil_chk(resolution))->formatLen_))) formatWithJavaUtilDate:date];
}

jlong OrgApacheLuceneDocumentDateTools_stringToTimeWithNSString_(NSString *dateString) {
  OrgApacheLuceneDocumentDateTools_initialize();
  return [((JavaUtilDate *) nil_chk(OrgApacheLuceneDocumentDateTools_stringToDateWithNSString_(dateString))) getTime];
}

JavaUtilDate *OrgApacheLuceneDocumentDateTools_stringToDateWithNSString_(NSString *dateString) {
  OrgApacheLuceneDocumentDateTools_initialize();
  @try {
    return [((JavaTextSimpleDateFormat *) nil_chk(IOSObjectArray_Get(nil_chk([((JavaLangThreadLocal *) nil_chk(OrgApacheLuceneDocumentDateTools_TL_FORMATS)) get]), ((jint) [((NSString *) nil_chk(dateString)) length])))) parseWithNSString:dateString];
  }
  @catch (JavaLangException *e) {
    @throw create_JavaTextParseException_initWithNSString_withInt_(JreStrcat("$$", @"Input is not a valid date string: ", dateString), 0);
  }
}

JavaUtilDate *OrgApacheLuceneDocumentDateTools_roundWithJavaUtilDate_withOrgApacheLuceneDocumentDateTools_Resolution_(JavaUtilDate *date, OrgApacheLuceneDocumentDateTools_Resolution *resolution) {
  OrgApacheLuceneDocumentDateTools_initialize();
  return create_JavaUtilDate_initWithLong_(OrgApacheLuceneDocumentDateTools_roundWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_([((JavaUtilDate *) nil_chk(date)) getTime], resolution));
}

jlong OrgApacheLuceneDocumentDateTools_roundWithLong_withOrgApacheLuceneDocumentDateTools_Resolution_(jlong time, OrgApacheLuceneDocumentDateTools_Resolution *resolution) {
  OrgApacheLuceneDocumentDateTools_initialize();
  JavaUtilCalendar *calInstance = [((JavaLangThreadLocal *) nil_chk(OrgApacheLuceneDocumentDateTools_TL_CAL)) get];
  [((JavaUtilCalendar *) nil_chk(calInstance)) setTimeInMillisWithLong:time];
  switch ([resolution ordinal]) {
    case OrgApacheLuceneDocumentDateTools_Resolution_Enum_YEAR:
    [calInstance setWithInt:JavaUtilCalendar_MONTH withInt:0];
    case OrgApacheLuceneDocumentDateTools_Resolution_Enum_MONTH:
    [calInstance setWithInt:JavaUtilCalendar_DAY_OF_MONTH withInt:1];
    case OrgApacheLuceneDocumentDateTools_Resolution_Enum_DAY:
    [calInstance setWithInt:JavaUtilCalendar_HOUR_OF_DAY withInt:0];
    case OrgApacheLuceneDocumentDateTools_Resolution_Enum_HOUR:
    [calInstance setWithInt:JavaUtilCalendar_MINUTE withInt:0];
    case OrgApacheLuceneDocumentDateTools_Resolution_Enum_MINUTE:
    [calInstance setWithInt:JavaUtilCalendar_SECOND withInt:0];
    case OrgApacheLuceneDocumentDateTools_Resolution_Enum_SECOND:
    [calInstance setWithInt:JavaUtilCalendar_MILLISECOND withInt:0];
    case OrgApacheLuceneDocumentDateTools_Resolution_Enum_MILLISECOND:
    break;
    default:
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"unknown resolution ", resolution));
  }
  return [calInstance getTimeInMillis];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentDateTools)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentDateTools_Resolution)

OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_values_[7];

@implementation OrgApacheLuceneDocumentDateTools_Resolution

+ (OrgApacheLuceneDocumentDateTools_Resolution *)YEAR {
  return JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, YEAR);
}

+ (OrgApacheLuceneDocumentDateTools_Resolution *)MONTH {
  return JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MONTH);
}

+ (OrgApacheLuceneDocumentDateTools_Resolution *)DAY {
  return JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, DAY);
}

+ (OrgApacheLuceneDocumentDateTools_Resolution *)HOUR {
  return JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, HOUR);
}

+ (OrgApacheLuceneDocumentDateTools_Resolution *)MINUTE {
  return JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MINUTE);
}

+ (OrgApacheLuceneDocumentDateTools_Resolution *)SECOND {
  return JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, SECOND);
}

+ (OrgApacheLuceneDocumentDateTools_Resolution *)MILLISECOND {
  return JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MILLISECOND);
}

- (NSString *)description {
  return [((NSString *) nil_chk([super description])) lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ROOT)];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneDocumentDateTools_Resolution_values();
}

+ (OrgApacheLuceneDocumentDateTools_Resolution *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneDocumentDateTools_Resolution_valueOfWithNSString_(name);
}

- (OrgApacheLuceneDocumentDateTools_Resolution_Enum)toNSEnum {
  return (OrgApacheLuceneDocumentDateTools_Resolution_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentDateTools_Resolution class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 7 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, YEAR) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(e, 4, @"YEAR", 0);
    (JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MONTH) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(e, 6, @"MONTH", 1);
    (JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, DAY) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(e, 8, @"DAY", 2);
    (JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, HOUR) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(e, 10, @"HOUR", 3);
    (JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MINUTE) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(e, 12, @"MINUTE", 4);
    (JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, SECOND) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(e, 14, @"SECOND", 5);
    (JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MILLISECOND) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(e, 17, @"MILLISECOND", 6);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentDateTools_Resolution)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "YEAR", "YEAR", 0x4019, "Lorg.apache.lucene.document.DateTools$Resolution;", &JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, YEAR), NULL, .constantValue.asLong = 0 },
    { "MONTH", "MONTH", 0x4019, "Lorg.apache.lucene.document.DateTools$Resolution;", &JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MONTH), NULL, .constantValue.asLong = 0 },
    { "DAY", "DAY", 0x4019, "Lorg.apache.lucene.document.DateTools$Resolution;", &JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, DAY), NULL, .constantValue.asLong = 0 },
    { "HOUR", "HOUR", 0x4019, "Lorg.apache.lucene.document.DateTools$Resolution;", &JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, HOUR), NULL, .constantValue.asLong = 0 },
    { "MINUTE", "MINUTE", 0x4019, "Lorg.apache.lucene.document.DateTools$Resolution;", &JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MINUTE), NULL, .constantValue.asLong = 0 },
    { "SECOND", "SECOND", 0x4019, "Lorg.apache.lucene.document.DateTools$Resolution;", &JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, SECOND), NULL, .constantValue.asLong = 0 },
    { "MILLISECOND", "MILLISECOND", 0x4019, "Lorg.apache.lucene.document.DateTools$Resolution;", &JreEnum(OrgApacheLuceneDocumentDateTools_Resolution, MILLISECOND), NULL, .constantValue.asLong = 0 },
    { "formatLen_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "format_", NULL, 0x10, "Ljava.text.SimpleDateFormat;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.document.DateTools$Resolution;"};
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentDateTools_Resolution = { 2, "Resolution", "org.apache.lucene.document", "DateTools", 0x4019, 1, methods, 9, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/document/DateTools$Resolution;>;" };
  return &_OrgApacheLuceneDocumentDateTools_Resolution;
}

@end

void OrgApacheLuceneDocumentDateTools_Resolution_initWithInt_withNSString_withInt_(OrgApacheLuceneDocumentDateTools_Resolution *self, jint formatLen, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->formatLen_ = formatLen;
  JreStrongAssignAndConsume(&self->format_, new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_([@"yyyyMMddHHmmssSSS" substring:0 endIndex:formatLen], JreLoadStatic(JavaUtilLocale, ROOT)));
  [self->format_ setTimeZoneWithJavaUtilTimeZone:JreLoadStatic(OrgApacheLuceneDocumentDateTools, GMT)];
}

IOSObjectArray *OrgApacheLuceneDocumentDateTools_Resolution_values() {
  OrgApacheLuceneDocumentDateTools_Resolution_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneDocumentDateTools_Resolution_values_ count:7 type:OrgApacheLuceneDocumentDateTools_Resolution_class_()];
}

OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneDocumentDateTools_Resolution_initialize();
  for (int i = 0; i < 7; i++) {
    OrgApacheLuceneDocumentDateTools_Resolution *e = OrgApacheLuceneDocumentDateTools_Resolution_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneDocumentDateTools_Resolution *OrgApacheLuceneDocumentDateTools_Resolution_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneDocumentDateTools_Resolution_initialize();
  if (ordinal >= 7) {
    return nil;
  }
  return OrgApacheLuceneDocumentDateTools_Resolution_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentDateTools_Resolution)

@implementation OrgApacheLuceneDocumentDateTools_$1

- (JavaUtilCalendar *)initialValue {
  return JavaUtilCalendar_getInstanceWithJavaUtilTimeZone_withJavaUtilLocale_(JreLoadStatic(OrgApacheLuceneDocumentDateTools, GMT), JreLoadStatic(JavaUtilLocale, ROOT));
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneDocumentDateTools_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "Ljava.util.Calendar;", 0x4, NULL, "()Ljava/util/Calendar;" },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.util.Calendar;"};
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentDateTools_$1 = { 2, "", "org.apache.lucene.document", "DateTools", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/ThreadLocal<Ljava/util/Calendar;>;" };
  return &_OrgApacheLuceneDocumentDateTools_$1;
}

@end

void OrgApacheLuceneDocumentDateTools_$1_init(OrgApacheLuceneDocumentDateTools_$1 *self) {
  JavaLangThreadLocal_init(self);
}

OrgApacheLuceneDocumentDateTools_$1 *new_OrgApacheLuceneDocumentDateTools_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDateTools_$1, init)
}

OrgApacheLuceneDocumentDateTools_$1 *create_OrgApacheLuceneDocumentDateTools_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDateTools_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentDateTools_$1)

@implementation OrgApacheLuceneDocumentDateTools_$2

- (IOSObjectArray *)initialValue {
  IOSObjectArray *arr = [IOSObjectArray arrayWithLength:((OrgApacheLuceneDocumentDateTools_Resolution *) nil_chk(JreLoadEnum(OrgApacheLuceneDocumentDateTools_Resolution, MILLISECOND)))->formatLen_ + 1 type:JavaTextSimpleDateFormat_class_()];
  {
    IOSObjectArray *a__ = OrgApacheLuceneDocumentDateTools_Resolution_values();
    OrgApacheLuceneDocumentDateTools_Resolution * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneDocumentDateTools_Resolution * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneDocumentDateTools_Resolution *resolution = *b__++;
      IOSObjectArray_Set(arr, ((OrgApacheLuceneDocumentDateTools_Resolution *) nil_chk(resolution))->formatLen_, (JavaTextSimpleDateFormat *) cast_chk([((JavaTextSimpleDateFormat *) nil_chk(resolution->format_)) clone], [JavaTextSimpleDateFormat class]));
    }
  }
  return arr;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneDocumentDateTools_$2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "[Ljava.text.SimpleDateFormat;", 0x4, NULL, "()[Ljava/text/SimpleDateFormat;" },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"[Ljava.text.SimpleDateFormat;"};
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentDateTools_$2 = { 2, "", "org.apache.lucene.document", "DateTools", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/ThreadLocal<[Ljava/text/SimpleDateFormat;>;" };
  return &_OrgApacheLuceneDocumentDateTools_$2;
}

@end

void OrgApacheLuceneDocumentDateTools_$2_init(OrgApacheLuceneDocumentDateTools_$2 *self) {
  JavaLangThreadLocal_init(self);
}

OrgApacheLuceneDocumentDateTools_$2 *new_OrgApacheLuceneDocumentDateTools_$2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDateTools_$2, init)
}

OrgApacheLuceneDocumentDateTools_$2 *create_OrgApacheLuceneDocumentDateTools_$2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDateTools_$2, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentDateTools_$2)