//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/GroupingSearch.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGroupingGroupingSearch_INCLUDE_ALL")
#if OrgApacheLuceneSearchGroupingGroupingSearch_RESTRICT
#define OrgApacheLuceneSearchGroupingGroupingSearch_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGroupingGroupingSearch_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGroupingGroupingSearch_RESTRICT

#if !defined (_OrgApacheLuceneSearchGroupingGroupingSearch_) && (OrgApacheLuceneSearchGroupingGroupingSearch_INCLUDE_ALL || OrgApacheLuceneSearchGroupingGroupingSearch_INCLUDE)
#define _OrgApacheLuceneSearchGroupingGroupingSearch_

@class OrgApacheLuceneQueriesFunctionValueSource;
@class OrgApacheLuceneSearchGroupingTopGroups;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchSort;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchGroupingGroupingSearch : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)groupEndDocs;

- (instancetype)initWithNSString:(NSString *)groupField;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)groupFunction
                                                  withJavaUtilMap:(id<JavaUtilMap>)valueSourceContext;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)disableCaching;

- (id<OrgApacheLuceneUtilBits>)getAllGroupHeads;

- (id<JavaUtilCollection>)getAllMatchingGroups;

- (OrgApacheLuceneSearchGroupingTopGroups *)searchWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                          withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                                 withInt:(jint)groupOffset
                                                                                 withInt:(jint)groupLimit;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setAllGroupHeadsWithBoolean:(jboolean)allGroupHeads;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setAllGroupsWithBoolean:(jboolean)allGroups;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setCachingWithInt:(jint)maxDocsToCache
                                                       withBoolean:(jboolean)cacheScores;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setCachingInMBWithDouble:(jdouble)maxCacheRAMMB
                                                              withBoolean:(jboolean)cacheScores;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setFillSortFieldsWithBoolean:(jboolean)fillSortFields;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setGroupDocsLimitWithInt:(jint)groupDocsLimit;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setGroupDocsOffsetWithInt:(jint)groupDocsOffset;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setGroupSortWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setIncludeMaxScoreWithBoolean:(jboolean)includeMaxScore;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setIncludeScoresWithBoolean:(jboolean)includeScores;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setInitialSizeWithInt:(jint)initialSize;

- (OrgApacheLuceneSearchGroupingGroupingSearch *)setSortWithinGroupWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sortWithinGroup;

#pragma mark Protected

- (OrgApacheLuceneSearchGroupingTopGroups *)groupByDocBlockWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                   withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                                          withInt:(jint)groupOffset
                                                                                          withInt:(jint)groupLimit;

- (OrgApacheLuceneSearchGroupingTopGroups *)groupByFieldOrFunctionWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                          withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                                                 withInt:(jint)groupOffset
                                                                                                 withInt:(jint)groupLimit;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingGroupingSearch)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_(OrgApacheLuceneSearchGroupingGroupingSearch *self, NSString *groupField);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithNSString_(NSString *groupField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneSearchGroupingGroupingSearch *self, OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValueSource *groupFunction, id<JavaUtilMap> valueSourceContext) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchGroupingGroupingSearch *self, OrgApacheLuceneSearchQuery *groupEndDocs);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingGroupingSearch *new_OrgApacheLuceneSearchGroupingGroupingSearch_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *groupEndDocs) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingGroupingSearch)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGroupingGroupingSearch_INCLUDE_ALL")