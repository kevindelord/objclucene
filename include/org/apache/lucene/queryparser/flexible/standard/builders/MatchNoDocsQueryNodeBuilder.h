//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/MatchNoDocsQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_) && (OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_

#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchMatchNoDocsQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchMatchNoDocsQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_INCLUDE_ALL")