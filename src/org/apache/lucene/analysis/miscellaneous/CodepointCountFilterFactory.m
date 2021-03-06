//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/CodepointCountFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/CodepointCountFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/CodepointCountFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

NSString *OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MIN_KEY = @"min";
NSString *OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MAX_KEY = @"max";

@implementation OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory

+ (NSString *)MIN_KEY {
  return OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MIN_KEY;
}

+ (NSString *)MAX_KEY {
  return OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MAX_KEY;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(input, min_, max_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "CodepointCountFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.miscellaneous.CodepointCountFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "min_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "max_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "MIN_KEY", "MIN_KEY", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MIN_KEY, NULL, .constantValue.asLong = 0 },
    { "MAX_KEY", "MAX_KEY", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MAX_KEY, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory = { 2, "CodepointCountFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  self->min_ = [self requireIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MIN_KEY];
  self->max_ = [self requireIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_MAX_KEY];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilterFactory)
