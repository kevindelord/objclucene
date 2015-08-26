//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/es/SpanishLightStemFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/es/SpanishLightStemFilter.h"
#include "org/apache/lucene/analysis/es/SpanishLightStemFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@implementation OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return [new_OrgApacheLuceneAnalysisEsSpanishLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "SpanishLightStemFilterFactory", NULL, 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory = { 2, "SpanishLightStemFilterFactory", "org.apache.lucene.analysis.es", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory;
}

@end

void OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory *new_OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory *self = [OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory alloc];
  OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisEsSpanishLightStemFilterFactory)