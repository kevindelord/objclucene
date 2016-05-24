//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/QueryBuilderFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/HashMap.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/QueryBuilderFactory.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlQueryBuilderFactory

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)n {
  id<OrgApacheLuceneQueryparserXmlQueryBuilder> builder = [((JavaUtilHashMap *) nil_chk(builders_)) getWithId:[((id<OrgW3cDomElement>) nil_chk(n)) getNodeName]];
  if (builder == nil) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"No QueryObjectBuilder defined for node ", [n getNodeName]));
  }
  return [builder getQueryWithOrgW3cDomElement:n];
}

- (void)addBuilderWithNSString:(NSString *)nodeName
withOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)builder {
  [((JavaUtilHashMap *) nil_chk(builders_)) putWithId:nodeName withId:builder];
}

- (id<OrgApacheLuceneQueryparserXmlQueryBuilder>)getQueryBuilderWithNSString:(NSString *)nodeName {
  return [((JavaUtilHashMap *) nil_chk(builders_)) getWithId:nodeName];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(builders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "addBuilderWithNSString:withOrgApacheLuceneQueryparserXmlQueryBuilder:", "addBuilder", "V", 0x1, NULL, NULL },
    { "getQueryBuilderWithNSString:", "getQueryBuilder", "Lorg.apache.lucene.queryparser.xml.QueryBuilder;", 0x1, NULL, NULL },
    { "init", "QueryBuilderFactory", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "builders_", NULL, 0x0, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/lucene/queryparser/xml/QueryBuilder;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlQueryBuilderFactory = { 2, "QueryBuilderFactory", "org.apache.lucene.queryparser.xml", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlQueryBuilderFactory;
}

@end

void OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init(OrgApacheLuceneQueryparserXmlQueryBuilderFactory *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->builders_, new_JavaUtilHashMap_init());
}

OrgApacheLuceneQueryparserXmlQueryBuilderFactory *new_OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlQueryBuilderFactory, init)
}

OrgApacheLuceneQueryparserXmlQueryBuilderFactory *create_OrgApacheLuceneQueryparserXmlQueryBuilderFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlQueryBuilderFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlQueryBuilderFactory)