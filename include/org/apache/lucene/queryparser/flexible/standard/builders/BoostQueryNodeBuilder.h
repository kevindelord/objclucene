//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/BoostQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder))
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This builder basically reads the <code>Query</code> object set on the
 <code>BoostQueryNode</code> child using
 <code>QueryTreeBuilder.QUERY_TREE_BUILDER_TAGID</code> and applies the boost value
 defined in the <code>BoostQueryNode</code>.
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder *create_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder")