//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/DisjunctionMaxQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_

#define OrgApacheLuceneQueryparserXmlQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)factory;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder *self, id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersDisjunctionMaxQueryBuilder_INCLUDE_ALL")