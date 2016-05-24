//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/DocumentStoredFieldVisitor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/DocumentStoredFieldVisitor.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/StoredField.h"
#include "org/apache/lucene/document/TextField.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneDocumentDocumentStoredFieldVisitor () {
 @public
  OrgApacheLuceneDocumentDocument *doc_;
  id<JavaUtilSet> fieldsToAdd_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, doc_, OrgApacheLuceneDocumentDocument *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, fieldsToAdd_, id<JavaUtilSet>)

@implementation OrgApacheLuceneDocumentDocumentStoredFieldVisitor

- (instancetype)initWithJavaUtilSet:(id<JavaUtilSet>)fieldsToAdd {
  OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(self, fieldsToAdd);
  return self;
}

- (instancetype)initWithNSStringArray:(IOSObjectArray *)fields {
  OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithNSStringArray_(self, fields);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                       withByteArray:(IOSByteArray *)value {
  [((OrgApacheLuceneDocumentDocument *) nil_chk(doc_)) addWithOrgApacheLuceneIndexIndexableField:create_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_, value)];
}

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                       withByteArray:(IOSByteArray *)value {
  OrgApacheLuceneDocumentFieldType *ft = create_OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(JreLoadStatic(OrgApacheLuceneDocumentTextField, TYPE_STORED));
  [ft setStoreTermVectorsWithBoolean:[((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo)) hasVectors]];
  [ft setOmitNormsWithBoolean:[fieldInfo omitsNorms]];
  [ft setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:[fieldInfo getIndexOptions]];
  [((OrgApacheLuceneDocumentDocument *) nil_chk(doc_)) addWithOrgApacheLuceneIndexIndexableField:create_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(fieldInfo->name_, [NSString stringWithBytes:value charset:JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8)], ft)];
}

- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withInt:(jint)value {
  [((OrgApacheLuceneDocumentDocument *) nil_chk(doc_)) addWithOrgApacheLuceneIndexIndexableField:create_OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_, value)];
}

- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withLong:(jlong)value {
  [((OrgApacheLuceneDocumentDocument *) nil_chk(doc_)) addWithOrgApacheLuceneIndexIndexableField:create_OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_, value)];
}

- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withFloat:(jfloat)value {
  [((OrgApacheLuceneDocumentDocument *) nil_chk(doc_)) addWithOrgApacheLuceneIndexIndexableField:create_OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_, value)];
}

- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withDouble:(jdouble)value {
  [((OrgApacheLuceneDocumentDocument *) nil_chk(doc_)) addWithOrgApacheLuceneIndexIndexableField:create_OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_, value)];
}

- (OrgApacheLuceneIndexStoredFieldVisitor_Status *)needsFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  return fieldsToAdd_ == nil || [fieldsToAdd_ containsWithId:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_] ? JreLoadEnum(OrgApacheLuceneIndexStoredFieldVisitor_Status, YES) : JreLoadEnum(OrgApacheLuceneIndexStoredFieldVisitor_Status, NO);
}

- (OrgApacheLuceneDocumentDocument *)getDocument {
  return doc_;
}

- (void)dealloc {
  RELEASE_(doc_);
  RELEASE_(fieldsToAdd_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilSet:", "DocumentStoredFieldVisitor", NULL, 0x1, NULL, "(Ljava/util/Set<Ljava/lang/String;>;)V" },
    { "initWithNSStringArray:", "DocumentStoredFieldVisitor", NULL, 0x81, NULL, NULL },
    { "init", "DocumentStoredFieldVisitor", NULL, 0x1, NULL, NULL },
    { "binaryFieldWithOrgApacheLuceneIndexFieldInfo:withByteArray:", "binaryField", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "stringFieldWithOrgApacheLuceneIndexFieldInfo:withByteArray:", "stringField", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "intFieldWithOrgApacheLuceneIndexFieldInfo:withInt:", "intField", "V", 0x1, NULL, NULL },
    { "longFieldWithOrgApacheLuceneIndexFieldInfo:withLong:", "longField", "V", 0x1, NULL, NULL },
    { "floatFieldWithOrgApacheLuceneIndexFieldInfo:withFloat:", "floatField", "V", 0x1, NULL, NULL },
    { "doubleFieldWithOrgApacheLuceneIndexFieldInfo:withDouble:", "doubleField", "V", 0x1, NULL, NULL },
    { "needsFieldWithOrgApacheLuceneIndexFieldInfo:", "needsField", "Lorg.apache.lucene.index.StoredFieldVisitor$Status;", 0x1, "Ljava.io.IOException;", NULL },
    { "getDocument", NULL, "Lorg.apache.lucene.document.Document;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "doc_", NULL, 0x12, "Lorg.apache.lucene.document.Document;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldsToAdd_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Ljava/lang/String;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentDocumentStoredFieldVisitor = { 2, "DocumentStoredFieldVisitor", "org.apache.lucene.document", NULL, 0x1, 11, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneDocumentDocumentStoredFieldVisitor;
}

@end

void OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(OrgApacheLuceneDocumentDocumentStoredFieldVisitor *self, id<JavaUtilSet> fieldsToAdd) {
  OrgApacheLuceneIndexStoredFieldVisitor_init(self);
  JreStrongAssignAndConsume(&self->doc_, new_OrgApacheLuceneDocumentDocument_init());
  JreStrongAssign(&self->fieldsToAdd_, fieldsToAdd);
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(id<JavaUtilSet> fieldsToAdd) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, initWithJavaUtilSet_, fieldsToAdd)
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *create_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(id<JavaUtilSet> fieldsToAdd) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, initWithJavaUtilSet_, fieldsToAdd)
}

void OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithNSStringArray_(OrgApacheLuceneDocumentDocumentStoredFieldVisitor *self, IOSObjectArray *fields) {
  OrgApacheLuceneIndexStoredFieldVisitor_init(self);
  JreStrongAssignAndConsume(&self->doc_, new_OrgApacheLuceneDocumentDocument_init());
  JreStrongAssignAndConsume(&self->fieldsToAdd_, new_JavaUtilHashSet_initWithInt_(((IOSObjectArray *) nil_chk(fields))->size_));
  {
    IOSObjectArray *a__ = fields;
    NSString * const *b__ = a__->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *field = *b__++;
      [self->fieldsToAdd_ addWithId:field];
    }
  }
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithNSStringArray_(IOSObjectArray *fields) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, initWithNSStringArray_, fields)
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *create_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithNSStringArray_(IOSObjectArray *fields) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, initWithNSStringArray_, fields)
}

void OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init(OrgApacheLuceneDocumentDocumentStoredFieldVisitor *self) {
  OrgApacheLuceneIndexStoredFieldVisitor_init(self);
  JreStrongAssignAndConsume(&self->doc_, new_OrgApacheLuceneDocumentDocument_init());
  JreStrongAssign(&self->fieldsToAdd_, nil);
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, init)
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *create_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentDocumentStoredFieldVisitor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentDocumentStoredFieldVisitor)