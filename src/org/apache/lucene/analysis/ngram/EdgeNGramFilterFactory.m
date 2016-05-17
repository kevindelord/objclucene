//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/EdgeNGramFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/ngram/EdgeNGramFilterFactory.h"
#include "org/apache/lucene/analysis/ngram/EdgeNGramTokenFilter.h"
#include "org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenFilter.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory () {
 @public
  jint maxGramSize_;
  jint minGramSize_;
}

@end

@implementation OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)]) {
    return create_OrgApacheLuceneAnalysisNgramEdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(input, minGramSize_, maxGramSize_);
  }
  return create_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(input, minGramSize_, maxGramSize_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "EdgeNGramFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maxGramSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minGramSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory = { 2, "EdgeNGramFilterFactory", "org.apache.lucene.analysis.ngram", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory;
}

@end

void OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  self->minGramSize_ = [self getIntWithJavaUtilMap:args withNSString:@"minGramSize" withInt:OrgApacheLuceneAnalysisNgramEdgeNGramTokenFilter_DEFAULT_MIN_GRAM_SIZE];
  self->maxGramSize_ = [self getIntWithJavaUtilMap:args withNSString:@"maxGramSize" withInt:OrgApacheLuceneAnalysisNgramEdgeNGramTokenFilter_DEFAULT_MAX_GRAM_SIZE];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory *new_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory *create_OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramEdgeNGramFilterFactory)
