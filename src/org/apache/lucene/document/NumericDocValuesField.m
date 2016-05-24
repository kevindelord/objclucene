//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/NumericDocValuesField.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/NumericDocValuesField.h"
#include "org/apache/lucene/index/DocValuesType.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentNumericDocValuesField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentNumericDocValuesField_TYPE;

@implementation OrgApacheLuceneDocumentNumericDocValuesField

+ (OrgApacheLuceneDocumentFieldType *)TYPE {
  return OrgApacheLuceneDocumentNumericDocValuesField_TYPE;
}

- (instancetype)initWithNSString:(NSString *)name
                        withLong:(jlong)value {
  OrgApacheLuceneDocumentNumericDocValuesField_initWithNSString_withLong_(self, name, value);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentNumericDocValuesField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentNumericDocValuesField_TYPE, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentNumericDocValuesField_TYPE setDocValuesTypeWithOrgApacheLuceneIndexDocValuesType:JreLoadEnum(OrgApacheLuceneIndexDocValuesType, NUMERIC)];
      [OrgApacheLuceneDocumentNumericDocValuesField_TYPE freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentNumericDocValuesField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withLong:", "NumericDocValuesField", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE", "TYPE", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneDocumentNumericDocValuesField_TYPE, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentNumericDocValuesField = { 2, "NumericDocValuesField", "org.apache.lucene.document", NULL, 0x1, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneDocumentNumericDocValuesField;
}

@end

void OrgApacheLuceneDocumentNumericDocValuesField_initWithNSString_withLong_(OrgApacheLuceneDocumentNumericDocValuesField *self, NSString *name, jlong value) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, OrgApacheLuceneDocumentNumericDocValuesField_TYPE);
  JreStrongAssign(&self->fieldsData_, JavaLangLong_valueOfWithLong_(value));
}

OrgApacheLuceneDocumentNumericDocValuesField *new_OrgApacheLuceneDocumentNumericDocValuesField_initWithNSString_withLong_(NSString *name, jlong value) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentNumericDocValuesField, initWithNSString_withLong_, name, value)
}

OrgApacheLuceneDocumentNumericDocValuesField *create_OrgApacheLuceneDocumentNumericDocValuesField_initWithNSString_withLong_(NSString *name, jlong value) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentNumericDocValuesField, initWithNSString_withLong_, name, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentNumericDocValuesField)