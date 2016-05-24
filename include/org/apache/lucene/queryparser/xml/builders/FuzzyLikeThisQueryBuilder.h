//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/FuzzyLikeThisQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder

#if !defined (OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlQueryBuilder 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>FuzzyLikeThisQuery</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder")