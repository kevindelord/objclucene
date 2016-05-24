//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50StoredFieldsFormat.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "org/apache/lucene/codecs/StoredFieldsFormat.h"
#include "org/apache/lucene/codecs/StoredFieldsReader.h"
#include "org/apache/lucene/codecs/StoredFieldsWriter.h"
#include "org/apache/lucene/codecs/compressing/CompressingStoredFieldsFormat.h"
#include "org/apache/lucene/codecs/compressing/CompressionMode.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50StoredFieldsFormat.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/lukhnos/portmobile/util/Objects.h"

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_initWithNSString_withInt_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat)

NSString *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY;

@implementation OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat

+ (NSString *)MODE_KEY {
  return OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)mode {
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(self, mode);
  return self;
}

- (OrgApacheLuceneCodecsStoredFieldsReader *)fieldsReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                        withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  NSString *value = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si)) getAttributeWithNSString:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY];
  if (value == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$$", @"missing value for ", OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY, @" for segment: ", si->name_));
  }
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_valueOfWithNSString_(value);
  return [((OrgApacheLuceneCodecsStoredFieldsFormat *) nil_chk([self implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:mode])) fieldsReaderWithOrgApacheLuceneStoreDirectory:directory withOrgApacheLuceneIndexSegmentInfo:si withOrgApacheLuceneIndexFieldInfos:fn withOrgApacheLuceneStoreIOContext:context];
}

- (OrgApacheLuceneCodecsStoredFieldsWriter *)fieldsWriterWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                       withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  NSString *previous = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si)) putAttributeWithNSString:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY withNSString:[((OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *) nil_chk(mode_)) name]];
  if (previous != nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$$$$$$", @"found existing value for ", OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY, @" for segment: ", si->name_, @"old=", previous, @", new=", [mode_ name]));
  }
  return [((OrgApacheLuceneCodecsStoredFieldsFormat *) nil_chk([self implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:mode_])) fieldsWriterWithOrgApacheLuceneStoreDirectory:directory withOrgApacheLuceneIndexSegmentInfo:si withOrgApacheLuceneStoreIOContext:context];
}

- (OrgApacheLuceneCodecsStoredFieldsFormat *)implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)mode {
  switch ([mode ordinal]) {
    case OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum_BEST_SPEED:
    return create_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat_initWithNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(@"Lucene50StoredFieldsFast", JreLoadStatic(OrgApacheLuceneCodecsCompressingCompressionMode, FAST), JreLShift32(1, 14), 128, 1024);
    case OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum_BEST_COMPRESSION:
    return create_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat_initWithNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(@"Lucene50StoredFieldsHigh", JreLoadStatic(OrgApacheLuceneCodecsCompressingCompressionMode, HIGH_COMPRESSION), 61440, 512, 1024);
    default:
    @throw create_JavaLangAssertionError_init();
  }
}

- (void)dealloc {
  RELEASE_(mode_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat class]) {
    JreStrongAssign(&OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY, JreStrcat("$$", [OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_class_() getSimpleName], @".mode"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Lucene50StoredFieldsFormat", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:", "Lucene50StoredFieldsFormat", NULL, 0x1, NULL, NULL },
    { "fieldsReaderWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneIndexFieldInfos:withOrgApacheLuceneStoreIOContext:", "fieldsReader", "Lorg.apache.lucene.codecs.StoredFieldsReader;", 0x1, "Ljava.io.IOException;", NULL },
    { "fieldsWriterWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneStoreIOContext:", "fieldsWriter", "Lorg.apache.lucene.codecs.StoredFieldsWriter;", 0x1, "Ljava.io.IOException;", NULL },
    { "implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode:", "impl", "Lorg.apache.lucene.codecs.StoredFieldsFormat;", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MODE_KEY", "MODE_KEY", 0x19, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY, NULL, .constantValue.asLong = 0 },
    { "mode_", NULL, 0x10, "Lorg.apache.lucene.codecs.lucene50.Lucene50StoredFieldsFormat$Mode;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.lucene50.Lucene50StoredFieldsFormat$Mode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat = { 2, "Lucene50StoredFieldsFormat", "org.apache.lucene.codecs.lucene50", NULL, 0x11, 5, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *self) {
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(self, JreLoadEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_SPEED));
}

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat, init)
}

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat, init)
}

void OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *self, OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode) {
  OrgApacheLuceneCodecsStoredFieldsFormat_init(self);
  JreStrongAssign(&self->mode_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(mode));
}

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat, initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_, mode)
}

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *mode) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat, initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_, mode)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode)

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values_[2];

@implementation OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode

+ (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)BEST_SPEED {
  return JreEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_SPEED);
}

+ (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)BEST_COMPRESSION {
  return JreEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_COMPRESSION);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values();
}

+ (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_valueOfWithNSString_(name);
}

- (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum)toNSEnum {
  return (OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 2 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_SPEED) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_initWithNSString_withInt_(e, @"BEST_SPEED", 0);
    (JreEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_COMPRESSION) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_initWithNSString_withInt_(e, @"BEST_COMPRESSION", 1);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "BEST_SPEED", "BEST_SPEED", 0x4019, "Lorg.apache.lucene.codecs.lucene50.Lucene50StoredFieldsFormat$Mode;", &JreEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_SPEED), NULL, .constantValue.asLong = 0 },
    { "BEST_COMPRESSION", "BEST_COMPRESSION", 0x4019, "Lorg.apache.lucene.codecs.lucene50.Lucene50StoredFieldsFormat$Mode;", &JreEnum(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode, BEST_COMPRESSION), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.codecs.lucene50.Lucene50StoredFieldsFormat$Mode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode = { 2, "Mode", "org.apache.lucene.codecs.lucene50", "Lucene50StoredFieldsFormat", 0x4019, 0, NULL, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/codecs/lucene50/Lucene50StoredFieldsFormat$Mode;>;" };
  return &_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_initWithNSString_withInt_(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values() {
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values_ count:2 type:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_class_()];
}

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_initialize();
  for (int i = 0; i < 2; i++) {
    OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *e = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_Mode)