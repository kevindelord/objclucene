//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Constants.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/StringTokenizer.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneUtilConstants ()

- (instancetype)init;

@end

inline jint OrgApacheLuceneUtilConstants_get_JVM_MAJOR_VERSION();
static jint OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, JVM_MAJOR_VERSION, jint)

inline jint OrgApacheLuceneUtilConstants_get_JVM_MINOR_VERSION();
static jint OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilConstants, JVM_MINOR_VERSION, jint)

__attribute__((unused)) static void OrgApacheLuceneUtilConstants_init(OrgApacheLuceneUtilConstants *self);

__attribute__((unused)) static OrgApacheLuceneUtilConstants *new_OrgApacheLuceneUtilConstants_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilConstants *create_OrgApacheLuceneUtilConstants_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilConstants)

NSString *OrgApacheLuceneUtilConstants_JVM_VENDOR;
NSString *OrgApacheLuceneUtilConstants_JVM_VERSION;
NSString *OrgApacheLuceneUtilConstants_JVM_NAME;
NSString *OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION;
NSString *OrgApacheLuceneUtilConstants_JAVA_VERSION;
NSString *OrgApacheLuceneUtilConstants_OS_NAME;
jboolean OrgApacheLuceneUtilConstants_LINUX;
jboolean OrgApacheLuceneUtilConstants_WINDOWS;
jboolean OrgApacheLuceneUtilConstants_SUN_OS;
jboolean OrgApacheLuceneUtilConstants_MAC_OS_X;
jboolean OrgApacheLuceneUtilConstants_FREE_BSD;
NSString *OrgApacheLuceneUtilConstants_OS_ARCH;
NSString *OrgApacheLuceneUtilConstants_OS_VERSION;
NSString *OrgApacheLuceneUtilConstants_JAVA_VENDOR;
jboolean OrgApacheLuceneUtilConstants_JRE_IS_64BIT;
jboolean OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8;
jboolean OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9;
NSString *OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION;
NSString *OrgApacheLuceneUtilConstants_LUCENE_VERSION;

@implementation OrgApacheLuceneUtilConstants

+ (NSString *)JVM_VENDOR {
  return OrgApacheLuceneUtilConstants_JVM_VENDOR;
}

+ (NSString *)JVM_VERSION {
  return OrgApacheLuceneUtilConstants_JVM_VERSION;
}

+ (NSString *)JVM_NAME {
  return OrgApacheLuceneUtilConstants_JVM_NAME;
}

+ (NSString *)JVM_SPEC_VERSION {
  return OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION;
}

+ (NSString *)JAVA_VERSION {
  return OrgApacheLuceneUtilConstants_JAVA_VERSION;
}

+ (NSString *)OS_NAME {
  return OrgApacheLuceneUtilConstants_OS_NAME;
}

+ (jboolean)LINUX {
  return OrgApacheLuceneUtilConstants_LINUX;
}

+ (jboolean)WINDOWS {
  return OrgApacheLuceneUtilConstants_WINDOWS;
}

+ (jboolean)SUN_OS {
  return OrgApacheLuceneUtilConstants_SUN_OS;
}

+ (jboolean)MAC_OS_X {
  return OrgApacheLuceneUtilConstants_MAC_OS_X;
}

+ (jboolean)FREE_BSD {
  return OrgApacheLuceneUtilConstants_FREE_BSD;
}

+ (NSString *)OS_ARCH {
  return OrgApacheLuceneUtilConstants_OS_ARCH;
}

+ (NSString *)OS_VERSION {
  return OrgApacheLuceneUtilConstants_OS_VERSION;
}

+ (NSString *)JAVA_VENDOR {
  return OrgApacheLuceneUtilConstants_JAVA_VENDOR;
}

+ (jboolean)JRE_IS_64BIT {
  return OrgApacheLuceneUtilConstants_JRE_IS_64BIT;
}

+ (jboolean)JRE_IS_MINIMUM_JAVA8 {
  return OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8;
}

+ (jboolean)JRE_IS_MINIMUM_JAVA9 {
  return OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9;
}

+ (NSString *)LUCENE_MAIN_VERSION {
  return OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION;
}

+ (NSString *)LUCENE_VERSION {
  return OrgApacheLuceneUtilConstants_LUCENE_VERSION;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilConstants_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_LUCENE_MAIN_VERSION_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_LUCENE_VERSION_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilConstants class]) {
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VENDOR, JavaLangSystem_getPropertyWithNSString_(@"java.vm.vendor"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VERSION, JavaLangSystem_getPropertyWithNSString_(@"java.vm.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_NAME, JavaLangSystem_getPropertyWithNSString_(@"java.vm.name"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION, JavaLangSystem_getPropertyWithNSString_(@"java.specification.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VERSION, JavaLangSystem_getPropertyWithNSString_(@"java.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_NAME, JavaLangSystem_getPropertyWithNSString_(@"os.name"));
    OrgApacheLuceneUtilConstants_LINUX = [((NSString *) nil_chk(OrgApacheLuceneUtilConstants_OS_NAME)) hasPrefix:@"Linux"];
    OrgApacheLuceneUtilConstants_WINDOWS = [OrgApacheLuceneUtilConstants_OS_NAME hasPrefix:@"Windows"];
    OrgApacheLuceneUtilConstants_SUN_OS = [OrgApacheLuceneUtilConstants_OS_NAME hasPrefix:@"SunOS"];
    OrgApacheLuceneUtilConstants_MAC_OS_X = [OrgApacheLuceneUtilConstants_OS_NAME hasPrefix:@"Mac OS X"];
    OrgApacheLuceneUtilConstants_FREE_BSD = [OrgApacheLuceneUtilConstants_OS_NAME hasPrefix:@"FreeBSD"];
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_ARCH, JavaLangSystem_getPropertyWithNSString_(@"os.arch"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_VERSION, JavaLangSystem_getPropertyWithNSString_(@"os.version"));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VENDOR, JavaLangSystem_getPropertyWithNSString_(@"java.vendor"));
    {
      JavaUtilStringTokenizer *st = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION, @".");
      OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION = JavaLangInteger_parseIntWithNSString_([st nextToken]);
      if ([st hasMoreTokens]) {
        OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION = JavaLangInteger_parseIntWithNSString_([st nextToken]);
      }
      else {
        OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION = 0;
      }
      jboolean is64Bit = false;
      NSString *x = JavaLangSystem_getPropertyWithNSString_(@"sun.arch.data.model");
      if (x != nil) {
        is64Bit = [x contains:@"64"];
      }
      else {
        if (OrgApacheLuceneUtilConstants_OS_ARCH != nil && [OrgApacheLuceneUtilConstants_OS_ARCH contains:@"64"]) {
          is64Bit = true;
        }
        else {
          is64Bit = false;
        }
      }
      OrgApacheLuceneUtilConstants_JRE_IS_64BIT = is64Bit;
    }
    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8 = (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION > 1 || (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION == 1 && OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION >= 8));
    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9 = (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION > 1 || (OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION == 1 && OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION >= 9));
    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION, [((OrgApacheLuceneUtilVersion *) nil_chk(JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST))) description]);
    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_VERSION, [JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST) description]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilConstants)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Constants", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "JVM_VENDOR", "JVM_VENDOR", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_JVM_VENDOR, NULL, .constantValue.asLong = 0 },
    { "JVM_VERSION", "JVM_VERSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_JVM_VERSION, NULL, .constantValue.asLong = 0 },
    { "JVM_NAME", "JVM_NAME", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_JVM_NAME, NULL, .constantValue.asLong = 0 },
    { "JVM_SPEC_VERSION", "JVM_SPEC_VERSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION, NULL, .constantValue.asLong = 0 },
    { "JAVA_VERSION", "JAVA_VERSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_JAVA_VERSION, NULL, .constantValue.asLong = 0 },
    { "OS_NAME", "OS_NAME", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_OS_NAME, NULL, .constantValue.asLong = 0 },
    { "LINUX", "LINUX", 0x19, "Z", &OrgApacheLuceneUtilConstants_LINUX, NULL, .constantValue.asLong = 0 },
    { "WINDOWS", "WINDOWS", 0x19, "Z", &OrgApacheLuceneUtilConstants_WINDOWS, NULL, .constantValue.asLong = 0 },
    { "SUN_OS", "SUN_OS", 0x19, "Z", &OrgApacheLuceneUtilConstants_SUN_OS, NULL, .constantValue.asLong = 0 },
    { "MAC_OS_X", "MAC_OS_X", 0x19, "Z", &OrgApacheLuceneUtilConstants_MAC_OS_X, NULL, .constantValue.asLong = 0 },
    { "FREE_BSD", "FREE_BSD", 0x19, "Z", &OrgApacheLuceneUtilConstants_FREE_BSD, NULL, .constantValue.asLong = 0 },
    { "OS_ARCH", "OS_ARCH", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_OS_ARCH, NULL, .constantValue.asLong = 0 },
    { "OS_VERSION", "OS_VERSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_OS_VERSION, NULL, .constantValue.asLong = 0 },
    { "JAVA_VENDOR", "JAVA_VENDOR", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_JAVA_VENDOR, NULL, .constantValue.asLong = 0 },
    { "JVM_MAJOR_VERSION", "JVM_MAJOR_VERSION", 0x1a, "I", &OrgApacheLuceneUtilConstants_JVM_MAJOR_VERSION, NULL, .constantValue.asLong = 0 },
    { "JVM_MINOR_VERSION", "JVM_MINOR_VERSION", 0x1a, "I", &OrgApacheLuceneUtilConstants_JVM_MINOR_VERSION, NULL, .constantValue.asLong = 0 },
    { "JRE_IS_64BIT", "JRE_IS_64BIT", 0x19, "Z", &OrgApacheLuceneUtilConstants_JRE_IS_64BIT, NULL, .constantValue.asLong = 0 },
    { "JRE_IS_MINIMUM_JAVA8", "JRE_IS_MINIMUM_JAVA8", 0x19, "Z", &OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8, NULL, .constantValue.asLong = 0 },
    { "JRE_IS_MINIMUM_JAVA9", "JRE_IS_MINIMUM_JAVA9", 0x19, "Z", &OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9, NULL, .constantValue.asLong = 0 },
    { "LUCENE_MAIN_VERSION", "LUCENE_MAIN_VERSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION, NULL, .constantValue.asLong = 0 },
    { "LUCENE_VERSION", "LUCENE_VERSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilConstants_LUCENE_VERSION, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilConstants = { 2, "Constants", "org.apache.lucene.util", NULL, 0x11, 1, methods, 21, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilConstants;
}

@end

void OrgApacheLuceneUtilConstants_init(OrgApacheLuceneUtilConstants *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilConstants *new_OrgApacheLuceneUtilConstants_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilConstants, init)
}

OrgApacheLuceneUtilConstants *create_OrgApacheLuceneUtilConstants_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilConstants, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilConstants)
