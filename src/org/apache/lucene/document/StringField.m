//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/StringField.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/StringField.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/util/BytesRef.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentStringField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED;
OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentStringField_TYPE_STORED;

@implementation OrgApacheLuceneDocumentStringField

+ (OrgApacheLuceneDocumentFieldType *)TYPE_NOT_STORED {
  return OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED;
}

+ (OrgApacheLuceneDocumentFieldType *)TYPE_STORED {
  return OrgApacheLuceneDocumentStringField_TYPE_STORED;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored {
  OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(self, name, value, stored);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored {
  OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(self, name, value, stored);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentStringField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentStringField_TYPE_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED setTokenizedWithBoolean:false];
      [OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED freeze];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setStoredWithBoolean:true];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED setTokenizedWithBoolean:false];
      [OrgApacheLuceneDocumentStringField_TYPE_STORED freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentStringField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withOrgApacheLuceneDocumentField_Store:", "StringField", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneDocumentField_Store:", "StringField", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_NOT_STORED", "TYPE_NOT_STORED", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED, NULL, .constantValue.asLong = 0 },
    { "TYPE_STORED", "TYPE_STORED", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneDocumentStringField_TYPE_STORED, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentStringField = { 2, "StringField", "org.apache.lucene.document", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneDocumentStringField;
}

@end

void OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentStringField *self, NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *stored) {
  OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(self, name, value, stored == JreLoadEnum(OrgApacheLuceneDocumentField_Store, YES) ? OrgApacheLuceneDocumentStringField_TYPE_STORED : OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED);
}

OrgApacheLuceneDocumentStringField *new_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

OrgApacheLuceneDocumentStringField *create_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

void OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentStringField *self, NSString *name, OrgApacheLuceneUtilBytesRef *value, OrgApacheLuceneDocumentField_Store *stored) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(self, name, value, stored == JreLoadEnum(OrgApacheLuceneDocumentField_Store, YES) ? OrgApacheLuceneDocumentStringField_TYPE_STORED : OrgApacheLuceneDocumentStringField_TYPE_NOT_STORED);
}

OrgApacheLuceneDocumentStringField *new_OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(NSString *name, OrgApacheLuceneUtilBytesRef *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

OrgApacheLuceneDocumentStringField *create_OrgApacheLuceneDocumentStringField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_(NSString *name, OrgApacheLuceneUtilBytesRef *value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentStringField, initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentStringField)
