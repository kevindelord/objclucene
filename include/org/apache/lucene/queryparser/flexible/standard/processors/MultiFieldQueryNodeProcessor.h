//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/MultiFieldQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_) && (OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_

#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (void)processChildrenWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_INCLUDE_ALL")