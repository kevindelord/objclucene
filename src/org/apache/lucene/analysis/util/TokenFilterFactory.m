//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/TokenFilterFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassLoader.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/AnalysisSPILoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

inline OrgApacheLuceneAnalysisUtilAnalysisSPILoader *OrgApacheLuceneAnalysisUtilTokenFilterFactory_get_loader();
static OrgApacheLuceneAnalysisUtilAnalysisSPILoader *OrgApacheLuceneAnalysisUtilTokenFilterFactory_loader;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisUtilTokenFilterFactory, loader, OrgApacheLuceneAnalysisUtilAnalysisSPILoader *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisUtilTokenFilterFactory)

@implementation OrgApacheLuceneAnalysisUtilTokenFilterFactory

+ (OrgApacheLuceneAnalysisUtilTokenFilterFactory *)forNameWithNSString:(NSString *)name
                                                       withJavaUtilMap:(id<JavaUtilMap>)args {
  return OrgApacheLuceneAnalysisUtilTokenFilterFactory_forNameWithNSString_withJavaUtilMap_(name, args);
}

+ (IOSClass *)lookupClassWithNSString:(NSString *)name {
  return OrgApacheLuceneAnalysisUtilTokenFilterFactory_lookupClassWithNSString_(name);
}

+ (id<JavaUtilSet>)availableTokenFilters {
  return OrgApacheLuceneAnalysisUtilTokenFilterFactory_availableTokenFilters();
}

+ (void)reloadTokenFiltersWithJavaLangClassLoader:(JavaLangClassLoader *)classloader {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_reloadTokenFiltersWithJavaLangClassLoader_(classloader);
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisUtilTokenFilterFactory class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisUtilTokenFilterFactory_loader, new_OrgApacheLuceneAnalysisUtilAnalysisSPILoader_initWithIOSClass_withNSStringArray_(OrgApacheLuceneAnalysisUtilTokenFilterFactory_class_(), [IOSObjectArray arrayWithObjects:(id[]){ @"TokenFilterFactory", @"FilterFactory" } count:2 type:NSString_class_()]));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisUtilTokenFilterFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "forNameWithNSString:withJavaUtilMap:", "forName", "Lorg.apache.lucene.analysis.util.TokenFilterFactory;", 0x9, NULL, "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lorg/apache/lucene/analysis/util/TokenFilterFactory;" },
    { "lookupClassWithNSString:", "lookupClass", "Ljava.lang.Class;", 0x9, NULL, "(Ljava/lang/String;)Ljava/lang/Class<+Lorg/apache/lucene/analysis/util/TokenFilterFactory;>;" },
    { "availableTokenFilters", NULL, "Ljava.util.Set;", 0x9, NULL, "()Ljava/util/Set<Ljava/lang/String;>;" },
    { "reloadTokenFiltersWithJavaLangClassLoader:", "reloadTokenFilters", "V", 0x9, NULL, NULL },
    { "initWithJavaUtilMap:", "TokenFilterFactory", NULL, 0x4, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x401, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "loader", "loader", 0x1a, "Lorg.apache.lucene.analysis.util.AnalysisSPILoader;", &OrgApacheLuceneAnalysisUtilTokenFilterFactory_loader, "Lorg/apache/lucene/analysis/util/AnalysisSPILoader<Lorg/apache/lucene/analysis/util/TokenFilterFactory;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilTokenFilterFactory = { 2, "TokenFilterFactory", "org.apache.lucene.analysis.util", NULL, 0x401, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilTokenFilterFactory;
}

@end

OrgApacheLuceneAnalysisUtilTokenFilterFactory *OrgApacheLuceneAnalysisUtilTokenFilterFactory_forNameWithNSString_withJavaUtilMap_(NSString *name, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initialize();
  return [((OrgApacheLuceneAnalysisUtilAnalysisSPILoader *) nil_chk(OrgApacheLuceneAnalysisUtilTokenFilterFactory_loader)) newInstanceWithNSString:name withJavaUtilMap:args];
}

IOSClass *OrgApacheLuceneAnalysisUtilTokenFilterFactory_lookupClassWithNSString_(NSString *name) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initialize();
  return [((OrgApacheLuceneAnalysisUtilAnalysisSPILoader *) nil_chk(OrgApacheLuceneAnalysisUtilTokenFilterFactory_loader)) lookupClassWithNSString:name];
}

id<JavaUtilSet> OrgApacheLuceneAnalysisUtilTokenFilterFactory_availableTokenFilters() {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initialize();
  return [((OrgApacheLuceneAnalysisUtilAnalysisSPILoader *) nil_chk(OrgApacheLuceneAnalysisUtilTokenFilterFactory_loader)) availableServices];
}

void OrgApacheLuceneAnalysisUtilTokenFilterFactory_reloadTokenFiltersWithJavaLangClassLoader_(JavaLangClassLoader *classloader) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initialize();
  [((OrgApacheLuceneAnalysisUtilAnalysisSPILoader *) nil_chk(OrgApacheLuceneAnalysisUtilTokenFilterFactory_loader)) reloadWithJavaLangClassLoader:classloader];
}

void OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisUtilTokenFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(self, args);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilTokenFilterFactory)
