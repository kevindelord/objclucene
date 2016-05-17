//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternReplaceCharFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/CharFilter.h"
#include "org/apache/lucene/analysis/pattern/PatternReplaceCharFilter.h"
#include "org/apache/lucene/analysis/pattern/PatternReplaceCharFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

@interface OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory () {
 @public
  JavaUtilRegexPattern *pattern_;
  NSString *replacement_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory, pattern_, JavaUtilRegexPattern *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory, replacement_, NSString *)

@implementation OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisCharFilter *)createWithJavaIoReader:(JavaIoReader *)input {
  return create_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_(pattern_, replacement_, input);
}

- (void)dealloc {
  RELEASE_(pattern_);
  RELEASE_(replacement_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "PatternReplaceCharFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithJavaIoReader:", "create", "Lorg.apache.lucene.analysis.CharFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pattern_", NULL, 0x12, "Ljava.util.regex.Pattern;", NULL, NULL, .constantValue.asLong = 0 },
    { "replacement_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory = { 2, "PatternReplaceCharFilterFactory", "org.apache.lucene.analysis.pattern", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory;
}

@end

void OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilCharFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->pattern_, [self getPatternWithJavaUtilMap:args withNSString:@"pattern"]);
  JreStrongAssign(&self->replacement_, [self getWithJavaUtilMap:args withNSString:@"replacement" withNSString:@""]);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory *new_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory *create_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilterFactory)
