//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/QuotedFieldQueryNode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QuotedFieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)field
                    withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                     withInt:(jint)begin
                                     withInt:(jint)end {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, field, text, begin, end);
  return self;
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper {
  if ([self isDefaultFieldWithJavaLangCharSequence:self->field_]) {
    return JreStrcat("C@C", '"', [self getTermEscapeQuotedWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escaper], '"');
  }
  else {
    return JreStrcat("@$@C", self->field_, @":\"", [self getTermEscapeQuotedWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escaper], '"');
  }
}

- (NSString *)description {
  return JreStrcat("$I$I$@$@$", @"<quotedfield start='", self->begin_, @"' end='", self->end_, @"' field='", self->field_, @"' term='", self->text_, @"'/>");
}

- (OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode *)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode class]);
  return clone;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangCharSequence:withJavaLangCharSequence:withInt:withInt:", "QuotedFieldQueryNode", NULL, 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QuotedFieldQueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode = { 2, "QuotedFieldQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode *self, id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, field, text, begin, end);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_, field, text, begin, end)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> text, jint begin, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_, field, text, begin, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesQuotedFieldQueryNode)
