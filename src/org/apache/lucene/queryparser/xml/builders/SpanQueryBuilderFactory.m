//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/SpanQueryBuilderFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanQueryBuilder.h"
#include "org/apache/lucene/queryparser/xml/builders/SpanQueryBuilderFactory.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/w3c/dom/Element.h"

@interface OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory () {
 @public
  id<JavaUtilMap> builders_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory, builders_, id<JavaUtilMap>)

@implementation OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  return [self getSpanQueryWithOrgW3cDomElement:e];
}

- (void)addBuilderWithNSString:(NSString *)nodeName
withOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:(id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder>)builder {
  [((id<JavaUtilMap>) nil_chk(builders_)) putWithId:nodeName withId:builder];
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getSpanQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  id<OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder> builder = [((id<JavaUtilMap>) nil_chk(builders_)) getWithId:[((id<OrgW3cDomElement>) nil_chk(e)) getNodeName]];
  if (builder == nil) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"No SpanQueryObjectBuilder defined for node ", [e getNodeName]));
  }
  return [builder getSpanQueryWithOrgW3cDomElement:e];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_init(self);
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
    { "addBuilderWithNSString:withOrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilder:", "addBuilder", "V", 0x1, NULL, NULL },
    { "getSpanQueryWithOrgW3cDomElement:", "getSpanQuery", "Lorg.apache.lucene.search.spans.SpanQuery;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "init", "SpanQueryBuilderFactory", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "builders_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/queryparser/xml/builders/SpanQueryBuilder;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory = { 2, "SpanQueryBuilderFactory", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_init(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->builders_, new_JavaUtilHashMap_init());
}

OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory *new_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory, init)
}

OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory *create_OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersSpanQueryBuilderFactory)
