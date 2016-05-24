//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/BooleanModifierNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode))
#define OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.h"

@class OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief A <code>BooleanModifierNode</code> has the same behaviour as
 <code>ModifierQueryNode</code>, it only indicates that this modifier was added by
 <code>GroupQueryNodeProcessor</code> and not by the user.
 - seealso: ModifierQueryNode
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode : OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
   withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier:(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *)mod;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *mod);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *mod) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode *create_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *mod);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode")