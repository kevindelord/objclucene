//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/path/PathHierarchyTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/path/PathHierarchyTokenizer.h"
#include "org/apache/lucene/analysis/path/PathHierarchyTokenizerFactory.h"
#include "org/apache/lucene/analysis/path/ReversePathHierarchyTokenizer.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@interface OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory () {
 @public
  jchar delimiter_;
  jchar replacement_;
  jboolean reverse_;
  jint skip_;
}

@end

@implementation OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  if (reverse_) {
    return create_OrgApacheLuceneAnalysisPathReversePathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withChar_withChar_withInt_(factory, delimiter_, replacement_, skip_);
  }
  return create_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withChar_withChar_withInt_(factory, delimiter_, replacement_, skip_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "PathHierarchyTokenizerFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneUtilAttributeFactory:", "create", "Lorg.apache.lucene.analysis.Tokenizer;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delimiter_", NULL, 0x12, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "replacement_", NULL, 0x12, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "reverse_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "skip_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory = { 2, "PathHierarchyTokenizerFactory", "org.apache.lucene.analysis.path", NULL, 0x1, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  self->delimiter_ = [self getCharWithJavaUtilMap:args withNSString:@"delimiter" withChar:OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_DELIMITER];
  self->replacement_ = [self getCharWithJavaUtilMap:args withNSString:@"replace" withChar:self->delimiter_];
  self->reverse_ = [self getBooleanWithJavaUtilMap:args withNSString:@"reverse" withBoolean:false];
  self->skip_ = [self getIntWithJavaUtilMap:args withNSString:@"skip" withInt:OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_SKIP];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory *create_OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPathPathHierarchyTokenizerFactory)
