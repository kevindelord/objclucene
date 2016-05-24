//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/TermsFilterBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder

#if !defined (OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder || defined(INCLUDE_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder))
#define OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_

#define RESTRICT_OrgApacheLuceneQueryparserXmlFilterBuilder 1
#define INCLUDE_OrgApacheLuceneQueryparserXmlFilterBuilder 1
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneSearchFilter;
@protocol OrgW3cDomElement;

/*!
 @brief Builder for <code>TermsFilter</code>
 */
@interface OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder : NSObject < OrgApacheLuceneQueryparserXmlFilterBuilder >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder *create_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlBuildersTermsFilterBuilder")