//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/FuzzyLikeThisQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/FuzzyLikeThisQueryBuilder.h"
#include "org/apache/lucene/sandbox/queries/FuzzyLikeThisQuery.h"
#include "org/apache/lucene/sandbox/queries/SlowFuzzyQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"
#include "org/w3c/dom/Node.h"
#include "org/w3c/dom/NodeList.h"

@interface OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)

inline jint OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_get_DEFAULT_MAX_NUM_TERMS();
#define OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_MAX_NUM_TERMS 50
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder, DEFAULT_MAX_NUM_TERMS, jint)

inline jfloat OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_get_DEFAULT_MIN_SIMILARITY();
#define OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_MIN_SIMILARITY 2.0f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder, DEFAULT_MIN_SIMILARITY, jfloat)

inline jint OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_get_DEFAULT_PREFIX_LENGTH();
#define OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_PREFIX_LENGTH 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder, DEFAULT_PREFIX_LENGTH, jint)

inline jboolean OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_get_DEFAULT_IGNORE_TF();
#define OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_IGNORE_TF false
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder, DEFAULT_IGNORE_TF, jboolean)

@implementation OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  id<OrgW3cDomNodeList> nl = [((id<OrgW3cDomElement>) nil_chk(e)) getElementsByTagNameWithNSString:@"Field"];
  jint maxNumTerms = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"maxNumTerms", OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_MAX_NUM_TERMS);
  OrgApacheLuceneSandboxQueriesFuzzyLikeThisQuery *fbq = create_OrgApacheLuceneSandboxQueriesFuzzyLikeThisQuery_initWithInt_withOrgApacheLuceneAnalysisAnalyzer_(maxNumTerms, analyzer_);
  [fbq setIgnoreTFWithBoolean:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"ignoreTF", OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_IGNORE_TF)];
  for (jint i = 0; i < [((id<OrgW3cDomNodeList>) nil_chk(nl)) getLength]; i++) {
    id<OrgW3cDomElement> fieldElem = (id<OrgW3cDomElement>) cast_check([nl itemWithInt:i], OrgW3cDomElement_class_());
    jfloat minSimilarity = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(fieldElem, @"minSimilarity", OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_MIN_SIMILARITY);
    jint prefixLength = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(fieldElem, @"prefixLength", OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_PREFIX_LENGTH);
    NSString *fieldName = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceWithOrgW3cDomElement_withNSString_(fieldElem, @"fieldName");
    NSString *value = OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(fieldElem);
    [fbq addTermsWithNSString:value withNSString:fieldName withFloat:minSimilarity withInt:prefixLength];
  }
  [fbq setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return fbq;
}

- (void)dealloc {
  RELEASE_(analyzer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer:", "FuzzyLikeThisQueryBuilder", NULL, 0x1, NULL, NULL },
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_NUM_TERMS", "DEFAULT_MAX_NUM_TERMS", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_MAX_NUM_TERMS },
    { "DEFAULT_MIN_SIMILARITY", "DEFAULT_MIN_SIMILARITY", 0x1a, "F", NULL, NULL, .constantValue.asFloat = OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_MIN_SIMILARITY },
    { "DEFAULT_PREFIX_LENGTH", "DEFAULT_PREFIX_LENGTH", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_PREFIX_LENGTH },
    { "DEFAULT_IGNORE_TF", "DEFAULT_IGNORE_TF", 0x1a, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_DEFAULT_IGNORE_TF },
    { "analyzer_", NULL, 0x12, "Lorg.apache.lucene.analysis.Analyzer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder = { 2, "FuzzyLikeThisQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  NSObject_init(self);
  JreStrongAssign(&self->analyzer_, analyzer);
}

OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersFuzzyLikeThisQueryBuilder)
