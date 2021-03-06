//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/TrimFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/Lucene43TrimFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/TrimFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/TrimFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory () {
 @public
  jboolean updateOffsets_;
}

@end

@implementation OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)]) {
    return create_OrgApacheLuceneAnalysisMiscellaneousTrimFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
  }
  else {
    OrgApacheLuceneAnalysisMiscellaneousLucene43TrimFilter *filter = create_OrgApacheLuceneAnalysisMiscellaneousLucene43TrimFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(input, updateOffsets_);
    return filter;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "TrimFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "updateOffsets_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory = { 2, "TrimFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(self->luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_5_0_0)] == false) {
    self->updateOffsets_ = [self getBooleanWithJavaUtilMap:args withNSString:@"updateOffsets" withBoolean:false];
    if (self->updateOffsets_ && [self->luceneMatchVersion_ onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0)]) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"updateOffsets=true is not supported anymore as of Lucene 4.4");
    }
  }
  else if ([((id<JavaUtilMap>) nil_chk(args)) containsKeyWithId:@"updateOffsets"]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"updateOffsets is not a valid option as of Lucene 5.0");
  }
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousTrimFilterFactory)
