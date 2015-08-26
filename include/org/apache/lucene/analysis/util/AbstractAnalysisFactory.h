//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/AbstractAnalysisFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_RESTRICT
#define OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_) && (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_

@class JavaUtilRegexPattern;
@class OrgApacheLuceneAnalysisUtilCharArraySet;
@class OrgApacheLuceneUtilVersion;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

@interface OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory : NSObject {
 @public
  OrgApacheLuceneUtilVersion *luceneMatchVersion_;
}

#pragma mark Public

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name;

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues;

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal;

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal
                     withBoolean:(jboolean)caseSensitive;

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
                    withNSString:(NSString *)defaultVal;

- (jchar)getCharWithJavaUtilMap:(id<JavaUtilMap>)args
                   withNSString:(NSString *)name
                       withChar:(jchar)defaultValue;

- (NSString *)getClassArg;

- (OrgApacheLuceneUtilVersion *)getLuceneMatchVersion;

- (id<JavaUtilMap>)getOriginalArgs;

- (id<JavaUtilSet>)getSetWithJavaUtilMap:(id<JavaUtilMap>)args
                            withNSString:(NSString *)name;

- (jboolean)isExplicitLuceneMatchVersion;

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name;

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues;

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                         withBoolean:(jboolean)caseSensitive;

- (jchar)requireCharWithJavaUtilMap:(id<JavaUtilMap>)args
                       withNSString:(NSString *)name;

- (void)setExplicitLuceneMatchVersionWithBoolean:(jboolean)isExplicitLuceneMatchVersion;

#pragma mark Protected

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (jboolean)getBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name
                          withBoolean:(jboolean)defaultVal;

- (jfloat)getFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name
                        withFloat:(jfloat)defaultVal;

- (jint)getIntWithJavaUtilMap:(id<JavaUtilMap>)args
                 withNSString:(NSString *)name
                      withInt:(jint)defaultVal;

- (id<JavaUtilList>)getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                             withNSString:(NSString *)resource;

- (JavaUtilRegexPattern *)getPatternWithJavaUtilMap:(id<JavaUtilMap>)args
                                       withNSString:(NSString *)name;

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                                withNSString:(NSString *)wordFiles
                                                                                                 withBoolean:(jboolean)ignoreCase;

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                        withNSString:(NSString *)wordFiles
                                                                                         withBoolean:(jboolean)ignoreCase;

- (jboolean)requireBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                             withNSString:(NSString *)name;

- (jfloat)requireFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name;

- (jint)requireIntWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name;

- (id<JavaUtilList>)splitFileNamesWithNSString:(NSString *)fileNames;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, luceneMatchVersion_, OrgApacheLuceneUtilVersion *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, LUCENE_MATCH_VERSION_PARAM_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE_ALL")