//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/TermQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder

#if !defined (OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>TermQuery</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder")