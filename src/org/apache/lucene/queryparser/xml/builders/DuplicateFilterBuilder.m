//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/DuplicateFilterBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/DuplicateFilterBuilder.h"
#include "org/apache/lucene/sandbox/queries/DuplicateFilter.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *fieldName = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(e, @"fieldName");
  OrgApacheLuceneSandboxQueriesDuplicateFilter *df = create_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(fieldName);
  NSString *keepMode = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(e, @"keepMode", @"first");
  if ([((NSString *) nil_chk(keepMode)) equalsIgnoreCase:@"first"]) {
    [df setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE)];
  }
  else if ([keepMode equalsIgnoreCase:@"last"]) {
    [df setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_LAST_OCCURRENCE)];
  }
  else {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"Illegal keepMode attribute in DuplicateFilter:", keepMode));
  }
  NSString *processingMode = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(e, @"processingMode", @"full");
  if ([((NSString *) nil_chk(processingMode)) equalsIgnoreCase:@"full"]) {
    [df setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FULL_VALIDATION)];
  }
  else if ([processingMode equalsIgnoreCase:@"fast"]) {
    [df setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FAST_INVALIDATION)];
  }
  else {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"Illegal processingMode attribute in DuplicateFilter:", processingMode));
  }
  return df;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getFilterWithOrgW3cDomElement:", "getFilter", "Lorg.apache.lucene.search.Filter;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "init", "DuplicateFilterBuilder", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder = { 2, "DuplicateFilterBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init(OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder, init)
}

OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder *create_OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder)