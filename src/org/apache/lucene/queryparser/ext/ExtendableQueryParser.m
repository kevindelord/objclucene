//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/ext/ExtendableQueryParser.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/queryparser/classic/ParseException.h"
#include "org/apache/lucene/queryparser/classic/QueryParser.h"
#include "org/apache/lucene/queryparser/ext/ExtendableQueryParser.h"
#include "org/apache/lucene/queryparser/ext/ExtensionQuery.h"
#include "org/apache/lucene/queryparser/ext/Extensions.h"
#include "org/apache/lucene/queryparser/ext/ParserExtension.h"
#include "org/apache/lucene/search/Query.h"

@interface OrgApacheLuceneQueryparserExtExtendableQueryParser () {
 @public
  NSString *defaultField_;
  OrgApacheLuceneQueryparserExtExtensions *extensions_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtendableQueryParser, defaultField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtendableQueryParser, extensions_, OrgApacheLuceneQueryparserExtExtensions *)

/*!
 @brief Default empty extensions instance
 */
inline OrgApacheLuceneQueryparserExtExtensions *OrgApacheLuceneQueryparserExtExtendableQueryParser_get_DEFAULT_EXTENSION();
static OrgApacheLuceneQueryparserExtExtensions *OrgApacheLuceneQueryparserExtExtendableQueryParser_DEFAULT_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserExtExtendableQueryParser, DEFAULT_EXTENSION, OrgApacheLuceneQueryparserExtExtensions *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneQueryparserExtExtendableQueryParser)

@implementation OrgApacheLuceneQueryparserExtExtendableQueryParser

- (instancetype)initWithNSString:(NSString *)f
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a {
  OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, f, a);
  return self;
}

- (instancetype)initWithNSString:(NSString *)f
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a
withOrgApacheLuceneQueryparserExtExtensions:(OrgApacheLuceneQueryparserExtExtensions *)ext {
  OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserExtExtensions_(self, f, a, ext);
  return self;
}

- (jchar)getExtensionFieldDelimiter {
  return [((OrgApacheLuceneQueryparserExtExtensions *) nil_chk(extensions_)) getExtensionFieldDelimiter];
}

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                              withBoolean:(jboolean)quoted {
  OrgApacheLuceneQueryparserExtExtensions_Pair *splitExtensionField = [((OrgApacheLuceneQueryparserExtExtensions *) nil_chk(self->extensions_)) splitExtensionFieldWithNSString:defaultField_ withNSString:field];
  OrgApacheLuceneQueryparserExtParserExtension *extension = [self->extensions_ getExtensionWithNSString:((NSString *) ((OrgApacheLuceneQueryparserExtExtensions_Pair *) nil_chk(splitExtensionField))->cud_)];
  if (extension != nil) {
    return [extension parseWithOrgApacheLuceneQueryparserExtExtensionQuery:create_OrgApacheLuceneQueryparserExtExtensionQuery_initWithOrgApacheLuceneQueryparserClassicQueryParser_withNSString_withNSString_(self, ((NSString *) splitExtensionField->cur_), queryText)];
  }
  return [super getFieldQueryWithNSString:field withNSString:queryText withBoolean:quoted];
}

- (void)dealloc {
  RELEASE_(defaultField_);
  RELEASE_(extensions_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneQueryparserExtExtendableQueryParser class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserExtExtendableQueryParser_DEFAULT_EXTENSION, new_OrgApacheLuceneQueryparserExtExtensions_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneQueryparserExtExtendableQueryParser)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneAnalysisAnalyzer:", "ExtendableQueryParser", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneQueryparserExtExtensions:", "ExtendableQueryParser", NULL, 0x1, NULL, NULL },
    { "getExtensionFieldDelimiter", NULL, "C", 0x1, NULL, NULL },
    { "getFieldQueryWithNSString:withNSString:withBoolean:", "getFieldQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "defaultField_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "extensions_", NULL, 0x12, "Lorg.apache.lucene.queryparser.ext.Extensions;", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_EXTENSION", "DEFAULT_EXTENSION", 0x1a, "Lorg.apache.lucene.queryparser.ext.Extensions;", &OrgApacheLuceneQueryparserExtExtendableQueryParser_DEFAULT_EXTENSION, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserExtExtendableQueryParser = { 2, "ExtendableQueryParser", "org.apache.lucene.queryparser.ext", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserExtExtendableQueryParser;
}

@end

void OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserExtExtendableQueryParser *self, NSString *f, OrgApacheLuceneAnalysisAnalyzer *a) {
  OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserExtExtensions_(self, f, a, OrgApacheLuceneQueryparserExtExtendableQueryParser_DEFAULT_EXTENSION);
}

OrgApacheLuceneQueryparserExtExtendableQueryParser *new_OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserExtExtendableQueryParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_, f, a)
}

OrgApacheLuceneQueryparserExtExtendableQueryParser *create_OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserExtExtendableQueryParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_, f, a)
}

void OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserExtExtensions_(OrgApacheLuceneQueryparserExtExtendableQueryParser *self, NSString *f, OrgApacheLuceneAnalysisAnalyzer *a, OrgApacheLuceneQueryparserExtExtensions *ext) {
  OrgApacheLuceneQueryparserClassicQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, f, a);
  JreStrongAssign(&self->defaultField_, f);
  JreStrongAssign(&self->extensions_, ext);
}

OrgApacheLuceneQueryparserExtExtendableQueryParser *new_OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserExtExtensions_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a, OrgApacheLuceneQueryparserExtExtensions *ext) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserExtExtendableQueryParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserExtExtensions_, f, a, ext)
}

OrgApacheLuceneQueryparserExtExtendableQueryParser *create_OrgApacheLuceneQueryparserExtExtendableQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserExtExtensions_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a, OrgApacheLuceneQueryparserExtExtensions *ext) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserExtExtendableQueryParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneQueryparserExtExtensions_, f, a, ext)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserExtExtendableQueryParser)
