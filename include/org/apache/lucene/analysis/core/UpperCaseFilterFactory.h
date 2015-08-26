//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/UpperCaseFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_) && (OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_INCLUDE 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisCoreUpperCaseFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCoreUpperCaseFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory *new_OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCoreUpperCaseFilterFactory_INCLUDE_ALL")