//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/FuzzyQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>FuzzyQueryNode</code> represents a element that contains
 field/text/similarity tuple
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode

#pragma mark Public

/*!
 @param field
 - Field name
 @param term
 - Value
 @param minSimilarity
 - similarity value
 @param begin
 - position in the query string
 @param end
 - position in the query string
 */
- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)field
                    withJavaLangCharSequence:(id<JavaLangCharSequence>)term
                                   withFloat:(jfloat)minSimilarity
                                     withInt:(jint)begin
                                     withInt:(jint)end;

- (OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *)cloneTree;

- (jint)getPrefixLength;

/*!
 @return the similarity
 */
- (jfloat)getSimilarity;

- (void)setPrefixLengthWithInt:(jint)prefixLength;

- (void)setSimilarityWithFloat:(jfloat)similarity;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *self, id<JavaLangCharSequence> field, id<JavaLangCharSequence> term, jfloat minSimilarity, jint begin, jint end);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> term, jfloat minSimilarity, jint begin, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_initWithJavaLangCharSequence_withJavaLangCharSequence_withFloat_withInt_withInt_(id<JavaLangCharSequence> field, id<JavaLangCharSequence> term, jfloat minSimilarity, jint begin, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode")