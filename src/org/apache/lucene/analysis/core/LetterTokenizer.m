//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LetterTokenizer.java
//

#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "org/apache/lucene/analysis/core/LetterTokenizer.h"
#include "org/apache/lucene/analysis/util/CharTokenizer.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@implementation OrgApacheLuceneAnalysisCoreLetterTokenizer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCoreLetterTokenizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneAnalysisCoreLetterTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

- (jboolean)isTokenCharWithInt:(jint)c {
  return JavaLangCharacter_isLetterWithInt_(c);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LetterTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:", "LetterTokenizer", NULL, 0x1, NULL, NULL },
    { "isTokenCharWithInt:", "isTokenChar", "Z", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreLetterTokenizer = { 2, "LetterTokenizer", "org.apache.lucene.analysis.core", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCoreLetterTokenizer;
}

@end

void OrgApacheLuceneAnalysisCoreLetterTokenizer_init(OrgApacheLuceneAnalysisCoreLetterTokenizer *self) {
  OrgApacheLuceneAnalysisUtilCharTokenizer_init(self);
}

OrgApacheLuceneAnalysisCoreLetterTokenizer *new_OrgApacheLuceneAnalysisCoreLetterTokenizer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreLetterTokenizer, init)
}

OrgApacheLuceneAnalysisCoreLetterTokenizer *create_OrgApacheLuceneAnalysisCoreLetterTokenizer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreLetterTokenizer, init)
}

void OrgApacheLuceneAnalysisCoreLetterTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisCoreLetterTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory) {
  OrgApacheLuceneAnalysisUtilCharTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
}

OrgApacheLuceneAnalysisCoreLetterTokenizer *new_OrgApacheLuceneAnalysisCoreLetterTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreLetterTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_, factory)
}

OrgApacheLuceneAnalysisCoreLetterTokenizer *create_OrgApacheLuceneAnalysisCoreLetterTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreLetterTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_, factory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreLetterTokenizer)
