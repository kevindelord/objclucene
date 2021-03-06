//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/RemoveDeletedQueryNodesProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/MatchNoDocsQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/RemoveDeletedQueryNodesProcessor.h"

@implementation OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree {
  queryTree = [super processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryTree];
  if ([queryTree isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode class]] && !([queryTree isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesMatchNoDocsQueryNode class]])) {
    return create_OrgApacheLuceneQueryparserFlexibleCoreNodesMatchNoDocsQueryNode_init();
  }
  return queryTree;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if (![((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(node)) isLeaf]) {
    id<JavaUtilList> children = [node getChildren];
    jboolean removeBoolean = false;
    if (children == nil || [children size] == 0) {
      removeBoolean = true;
    }
    else {
      removeBoolean = true;
      for (id<JavaUtilIterator> it = [children iterator]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
        if (!([[it next] isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode class]])) {
          removeBoolean = false;
          break;
        }
      }
    }
    if (removeBoolean) {
      return create_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init();
    }
  }
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(children)) size]; i++) {
    if ([[children getWithInt:i] isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode class]]) {
      [children removeWithInt:i--];
    }
  }
  return children;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RemoveDeletedQueryNodesProcessor", NULL, 0x1, NULL, NULL },
    { "processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "process", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor = { 2, "RemoveDeletedQueryNodesProcessor", "org.apache.lucene.queryparser.flexible.core.processors", NULL, 0x1, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init(OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor, init)
}

OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor *create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor)
