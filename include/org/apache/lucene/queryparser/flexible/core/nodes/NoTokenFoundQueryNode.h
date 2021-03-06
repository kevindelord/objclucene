//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/NoTokenFoundQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode))
#define OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief A <code>NoTokenFoundQueryNode</code> is used if a term is convert into no tokens
 by the tokenizer/lemmatizer/analyzer (null).
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreNodesNoTokenFoundQueryNode")
