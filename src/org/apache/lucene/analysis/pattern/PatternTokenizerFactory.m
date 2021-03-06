//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/pattern/PatternTokenizer.h"
#include "org/apache/lucene/analysis/pattern/PatternTokenizerFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

NSString *OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN = @"pattern";
NSString *OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP = @"group";

@implementation OrgApacheLuceneAnalysisPatternPatternTokenizerFactory

+ (NSString *)PATTERN {
  return OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN;
}

+ (NSString *)GROUP {
  return OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisPatternPatternTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  return create_OrgApacheLuceneAnalysisPatternPatternTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withJavaUtilRegexPattern_withInt_(factory, pattern_, group_);
}

- (void)dealloc {
  RELEASE_(pattern_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "PatternTokenizerFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneUtilAttributeFactory:", "create", "Lorg.apache.lucene.analysis.pattern.PatternTokenizer;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PATTERN", "PATTERN", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN, NULL, .constantValue.asLong = 0 },
    { "GROUP", "GROUP", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP, NULL, .constantValue.asLong = 0 },
    { "pattern_", NULL, 0x14, "Ljava.util.regex.Pattern;", NULL, NULL, .constantValue.asLong = 0 },
    { "group_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPatternPatternTokenizerFactory = { 2, "PatternTokenizerFactory", "org.apache.lucene.analysis.pattern", NULL, 0x1, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPatternPatternTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->pattern_, [self getPatternWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_PATTERN]);
  self->group_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_GROUP withInt:-1];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisPatternPatternTokenizerFactory *new_OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisPatternPatternTokenizerFactory *create_OrgApacheLuceneAnalysisPatternPatternTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPatternPatternTokenizerFactory)
