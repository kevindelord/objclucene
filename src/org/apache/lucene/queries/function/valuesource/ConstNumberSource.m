//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/ConstNumberSource.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/ConstNumberSource.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource

- (jint)getInt {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getLong {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)getFloat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jdouble)getDouble {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSNumber *)getNumber {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)getBool {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getInt", NULL, "I", 0x401, NULL, NULL },
    { "getLong", NULL, "J", 0x401, NULL, NULL },
    { "getFloat", NULL, "F", 0x401, NULL, NULL },
    { "getDouble", NULL, "D", 0x401, NULL, NULL },
    { "getNumber", NULL, "Ljava.lang.Number;", 0x401, NULL, NULL },
    { "getBool", NULL, "Z", 0x401, NULL, NULL },
    { "init", "ConstNumberSource", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource = { 2, "ConstNumberSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x401, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource_init(OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource *self) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource)