//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/FloatField.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/FloatField.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/util/NumericUtils.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentFloatField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED;
OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentFloatField_TYPE_STORED;

@implementation OrgApacheLuceneDocumentFloatField

+ (OrgApacheLuceneDocumentFieldType *)TYPE_NOT_STORED {
  return OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED;
}

+ (OrgApacheLuceneDocumentFieldType *)TYPE_STORED {
  return OrgApacheLuceneDocumentFloatField_TYPE_STORED;
}

- (instancetype)initWithNSString:(NSString *)name
                       withFloat:(jfloat)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored {
  OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentField_Store_(self, name, value, stored);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                       withFloat:(jfloat)value
withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)type {
  OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_(self, name, value, type);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentFloatField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED setTokenizedWithBoolean:true];
      [OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericType:JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, FLOAT)];
      [OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED setNumericPrecisionStepWithInt:OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT_32];
      [OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED freeze];
    }
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentFloatField_TYPE_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentFloatField_TYPE_STORED setTokenizedWithBoolean:true];
      [OrgApacheLuceneDocumentFloatField_TYPE_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentFloatField_TYPE_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentFloatField_TYPE_STORED setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericType:JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, FLOAT)];
      [OrgApacheLuceneDocumentFloatField_TYPE_STORED setNumericPrecisionStepWithInt:OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT_32];
      [OrgApacheLuceneDocumentFloatField_TYPE_STORED setStoredWithBoolean:true];
      [OrgApacheLuceneDocumentFloatField_TYPE_STORED freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentFloatField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withFloat:withOrgApacheLuceneDocumentField_Store:", "FloatField", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withFloat:withOrgApacheLuceneDocumentFieldType:", "FloatField", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_NOT_STORED", "TYPE_NOT_STORED", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED, NULL, .constantValue.asLong = 0 },
    { "TYPE_STORED", "TYPE_STORED", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneDocumentFloatField_TYPE_STORED, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentFloatField = { 2, "FloatField", "org.apache.lucene.document", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneDocumentFloatField;
}

@end

void OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentFloatField *self, NSString *name, jfloat value, OrgApacheLuceneDocumentField_Store *stored) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, stored == JreLoadEnum(OrgApacheLuceneDocumentField_Store, YES) ? OrgApacheLuceneDocumentFloatField_TYPE_STORED : OrgApacheLuceneDocumentFloatField_TYPE_NOT_STORED);
  JreStrongAssign(&self->fieldsData_, JavaLangFloat_valueOfWithFloat_(value));
}

OrgApacheLuceneDocumentFloatField *new_OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentField_Store_(NSString *name, jfloat value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentFloatField, initWithNSString_withFloat_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

OrgApacheLuceneDocumentFloatField *create_OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentField_Store_(NSString *name, jfloat value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentFloatField, initWithNSString_withFloat_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

void OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentFloatField *self, NSString *name, jfloat value, OrgApacheLuceneDocumentFieldType *type) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, type);
  if ([((OrgApacheLuceneDocumentFieldType *) nil_chk(type)) numericType] != JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, FLOAT)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"type.numericType() must be FLOAT but got ", [type numericType]));
  }
  JreStrongAssign(&self->fieldsData_, JavaLangFloat_valueOfWithFloat_(value));
}

OrgApacheLuceneDocumentFloatField *new_OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_(NSString *name, jfloat value, OrgApacheLuceneDocumentFieldType *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentFloatField, initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_, name, value, type)
}

OrgApacheLuceneDocumentFloatField *create_OrgApacheLuceneDocumentFloatField_initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_(NSString *name, jfloat value, OrgApacheLuceneDocumentFieldType *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentFloatField, initWithNSString_withFloat_withOrgApacheLuceneDocumentFieldType_, name, value, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentFloatField)