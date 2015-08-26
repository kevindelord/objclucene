//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/BooleanQuery2ModifierNodeProcessor.java
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
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/StandardQueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/BooleanModifierNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BooleanQuery2ModifierNodeProcessor.h"

@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor () {
 @public
  JavaUtilArrayList *childrenBuffer_;
  JavaLangBoolean *usingAnd_;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
                                                    withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *)mod;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor, childrenBuffer_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor, usingAnd_, JavaLangBoolean *)

__attribute__((unused)) static id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> queryTree);

__attribute__((unused)) static id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *mod);

NSString *OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_REMOVE_ = @"remove";
NSString *OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_MODIFIER_ = @"wrapWithModifier";
NSString *OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_BOOLEAN_ROOT_ = @"booleanRoot";

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_init(self);
  return self;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree {
  OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_OperatorEnum *op = [((OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *) nil_chk([self getQueryConfigHandler])) getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, DEFAULT_OPERATOR_)];
  if (op == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"StandardQueryConfigHandler.ConfigurationKeys.DEFAULT_OPERATOR should be set on the QueryConfigHandler") autorelease];
  }
  JreStrongAssign(&self->usingAnd_, JavaLangBoolean_valueOfWithBoolean_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_OperatorEnum, AND) == op));
  return OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, queryTree);
}

- (void)processChildrenWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree {
  id<JavaUtilList> children = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(queryTree)) getChildren];
  if (children != nil && [children size] > 0) {
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in children) {
      child = OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, child);
    }
  }
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree {
  return OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(self, queryTree);
}

- (void)fillChildrenBufferAndApplyModifieryWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)parent {
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong node in nil_chk([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(parent)) getChildren])) {
    if ([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) containsTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_REMOVE_]) {
      [self fillChildrenBufferAndApplyModifieryWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:node];
    }
    else if ([node containsTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_MODIFIER_]) {
      [((JavaUtilArrayList *) nil_chk(childrenBuffer_)) addWithId:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(self, node, (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *) check_class_cast([node getTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_MODIFIER_], [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum class]))];
    }
    else {
      [((JavaUtilArrayList *) nil_chk(childrenBuffer_)) addWithId:node];
    }
  }
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) containsTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_BOOLEAN_ROOT_]) {
    [((JavaUtilArrayList *) nil_chk(self->childrenBuffer_)) clear];
    [self fillChildrenBufferAndApplyModifieryWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:node];
    [node setWithJavaUtilList:childrenBuffer_];
  }
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> parent = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) getParent];
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode class]]) {
    if ([parent isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode class]]) {
      [node setTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_REMOVE_ withId:JreLoadStatic(JavaLangBoolean, TRUE__)];
    }
    else {
      [node setTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_BOOLEAN_ROOT_ withId:JreLoadStatic(JavaLangBoolean, TRUE__)];
    }
  }
  else if ([parent isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode class]]) {
    if (([parent isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode class]]) || ([((JavaLangBoolean *) nil_chk(usingAnd_)) booleanValue] && [self isDefaultBooleanQueryNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:parent])) {
      [self tagModifierButDoNotOverrideWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:node withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum, MOD_REQ)];
    }
  }
  return node;
}

- (jboolean)isDefaultBooleanQueryNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)toTest {
  return toTest != nil && [OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_class_() isEqual:[toTest getClass]];
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
                                                    withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *)mod {
  return OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(self, node, mod);
}

- (void)tagModifierButDoNotOverrideWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node
              withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *)mod {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]]) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *modNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) check_class_cast(node, [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]);
    if ([((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) nil_chk(modNode)) getModifier] == JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum, MOD_NONE)) {
      [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) setTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_MODIFIER_ withId:mod];
    }
  }
  else {
    [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) setTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_MODIFIER_ withId:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum, MOD_REQ)];
  }
}

- (void)setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler {
  JreStrongAssign(&self->queryConfigHandler_, queryConfigHandler);
}

- (OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)getQueryConfigHandler {
  return queryConfigHandler_;
}

- (void)dealloc {
  RELEASE_(queryConfigHandler_);
  RELEASE_(childrenBuffer_);
  RELEASE_(usingAnd_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BooleanQuery2ModifierNodeProcessor", NULL, 0x1, NULL, NULL },
    { "processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "process", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "processChildrenWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "processChildren", "V", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "processIteration", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x2, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "fillChildrenBufferAndApplyModifieryWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "fillChildrenBufferAndApplyModifiery", "V", 0x4, NULL, NULL },
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "isDefaultBooleanQueryNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "isDefaultBooleanQueryNode", "Z", 0x4, NULL, NULL },
    { "applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:", "applyModifier", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x2, NULL, NULL },
    { "tagModifierButDoNotOverrideWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum:", "tagModifierButDoNotOverride", "V", 0x4, NULL, NULL },
    { "setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:", "setQueryConfigHandler", "V", 0x1, NULL, NULL },
    { "getQueryConfigHandler", NULL, "Lorg.apache.lucene.queryparser.flexible.core.config.QueryConfigHandler;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_REMOVE_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_REMOVE_, NULL, .constantValue.asLong = 0 },
    { "TAG_MODIFIER_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_MODIFIER_, NULL, .constantValue.asLong = 0 },
    { "TAG_BOOLEAN_ROOT_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_TAG_BOOLEAN_ROOT_, NULL, .constantValue.asLong = 0 },
    { "queryConfigHandler_", NULL, 0x0, "Lorg.apache.lucene.queryparser.flexible.core.config.QueryConfigHandler;", NULL, NULL, .constantValue.asLong = 0 },
    { "childrenBuffer_", NULL, 0x12, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;", .constantValue.asLong = 0 },
    { "usingAnd_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor = { 2, "BooleanQuery2ModifierNodeProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 12, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->childrenBuffer_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->usingAnd_, JavaLangBoolean_valueOfWithBoolean_(NO));
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_init() {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor *self = [OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor alloc];
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_init(self);
  return self;
}

id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_processIterationWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> queryTree) {
  queryTree = [self preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
  [self processChildrenWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
  queryTree = [self postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
  return queryTree;
}

id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_applyModifierWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor *self, id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node, OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum *mod) {
  if (!([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]])) {
    return [new_OrgApacheLuceneQueryparserFlexibleStandardNodesBooleanModifierNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_(node, mod) autorelease];
  }
  else {
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *modNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) check_class_cast(node, [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]);
    if ([((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) nil_chk(modNode)) getModifier] == JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum, MOD_NONE)) {
      return [new_OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_withOrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_ModifierEnum_([modNode getChild], mod) autorelease];
    }
  }
  return node;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor)