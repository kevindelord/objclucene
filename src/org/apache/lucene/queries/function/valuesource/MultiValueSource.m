//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MultiValueSource.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/MultiValueSource.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource

- (jint)dimension {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "dimension", NULL, "I", 0x401, NULL, NULL },
    { "init", "MultiValueSource", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource = { 2, "MultiValueSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x401, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_init(OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource *self) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource)