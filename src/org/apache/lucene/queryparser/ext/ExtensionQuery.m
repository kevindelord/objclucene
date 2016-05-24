//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/ext/ExtensionQuery.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/classic/QueryParser.h"
#include "org/apache/lucene/queryparser/ext/ExtensionQuery.h"

@interface OrgApacheLuceneQueryparserExtExtensionQuery () {
 @public
  NSString *field_;
  NSString *rawQueryString_;
  OrgApacheLuceneQueryparserClassicQueryParser *topLevelParser_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensionQuery, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensionQuery, rawQueryString_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensionQuery, topLevelParser_, OrgApacheLuceneQueryparserClassicQueryParser *)

@implementation OrgApacheLuceneQueryparserExtExtensionQuery

- (instancetype)initWithOrgApacheLuceneQueryparserClassicQueryParser:(OrgApacheLuceneQueryparserClassicQueryParser *)topLevelParser
                                                        withNSString:(NSString *)field
                                                        withNSString:(NSString *)rawQueryString {
  OrgApacheLuceneQueryparserExtExtensionQuery_initWithOrgApacheLuceneQueryparserClassicQueryParser_withNSString_withNSString_(self, topLevelParser, field, rawQueryString);
  return self;
}

- (NSString *)getField {
  return field_;
}

- (NSString *)getRawQueryString {
  return rawQueryString_;
}

- (OrgApacheLuceneQueryparserClassicQueryParser *)getTopLevelParser {
  return topLevelParser_;
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(rawQueryString_);
  RELEASE_(topLevelParser_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserClassicQueryParser:withNSString:withNSString:", "ExtensionQuery", NULL, 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getRawQueryString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getTopLevelParser", NULL, "Lorg.apache.lucene.queryparser.classic.QueryParser;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "rawQueryString_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "topLevelParser_", NULL, 0x12, "Lorg.apache.lucene.queryparser.classic.QueryParser;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserExtExtensionQuery = { 2, "ExtensionQuery", "org.apache.lucene.queryparser.ext", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserExtExtensionQuery;
}

@end

void OrgApacheLuceneQueryparserExtExtensionQuery_initWithOrgApacheLuceneQueryparserClassicQueryParser_withNSString_withNSString_(OrgApacheLuceneQueryparserExtExtensionQuery *self, OrgApacheLuceneQueryparserClassicQueryParser *topLevelParser, NSString *field, NSString *rawQueryString) {
  NSObject_init(self);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->rawQueryString_, rawQueryString);
  JreStrongAssign(&self->topLevelParser_, topLevelParser);
}

OrgApacheLuceneQueryparserExtExtensionQuery *new_OrgApacheLuceneQueryparserExtExtensionQuery_initWithOrgApacheLuceneQueryparserClassicQueryParser_withNSString_withNSString_(OrgApacheLuceneQueryparserClassicQueryParser *topLevelParser, NSString *field, NSString *rawQueryString) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserExtExtensionQuery, initWithOrgApacheLuceneQueryparserClassicQueryParser_withNSString_withNSString_, topLevelParser, field, rawQueryString)
}

OrgApacheLuceneQueryparserExtExtensionQuery *create_OrgApacheLuceneQueryparserExtExtensionQuery_initWithOrgApacheLuceneQueryparserClassicQueryParser_withNSString_withNSString_(OrgApacheLuceneQueryparserClassicQueryParser *topLevelParser, NSString *field, NSString *rawQueryString) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserExtExtensionQuery, initWithOrgApacheLuceneQueryparserClassicQueryParser_withNSString_withNSString_, topLevelParser, field, rawQueryString)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserExtExtensionQuery)