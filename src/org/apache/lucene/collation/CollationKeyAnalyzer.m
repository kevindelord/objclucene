//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/collation/CollationKeyAnalyzer.java
//

#include "J2ObjC_source.h"
#include "java/text/Collator.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/core/KeywordTokenizer.h"
#include "org/apache/lucene/collation/CollationAttributeFactory.h"
#include "org/apache/lucene/collation/CollationKeyAnalyzer.h"

@interface OrgApacheLuceneCollationCollationKeyAnalyzer () {
 @public
  OrgApacheLuceneCollationCollationAttributeFactory *factory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCollationCollationKeyAnalyzer, factory_, OrgApacheLuceneCollationCollationAttributeFactory *)

@implementation OrgApacheLuceneCollationCollationKeyAnalyzer

- (instancetype)initWithJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(self, collator);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisCoreKeywordTokenizer *tokenizer = create_OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(factory_, OrgApacheLuceneAnalysisCoreKeywordTokenizer_DEFAULT_BUFFER_SIZE);
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(tokenizer, tokenizer);
}

- (void)dealloc {
  RELEASE_(factory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaTextCollator:", "CollationKeyAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "factory_", NULL, 0x12, "Lorg.apache.lucene.collation.CollationAttributeFactory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCollationCollationKeyAnalyzer = { 2, "CollationKeyAnalyzer", "org.apache.lucene.collation", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCollationCollationKeyAnalyzer;
}

@end

void OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(OrgApacheLuceneCollationCollationKeyAnalyzer *self, JavaTextCollator *collator) {
  OrgApacheLuceneAnalysisAnalyzer_init(self);
  JreStrongAssignAndConsume(&self->factory_, new_OrgApacheLuceneCollationCollationAttributeFactory_initWithJavaTextCollator_(collator));
}

OrgApacheLuceneCollationCollationKeyAnalyzer *new_OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCollationCollationKeyAnalyzer, initWithJavaTextCollator_, collator)
}

OrgApacheLuceneCollationCollationKeyAnalyzer *create_OrgApacheLuceneCollationCollationKeyAnalyzer_initWithJavaTextCollator_(JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCollationCollationKeyAnalyzer, initWithJavaTextCollator_, collator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCollationCollationKeyAnalyzer)
