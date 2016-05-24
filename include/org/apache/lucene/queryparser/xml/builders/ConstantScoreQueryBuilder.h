//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/ConstantScoreQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder

#if !defined (OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneQueryparserXmlQueryBuilderFactory;
@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>ConstantScoreQuery</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory:(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *)queryFactory;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory_(OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder *self, OrgApacheLuceneQueryparserXmlQueryBuilderFactory *queryFactory);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory_(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *queryFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilderFactory_(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *queryFactory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersConstantScoreQueryBuilder")