//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SingleTermsEnum.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/FilteredTermsEnum.h"
#include "org/apache/lucene/index/SingleTermsEnum.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneIndexSingleTermsEnum () {
 @public
  OrgApacheLuceneUtilBytesRef *singleRef_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSingleTermsEnum, singleRef_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneIndexSingleTermsEnum

- (instancetype)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                      withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termText {
  OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(self, tenum, termText);
  return self;
}

- (OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus *)acceptWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term {
  return [((OrgApacheLuceneUtilBytesRef *) nil_chk(term)) isEqual:singleRef_] ? JreLoadEnum(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus, YES) : JreLoadEnum(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus, END);
}

- (void)dealloc {
  RELEASE_(singleRef_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTermsEnum:withOrgApacheLuceneUtilBytesRef:", "SingleTermsEnum", NULL, 0x1, NULL, NULL },
    { "acceptWithOrgApacheLuceneUtilBytesRef:", "accept", "Lorg.apache.lucene.index.FilteredTermsEnum$AcceptStatus;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "singleRef_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSingleTermsEnum = { 2, "SingleTermsEnum", "org.apache.lucene.index", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexSingleTermsEnum;
}

@end

void OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexSingleTermsEnum *self, OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRef *termText) {
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(self, tenum);
  JreStrongAssign(&self->singleRef_, termText);
  [self setInitialSeekTermWithOrgApacheLuceneUtilBytesRef:termText];
}

OrgApacheLuceneIndexSingleTermsEnum *new_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRef *termText) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSingleTermsEnum, initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_, tenum, termText)
}

OrgApacheLuceneIndexSingleTermsEnum *create_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRef *termText) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSingleTermsEnum, initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_, tenum, termText)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSingleTermsEnum)