//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/RemoveEmptyNonLeafQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This processor removes every <code>QueryNode</code> that is not a leaf and has not
 children.
 If after processing the entire tree the root node is not a leaf and
 has no children, a <code>MatchNoDocsQueryNode</code> object is returned.
 <br>
 This processor is used at the end of a pipeline to avoid invalid query node
 tree structures like a <code>GroupQueryNode</code> or <code>ModifierQueryNode</code>
 with no children.
 - seealso: QueryNode
 - seealso: MatchNoDocsQueryNode
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor")