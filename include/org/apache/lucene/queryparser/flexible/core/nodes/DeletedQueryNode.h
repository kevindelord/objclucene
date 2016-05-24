//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>DeletedQueryNode</code> represents a node that was deleted from the query
 node tree.
 It can be removed from the tree using the
 <code>RemoveDeletedQueryNodesProcessor</code> processor.
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode")