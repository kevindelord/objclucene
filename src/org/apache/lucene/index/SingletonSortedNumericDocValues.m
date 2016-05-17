//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SingletonSortedNumericDocValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SingletonSortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/util/Bits.h"

@interface OrgApacheLuceneIndexSingletonSortedNumericDocValues () {
 @public
  OrgApacheLuceneIndexNumericDocValues *in_;
  id<OrgApacheLuceneUtilBits> docsWithField_;
  jlong value_;
  jint count_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSingletonSortedNumericDocValues, in_, OrgApacheLuceneIndexNumericDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSingletonSortedNumericDocValues, docsWithField_, id<OrgApacheLuceneUtilBits>)

@implementation OrgApacheLuceneIndexSingletonSortedNumericDocValues

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)inArg
                                 withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithField {
  OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(self, inArg, docsWithField);
  return self;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValues {
  return in_;
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithField {
  return docsWithField_;
}

- (void)setDocumentWithInt:(jint)doc {
  value_ = [((OrgApacheLuceneIndexNumericDocValues *) nil_chk(in_)) getWithInt:doc];
  if (docsWithField_ != nil && value_ == 0 && [docsWithField_ getWithInt:doc] == false) {
    count_ = 0;
  }
  else {
    count_ = 1;
  }
}

- (jlong)valueAtWithInt:(jint)index {
  return value_;
}

- (jint)count {
  return count_;
}

- (void)dealloc {
  RELEASE_(in_);
  RELEASE_(docsWithField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexNumericDocValues:withOrgApacheLuceneUtilBits:", "SingletonSortedNumericDocValues", NULL, 0x1, NULL, NULL },
    { "getNumericDocValues", NULL, "Lorg.apache.lucene.index.NumericDocValues;", 0x1, NULL, NULL },
    { "getDocsWithField", NULL, "Lorg.apache.lucene.util.Bits;", 0x1, NULL, NULL },
    { "setDocumentWithInt:", "setDocument", "V", 0x1, NULL, NULL },
    { "valueAtWithInt:", "valueAt", "J", 0x1, NULL, NULL },
    { "count", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x12, "Lorg.apache.lucene.index.NumericDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "docsWithField_", NULL, 0x12, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSingletonSortedNumericDocValues = { 2, "SingletonSortedNumericDocValues", "org.apache.lucene.index", NULL, 0x10, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexSingletonSortedNumericDocValues;
}

@end

void OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSingletonSortedNumericDocValues *self, OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField) {
  OrgApacheLuceneIndexSortedNumericDocValues_init(self);
  JreStrongAssign(&self->in_, inArg);
  JreStrongAssign(&self->docsWithField_, [docsWithField isKindOfClass:[OrgApacheLuceneUtilBits_MatchAllBits class]] ? nil : docsWithField);
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSingletonSortedNumericDocValues, initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_, inArg, docsWithField)
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *create_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSingletonSortedNumericDocValues, initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_, inArg, docsWithField)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSingletonSortedNumericDocValues)
