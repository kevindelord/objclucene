//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/AnyQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/AndQueryNode.h"

@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>AnyQueryNode</code> represents an ANY operator performed on a list of
 nodes.
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode

#pragma mark Public

/*!
 @param clauses
 - the query nodes to be or'ed
 */
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
            withJavaLangCharSequence:(id<JavaLangCharSequence>)field
                             withInt:(jint)minimumMatchingElements;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree;

/*!
 @brief returns null if the field was not specified
 @return the field
 */
- (id<JavaLangCharSequence>)getField;

/*!
 @brief returns - null if the field was not specified
 @return the field as a String
 */
- (NSString *)getFieldAsString;

- (jint)getMinimumMatchingElements;

/*!
 @param field
 - the field to set
 */
- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)field;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *self, id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode")