//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/PositiveIntOutputs.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/Outputs.h"
#include "org/apache/lucene/util/fst/PositiveIntOutputs.h"

@interface OrgApacheLuceneUtilFstPositiveIntOutputs ()

- (instancetype)init;

- (jboolean)validWithJavaLangLong:(JavaLangLong *)o;

@end

inline JavaLangLong *OrgApacheLuceneUtilFstPositiveIntOutputs_get_NO_OUTPUT();
static JavaLangLong *OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilFstPositiveIntOutputs, NO_OUTPUT, JavaLangLong *)

inline OrgApacheLuceneUtilFstPositiveIntOutputs *OrgApacheLuceneUtilFstPositiveIntOutputs_get_singleton();
static OrgApacheLuceneUtilFstPositiveIntOutputs *OrgApacheLuceneUtilFstPositiveIntOutputs_singleton;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilFstPositiveIntOutputs, singleton, OrgApacheLuceneUtilFstPositiveIntOutputs *)

__attribute__((unused)) static void OrgApacheLuceneUtilFstPositiveIntOutputs_init(OrgApacheLuceneUtilFstPositiveIntOutputs *self);

__attribute__((unused)) static OrgApacheLuceneUtilFstPositiveIntOutputs *new_OrgApacheLuceneUtilFstPositiveIntOutputs_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilFstPositiveIntOutputs *create_OrgApacheLuceneUtilFstPositiveIntOutputs_init();

__attribute__((unused)) static jboolean OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(OrgApacheLuceneUtilFstPositiveIntOutputs *self, JavaLangLong *o);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstPositiveIntOutputs)

@implementation OrgApacheLuceneUtilFstPositiveIntOutputs

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilFstPositiveIntOutputs_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilFstPositiveIntOutputs *)getSingleton {
  return OrgApacheLuceneUtilFstPositiveIntOutputs_getSingleton();
}

- (JavaLangLong *)commonWithId:(JavaLangLong *)output1
                        withId:(JavaLangLong *)output2 {
  JreAssert((OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, output1)), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:48 condition failed: assert valid(output1);"));
  JreAssert((OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, output2)), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:49 condition failed: assert valid(output2);"));
  if (output1 == OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT || output2 == OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT) {
    return OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT;
  }
  else {
    JreAssert(([((JavaLangLong *) nil_chk(output1)) longLongValue] > 0), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:53 condition failed: assert output1 > 0;"));
    JreAssert(([((JavaLangLong *) nil_chk(output2)) longLongValue] > 0), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:54 condition failed: assert output2 > 0;"));
    return JavaLangLong_valueOfWithLong_(JavaLangMath_minWithLong_withLong_([output1 longLongValue], [output2 longLongValue]));
  }
}

- (JavaLangLong *)subtractWithId:(JavaLangLong *)output
                          withId:(JavaLangLong *)inc {
  JreAssert((OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, output)), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:61 condition failed: assert valid(output);"));
  JreAssert((OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, inc)), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:62 condition failed: assert valid(inc);"));
  JreAssert(([((JavaLangLong *) nil_chk(output)) longLongValue] >= [((JavaLangLong *) nil_chk(inc)) longLongValue]), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:63 condition failed: assert output >= inc;"));
  if (inc == OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT) {
    return output;
  }
  else if ([output isEqual:inc]) {
    return OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT;
  }
  else {
    return JavaLangLong_valueOfWithLong_([output longLongValue] - [inc longLongValue]);
  }
}

- (JavaLangLong *)addWithId:(JavaLangLong *)prefix
                     withId:(JavaLangLong *)output {
  JreAssert((OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, prefix)), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:76 condition failed: assert valid(prefix);"));
  JreAssert((OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, output)), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:77 condition failed: assert valid(output);"));
  if (prefix == OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT) {
    return output;
  }
  else if (output == OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT) {
    return prefix;
  }
  else {
    return JavaLangLong_valueOfWithLong_([((JavaLangLong *) nil_chk(prefix)) longLongValue] + [((JavaLangLong *) nil_chk(output)) longLongValue]);
  }
}

- (void)writeWithId:(JavaLangLong *)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  JreAssert((OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, output)), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:89 condition failed: assert valid(output);"));
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVLongWithLong:[((JavaLangLong *) nil_chk(output)) longLongValue]];
}

- (JavaLangLong *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jlong v = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVLong];
  if (v == 0) {
    return OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT;
  }
  else {
    return JavaLangLong_valueOfWithLong_(v);
  }
}

- (jboolean)validWithJavaLangLong:(JavaLangLong *)o {
  return OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(self, o);
}

- (JavaLangLong *)getNoOutput {
  return OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT;
}

- (NSString *)outputToStringWithId:(JavaLangLong *)output {
  return [((JavaLangLong *) nil_chk(output)) description];
}

- (NSString *)description {
  return @"PositiveIntOutputs";
}

- (jlong)ramBytesUsedWithId:(JavaLangLong *)output {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithJavaLangLong_(output);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstPositiveIntOutputs class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT, new_JavaLangLong_initWithLong_(0));
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstPositiveIntOutputs_singleton, new_OrgApacheLuceneUtilFstPositiveIntOutputs_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstPositiveIntOutputs)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PositiveIntOutputs", NULL, 0x2, NULL, NULL },
    { "getSingleton", NULL, "Lorg.apache.lucene.util.fst.PositiveIntOutputs;", 0x9, NULL, NULL },
    { "commonWithId:withId:", "common", "Ljava.lang.Long;", 0x1, NULL, "(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;" },
    { "subtractWithId:withId:", "subtract", "Ljava.lang.Long;", 0x1, NULL, "(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;" },
    { "addWithId:withId:", "add", "Ljava.lang.Long;", 0x1, NULL, "(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;" },
    { "writeWithId:withOrgApacheLuceneStoreDataOutput:", "write", "V", 0x1, "Ljava.io.IOException;", "(Ljava/lang/Long;Lorg/apache/lucene/store/DataOutput;)V" },
    { "readWithOrgApacheLuceneStoreDataInput:", "read", "Ljava.lang.Long;", 0x1, "Ljava.io.IOException;", "(Lorg/apache/lucene/store/DataInput;)Ljava/lang/Long;" },
    { "validWithJavaLangLong:", "valid", "Z", 0x2, NULL, NULL },
    { "getNoOutput", NULL, "Ljava.lang.Long;", 0x1, NULL, "()Ljava/lang/Long;" },
    { "outputToStringWithId:", "outputToString", "Ljava.lang.String;", 0x1, NULL, "(Ljava/lang/Long;)Ljava/lang/String;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "ramBytesUsedWithId:", "ramBytesUsed", "J", 0x1, NULL, "(Ljava/lang/Long;)J" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT", "NO_OUTPUT", 0x1a, "Ljava.lang.Long;", &OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT, NULL, .constantValue.asLong = 0 },
    { "singleton", "singleton", 0x1a, "Lorg.apache.lucene.util.fst.PositiveIntOutputs;", &OrgApacheLuceneUtilFstPositiveIntOutputs_singleton, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Long;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstPositiveIntOutputs = { 2, "PositiveIntOutputs", "org.apache.lucene.util.fst", NULL, 0x11, 12, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/fst/Outputs<Ljava/lang/Long;>;" };
  return &_OrgApacheLuceneUtilFstPositiveIntOutputs;
}

@end

void OrgApacheLuceneUtilFstPositiveIntOutputs_init(OrgApacheLuceneUtilFstPositiveIntOutputs *self) {
  OrgApacheLuceneUtilFstOutputs_init(self);
}

OrgApacheLuceneUtilFstPositiveIntOutputs *new_OrgApacheLuceneUtilFstPositiveIntOutputs_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstPositiveIntOutputs, init)
}

OrgApacheLuceneUtilFstPositiveIntOutputs *create_OrgApacheLuceneUtilFstPositiveIntOutputs_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstPositiveIntOutputs, init)
}

OrgApacheLuceneUtilFstPositiveIntOutputs *OrgApacheLuceneUtilFstPositiveIntOutputs_getSingleton() {
  OrgApacheLuceneUtilFstPositiveIntOutputs_initialize();
  return OrgApacheLuceneUtilFstPositiveIntOutputs_singleton;
}

jboolean OrgApacheLuceneUtilFstPositiveIntOutputs_validWithJavaLangLong_(OrgApacheLuceneUtilFstPositiveIntOutputs *self, JavaLangLong *o) {
  JreAssert((o != nil), (@"org/apache/lucene/util/fst/PositiveIntOutputs.java:104 condition failed: assert o != null;"));
  JreAssert((o == OrgApacheLuceneUtilFstPositiveIntOutputs_NO_OUTPUT || [((JavaLangLong *) nil_chk(o)) longLongValue] > 0), (JreStrcat("$@", @"o=", o)));
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstPositiveIntOutputs)