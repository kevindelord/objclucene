//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/AnalyzerQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_) && (OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_

#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_INCLUDE_ALL")