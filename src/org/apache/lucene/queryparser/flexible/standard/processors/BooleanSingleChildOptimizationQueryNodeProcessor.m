//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/BooleanSingleChildOptimizationQueryNodeProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/BooleanModifierNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BooleanSingleChildOptimizationQueryNodeProcessor.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode class]]) {
    id<JavaUtilList> children = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) getChildren];
    if (children != nil && [children size] == 1) {
      id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> child = [children getWithInt:0];
      if ([child isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]]) {
        OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *modNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) cast_chk(child, [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]);
        if ([modNode isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode class]] || [((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) nil_chk(modNode)) getModifier] == JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier, MOD_NONE)) {
          return child;
        }
      }
      else {
        return child;
      }
    }
  }
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BooleanSingleChildOptimizationQueryNodeProcessor", NULL, 0x1, NULL, NULL },
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor = { 2, "BooleanSingleChildOptimizationQueryNodeProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor, init)
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor)