//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/StandardBooleanQueryNodeBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardBooleanQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/StandardBooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/EscapeQuerySyntaxImpl.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/Query.h"

@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder ()

+ (OrgApacheLuceneSearchBooleanClause_Occur *)getModifierValueWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

@end

__attribute__((unused)) static OrgApacheLuceneSearchBooleanClause_Occur *OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_getModifierValueWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node);

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchBooleanQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *booleanNode = (OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *) cast_chk(queryNode, [OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode class]);
  OrgApacheLuceneSearchBooleanQuery_Builder *bQuery = create_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [bQuery setDisableCoordWithBoolean:[((OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode *) nil_chk(booleanNode)) isDisableCoord]];
  id<JavaUtilList> children = [booleanNode getChildren];
  if (children != nil) {
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in children) {
      id obj = [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) getTagWithNSString:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder, QUERY_TREE_BUILDER_TAGID)];
      if (obj != nil) {
        OrgApacheLuceneSearchQuery *query = (OrgApacheLuceneSearchQuery *) cast_chk(obj, [OrgApacheLuceneSearchQuery class]);
        @try {
          [bQuery addWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchBooleanClause_Occur:OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_getModifierValueWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(child)];
        }
        @catch (OrgApacheLuceneSearchBooleanQuery_TooManyClauses *ex) {
          @throw create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, TOO_MANY_BOOLEAN_CLAUSES), [IOSObjectArray arrayWithObjects:(id[]){ JavaLangInteger_valueOfWithInt_(OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount()), [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(queryNode)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:create_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init()] } count:2 type:NSObject_class_()]), ex);
        }
      }
    }
  }
  return [bQuery build];
}

+ (OrgApacheLuceneSearchBooleanClause_Occur *)getModifierValueWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_getModifierValueWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(node);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "StandardBooleanQueryNodeBuilder", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Lorg.apache.lucene.search.BooleanQuery;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "getModifierValueWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "getModifierValue", "Lorg.apache.lucene.search.BooleanClause$Occur;", 0xa, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder = { 2, "StandardBooleanQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder, init)
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder, init)
}

OrgApacheLuceneSearchBooleanClause_Occur *OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_getModifierValueWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode_(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> node) {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_initialize();
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]]) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *mNode = ((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) cast_chk(node, [OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode class]));
    OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *modifier = [((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode *) nil_chk(mNode)) getModifier];
    if ([((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *) nil_chk(JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier, MOD_NONE))) isEqual:modifier]) {
      return JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD);
    }
    else if ([((OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier *) nil_chk(JreLoadEnum(OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_Modifier, MOD_NOT))) isEqual:modifier]) {
      return JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST_NOT);
    }
    else {
      return JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST);
    }
  }
  return JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder)
