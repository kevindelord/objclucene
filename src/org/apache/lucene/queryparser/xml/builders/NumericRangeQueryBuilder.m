//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/NumericRangeQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/NumericRangeQueryBuilder.h"
#include "org/apache/lucene/search/NumericRangeQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/NumericUtils.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *field = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(e, @"fieldName");
  NSString *lowerTerm = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeOrFailWithOrgW3cDomElement_withNSString_(e, @"lowerTerm");
  NSString *upperTerm = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeOrFailWithOrgW3cDomElement_withNSString_(e, @"upperTerm");
  jboolean lowerInclusive = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"includeLower", YES);
  jboolean upperInclusive = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"includeUpper", YES);
  jint precisionStep = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"precisionStep", OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT);
  NSString *type = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(e, @"type", @"int");
  @try {
    OrgApacheLuceneSearchQuery *filter;
    if ([((NSString *) nil_chk(type)) equalsIgnoreCase:@"int"]) {
      filter = OrgApacheLuceneSearchNumericRangeQuery_newIntRangeWithNSString_withInt_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(field, precisionStep, JavaLangInteger_valueOfWithNSString_(lowerTerm), JavaLangInteger_valueOfWithNSString_(upperTerm), lowerInclusive, upperInclusive);
    }
    else if ([type equalsIgnoreCase:@"long"]) {
      filter = OrgApacheLuceneSearchNumericRangeQuery_newLongRangeWithNSString_withInt_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(field, precisionStep, JavaLangLong_valueOfWithNSString_(lowerTerm), JavaLangLong_valueOfWithNSString_(upperTerm), lowerInclusive, upperInclusive);
    }
    else if ([type equalsIgnoreCase:@"double"]) {
      filter = OrgApacheLuceneSearchNumericRangeQuery_newDoubleRangeWithNSString_withInt_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(field, precisionStep, JavaLangDouble_valueOfWithNSString_(lowerTerm), JavaLangDouble_valueOfWithNSString_(upperTerm), lowerInclusive, upperInclusive);
    }
    else if ([type equalsIgnoreCase:@"float"]) {
      filter = OrgApacheLuceneSearchNumericRangeQuery_newFloatRangeWithNSString_withInt_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(field, precisionStep, JavaLangFloat_valueOfWithNSString_(lowerTerm), JavaLangFloat_valueOfWithNSString_(upperTerm), lowerInclusive, upperInclusive);
    }
    else {
      @throw [new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(@"type attribute must be one of: [long, int, double, float]") autorelease];
    }
    return filter;
  }
  @catch (JavaLangNumberFormatException *nfe) {
    @throw [new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_withJavaLangThrowable_(@"Could not parse lowerTerm or upperTerm into a number", nfe) autorelease];
  }
}

- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder = { 2, "NumericRangeQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder_init(OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder_init() {
  OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersNumericRangeQueryBuilder)