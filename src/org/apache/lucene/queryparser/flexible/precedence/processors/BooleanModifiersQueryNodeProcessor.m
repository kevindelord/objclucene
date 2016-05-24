//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/precedence/processors/BooleanModifiersQueryNodeProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/AndQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/OrQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/precedence/processors/BooleanModifiersQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/StandardQueryConfigHandler.h"

@interface OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor () {
 @public
  JavaUtilArrayList *childrenBuffer_;
  JavaLangBoolean *usingAnd_;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
                                                        withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier:(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *)mod;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor, childrenBuffer_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor, usingAnd_, JavaLangBoolean *)

__attribute__((unused)) static id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *mod);

@implementation OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree {
  OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator *op = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, DEFAULT_OPERATOR)];
  if (op == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"StandardQueryConfigHandler.ConfigurationKeys.DEFAULT_OPERATOR should be set on the QueryConfigHandler");
  }
  JreStrongAssign(&self->usingAnd_, JavaLangBoolean_valueOfWithBoolean_(JreLoadEnum(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_Operator, AND) == op));
  return [super processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode class]]) {
    [((JavaUtilArrayList *) nil_chk(self->childrenBuffer_)) clear];
    id<JavaUtilList> children = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) getChildren];
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk(children)) {
      [((JavaUtilArrayList *) nil_chk(self->childrenBuffer_)) addWithId:OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(self, child, JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier, MOD_REQ))];
    }
    [node setWithJavaUtilList:self->childrenBuffer_];
  }
  else if ([((JavaLangBoolean *) nil_chk(self->usingAnd_)) booleanValue] && [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode class]] && !([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesOrQueryNode class]])) {
    [((JavaUtilArrayList *) nil_chk(self->childrenBuffer_)) clear];
    id<JavaUtilList> children = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) getChildren];
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk(children)) {
      [((JavaUtilArrayList *) nil_chk(self->childrenBuffer_)) addWithId:OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(self, child, JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier, MOD_REQ))];
    }
    [node setWithJavaUtilList:self->childrenBuffer_];
  }
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
                                                        withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier:(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *)mod {
  return OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(self, node, mod);
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

- (void)dealloc {
  RELEASE_(childrenBuffer_);
  RELEASE_(usingAnd_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BooleanModifiersQueryNodeProcessor", NULL, 0x1, NULL, NULL },
    { "processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "process", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier:", "applyModifier", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x2, NULL, NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "childrenBuffer_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;", .constantValue.asLong = 0 },
    { "usingAnd_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor = { 2, "BooleanModifiersQueryNodeProcessor", "org.apache.lucene.queryparser.flexible.precedence.processors", NULL, 0x1, 6, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
  JreStrongAssignAndConsume(&self->childrenBuffer_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->usingAnd_, JavaLangBoolean_valueOfWithBoolean_(false));
}

OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor, init)
}

OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor, init)
}

id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *mod) {
  if (!([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]])) {
    return create_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_(node, mod);
  }
  else {
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *modNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) cast_chk(node, [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]);
    if ([((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) nil_chk(modNode)) getModifier] == JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier, MOD_NONE)) {
      return create_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier_([modNode getChild], mod);
    }
  }
  return node;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor)