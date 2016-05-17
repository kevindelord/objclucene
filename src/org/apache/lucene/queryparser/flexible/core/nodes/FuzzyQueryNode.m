//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/FuzzyQueryNode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FuzzyQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode () {
 @public
  jfloat similarity_;
  jint prefixLength_;
}

@end

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)field
                    withJavaLangCharSequence:(id<JavaLangCharSequence>)term
                                   withFloat:(jfloat)minSimilarity
                                     withInt:(jint)begin
                                     withInt:(jint)end {
  OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_(self, field, term, minSimilarity, begin, end);
  return self;
}

- (void)setPrefixLengthWithInt:(jint)prefixLength {
  self->prefixLength_ = prefixLength;
}

- (jint)getPrefixLength {
  return self->prefixLength_;
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper {
  if ([self isDefaultFieldWithJavaLangCharSequence:self->field_]) {
    return JreStrcat("@CF", [self getTermEscapedWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escaper], '~', self->similarity_);
  }
  else {
    return JreStrcat("@C@CF", self->field_, ':', [self getTermEscapedWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escaper], '~', self->similarity_);
  }
}

- (NSString *)description {
  return JreStrcat("$@$F$@$", @"<fuzzy field='", self->field_, @"' similarity='", self->similarity_, @"' term='", self->text_, @"'/>");
}

- (void)setSimilarityWithFloat:(jfloat)similarity {
  self->similarity_ = similarity;
}

- (OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode class]);
  ((OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *) nil_chk(clone))->similarity_ = self->similarity_;
  return clone;
}

- (jfloat)getSimilarity {
  return self->similarity_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangCharSequence:withJavaLangCharSequence:withFloat:withInt:withInt:", "FuzzyQueryNode", NULL, 0x1, NULL, NULL },
    { "setPrefixLengthWithInt:", "setPrefixLength", "V", 0x1, NULL, NULL },
    { "getPrefixLength", NULL, "I", 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setSimilarityWithFloat:", "setSimilarity", "V", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.FuzzyQueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
    { "getSimilarity", NULL, "F", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "similarity_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "prefixLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode = { 2, "FuzzyQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *self, id<JavaLangCharSequence> field, id<JavaLangCharSequence> term, jfloat minSimilarity, jint begin, jint end) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withInt_withInt_(self, field, term, begin, end);
  self->similarity_ = minSimilarity;
  [self setLeafWithBoolean:true];
}

OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> term, jfloat minSimilarity, jint begin, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_, field, term, minSimilarity, begin, end)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> term, jfloat minSimilarity, jint begin, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode, initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_, field, term, minSimilarity, begin, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode)
