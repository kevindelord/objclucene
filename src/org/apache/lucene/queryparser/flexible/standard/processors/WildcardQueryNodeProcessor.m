//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/WildcardQueryNodeProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FuzzyQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QuotedFieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/PrefixWildcardQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/TermRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/WildcardQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/WildcardQueryNodeProcessor.h"

@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor ()

- (jboolean)isWildcardWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (jboolean)isPrefixWildcardWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

@end

__attribute__((unused)) static jboolean OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isWildcardWithJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor *self, id<JavaLangCharSequence> text);

__attribute__((unused)) static jboolean OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isPrefixWildcardWithJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor *self, id<JavaLangCharSequence> text);

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]] || [node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode class]]) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *fqn = (OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) cast_chk(node, [OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]);
    id<JavaLangCharSequence> text = [((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(fqn)) getText];
    if ([[fqn getParent] isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode class]] || [fqn isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode class]] || [((id<JavaLangCharSequence>) nil_chk(text)) length] <= 0) {
      return node;
    }
    if (OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isPrefixWildcardWithJavaLangCharSequence_(self, text)) {
      OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *prefixWildcardQN = create_OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_(fqn);
      return prefixWildcardQN;
    }
    else if (OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isWildcardWithJavaLangCharSequence_(self, text)) {
      OrgApacheLuceneQueryparserFlexibleStandardNodesWildcardQueryNode *wildcardQN = create_OrgApacheLuceneQueryparserFlexibleStandardNodesWildcardQueryNode_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_(fqn);
      return wildcardQN;
    }
  }
  return node;
}

- (jboolean)isWildcardWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  return OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isWildcardWithJavaLangCharSequence_(self, text);
}

- (jboolean)isPrefixWildcardWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  return OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isPrefixWildcardWithJavaLangCharSequence_(self, text);
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "WildcardQueryNodeProcessor", NULL, 0x1, NULL, NULL },
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "isWildcardWithJavaLangCharSequence:", "isWildcard", "Z", 0x2, NULL, NULL },
    { "isPrefixWildcardWithJavaLangCharSequence:", "isPrefixWildcard", "Z", 0x2, NULL, NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor = { 2, "WildcardQueryNodeProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor, init)
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor, init)
}

jboolean OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isWildcardWithJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor *self, id<JavaLangCharSequence> text) {
  if (text == nil || [text length] <= 0) return false;
  for (jint i = [text length] - 1; i >= 0; i--) {
    if (([text charAtWithInt:i] == '*' || [text charAtWithInt:i] == '?') && !OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(text, i)) {
      return true;
    }
  }
  return false;
}

jboolean OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isPrefixWildcardWithJavaLangCharSequence_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor *self, id<JavaLangCharSequence> text) {
  if (text == nil || [text length] <= 0 || !OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_isWildcardWithJavaLangCharSequence_(self, text)) return false;
  if ([text charAtWithInt:[text length] - 1] != '*') return false;
  if (OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(text, [text length] - 1)) return false;
  if ([text length] == 1) return false;
  for (jint i = 0; i < [text length]; i++) {
    if ([text charAtWithInt:i] == '?') return false;
    if ([text charAtWithInt:i] == '*' && !OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_wasEscapedWithJavaLangCharSequence_withInt_(text, i)) {
      if (i == [text length] - 1) return true;
      else return false;
    }
  }
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor)
