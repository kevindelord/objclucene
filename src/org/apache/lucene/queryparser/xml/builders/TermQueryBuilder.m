//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/TermQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/TermQueryBuilder.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *field = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(e, @"fieldName");
  NSString *value = OrgApacheLuceneQueryparserXmlDOMUtils_getNonBlankTextOrFailWithOrgW3cDomElement_(e);
  OrgApacheLuceneSearchTermQuery *tq = create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(create_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(field, value));
  [tq setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return tq;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "init", "TermQueryBuilder", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder = { 2, "TermQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder, init)
}

OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersTermQueryBuilder)
