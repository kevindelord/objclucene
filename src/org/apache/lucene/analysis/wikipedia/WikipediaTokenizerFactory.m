//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/wikipedia/WikipediaTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Collections.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/analysis/wikipedia/WikipediaTokenizer.h"
#include "org/apache/lucene/analysis/wikipedia/WikipediaTokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@implementation OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  return create_OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withJavaUtilSet_(factory, OrgApacheLuceneAnalysisWikipediaWikipediaTokenizer_TOKENS_ONLY, JavaUtilCollections_emptySet());
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "WikipediaTokenizerFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneUtilAttributeFactory:", "create", "Lorg.apache.lucene.analysis.wikipedia.WikipediaTokenizer;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory = { 2, "WikipediaTokenizerFactory", "org.apache.lucene.analysis.wikipedia", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory *new_OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory *create_OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisWikipediaWikipediaTokenizerFactory)