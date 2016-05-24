//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/DOMUtils.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "javax/xml/parsers/DocumentBuilder.h"
#include "javax/xml/parsers/DocumentBuilderFactory.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/w3c/dom/Document.h"
#include "org/w3c/dom/Element.h"
#include "org/w3c/dom/Node.h"
#include "org/w3c/dom/Text.h"
#include "org/xml/sax/InputSource.h"

@interface OrgApacheLuceneQueryparserXmlDOMUtils ()

+ (void)getTextBufferWithOrgW3cDomNode:(id<OrgW3cDomNode>)e
             withJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

@end

__attribute__((unused)) static void OrgApacheLuceneQueryparserXmlDOMUtils_getTextBufferWithOrgW3cDomNode_withJavaLangStringBuilder_(id<OrgW3cDomNode> e, JavaLangStringBuilder *sb);

@implementation OrgApacheLuceneQueryparserXmlDOMUtils

+ (id<OrgW3cDomElement>)getChildByTagOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                                   withNSString:(NSString *)name {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(e, name);
}

+ (id<OrgW3cDomElement>)getFirstChildOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(e);
}

+ (NSString *)getAttributeOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                        withNSString:(NSString *)name {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeOrFailWithOrgW3cDomElement_withNSString_(e, name);
}

+ (NSString *)getAttributeWithInheritanceOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                                       withNSString:(NSString *)name {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(e, name);
}

+ (NSString *)getNonBlankTextOrFailWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getNonBlankTextOrFailWithOrgW3cDomElement_(e);
}

+ (id<OrgW3cDomElement>)getChildByTagNameWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                                 withNSString:(NSString *)name {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagNameWithOrgW3cDomElement_withNSString_(e, name);
}

+ (NSString *)getAttributeWithInheritanceWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                                                 withNSString:(NSString *)attributeName {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceWithOrgW3cDomElement_withNSString_(element, attributeName);
}

+ (NSString *)getChildTextByTagNameWithOrgW3cDomElement:(id<OrgW3cDomElement>)e
                                           withNSString:(NSString *)tagName {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getChildTextByTagNameWithOrgW3cDomElement_withNSString_(e, tagName);
}

+ (id<OrgW3cDomElement>)insertChildWithOrgW3cDomElement:(id<OrgW3cDomElement>)parent
                                           withNSString:(NSString *)tagName
                                           withNSString:(NSString *)text {
  return OrgApacheLuceneQueryparserXmlDOMUtils_insertChildWithOrgW3cDomElement_withNSString_withNSString_(parent, tagName, text);
}

+ (NSString *)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                                  withNSString:(NSString *)attributeName
                                  withNSString:(NSString *)deflt {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(element, attributeName, deflt);
}

+ (jfloat)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                              withNSString:(NSString *)attributeName
                                 withFloat:(jfloat)deflt {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(element, attributeName, deflt);
}

+ (jint)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                            withNSString:(NSString *)attributeName
                                 withInt:(jint)deflt {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(element, attributeName, deflt);
}

+ (jboolean)getAttributeWithOrgW3cDomElement:(id<OrgW3cDomElement>)element
                                withNSString:(NSString *)attributeName
                                 withBoolean:(jboolean)deflt {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(element, attributeName, deflt);
}

+ (NSString *)getTextWithOrgW3cDomNode:(id<OrgW3cDomNode>)e {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(e);
}

+ (id<OrgW3cDomElement>)getFirstChildElementWithOrgW3cDomElement:(id<OrgW3cDomElement>)element {
  return OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildElementWithOrgW3cDomElement_(element);
}

+ (void)getTextBufferWithOrgW3cDomNode:(id<OrgW3cDomNode>)e
             withJavaLangStringBuilder:(JavaLangStringBuilder *)sb {
  OrgApacheLuceneQueryparserXmlDOMUtils_getTextBufferWithOrgW3cDomNode_withJavaLangStringBuilder_(e, sb);
}

+ (id<OrgW3cDomDocument>)loadXMLWithJavaIoReader:(JavaIoReader *)is {
  return OrgApacheLuceneQueryparserXmlDOMUtils_loadXMLWithJavaIoReader_(is);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserXmlDOMUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getChildByTagOrFailWithOrgW3cDomElement:withNSString:", "getChildByTagOrFail", "Lorg.w3c.dom.Element;", 0x9, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "getFirstChildOrFailWithOrgW3cDomElement:", "getFirstChildOrFail", "Lorg.w3c.dom.Element;", 0x9, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "getAttributeOrFailWithOrgW3cDomElement:withNSString:", "getAttributeOrFail", "Ljava.lang.String;", 0x9, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "getAttributeWithInheritanceOrFailWithOrgW3cDomElement:withNSString:", "getAttributeWithInheritanceOrFail", "Ljava.lang.String;", 0x9, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "getNonBlankTextOrFailWithOrgW3cDomElement:", "getNonBlankTextOrFail", "Ljava.lang.String;", 0x9, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "getChildByTagNameWithOrgW3cDomElement:withNSString:", "getChildByTagName", "Lorg.w3c.dom.Element;", 0x9, NULL, NULL },
    { "getAttributeWithInheritanceWithOrgW3cDomElement:withNSString:", "getAttributeWithInheritance", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "getChildTextByTagNameWithOrgW3cDomElement:withNSString:", "getChildTextByTagName", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "insertChildWithOrgW3cDomElement:withNSString:withNSString:", "insertChild", "Lorg.w3c.dom.Element;", 0x9, NULL, NULL },
    { "getAttributeWithOrgW3cDomElement:withNSString:withNSString:", "getAttribute", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "getAttributeWithOrgW3cDomElement:withNSString:withFloat:", "getAttribute", "F", 0x9, NULL, NULL },
    { "getAttributeWithOrgW3cDomElement:withNSString:withInt:", "getAttribute", "I", 0x9, NULL, NULL },
    { "getAttributeWithOrgW3cDomElement:withNSString:withBoolean:", "getAttribute", "Z", 0x9, NULL, NULL },
    { "getTextWithOrgW3cDomNode:", "getText", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "getFirstChildElementWithOrgW3cDomElement:", "getFirstChildElement", "Lorg.w3c.dom.Element;", 0x9, NULL, NULL },
    { "getTextBufferWithOrgW3cDomNode:withJavaLangStringBuilder:", "getTextBuffer", "V", 0xa, NULL, NULL },
    { "loadXMLWithJavaIoReader:", "loadXML", "Lorg.w3c.dom.Document;", 0x9, NULL, NULL },
    { "init", "DOMUtils", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlDOMUtils = { 2, "DOMUtils", "org.apache.lucene.queryparser.xml", NULL, 0x1, 18, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlDOMUtils;
}

@end

id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagOrFailWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  id<OrgW3cDomElement> kid = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagNameWithOrgW3cDomElement_withNSString_(e, name);
  if (nil == kid) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$$$", [((id<OrgW3cDomElement>) nil_chk(e)) getTagName], @" missing \"", name, @"\" child element"));
  }
  return kid;
}

id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildOrFailWithOrgW3cDomElement_(id<OrgW3cDomElement> e) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  id<OrgW3cDomElement> kid = OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildElementWithOrgW3cDomElement_(e);
  if (nil == kid) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", [((id<OrgW3cDomElement>) nil_chk(e)) getTagName], @" does not contain a child element"));
  }
  return kid;
}

NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeOrFailWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *v = [((id<OrgW3cDomElement>) nil_chk(e)) getAttributeWithNSString:name];
  if (nil == v) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$$$", [e getTagName], @" missing \"", name, @"\" attribute"));
  }
  return v;
}

NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *v = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceWithOrgW3cDomElement_withNSString_(e, name);
  if (nil == v) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$$$", [((id<OrgW3cDomElement>) nil_chk(e)) getTagName], @" missing \"", name, @"\" attribute"));
  }
  return v;
}

NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getNonBlankTextOrFailWithOrgW3cDomElement_(id<OrgW3cDomElement> e) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *v = OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(e);
  if (nil != v) v = [v trim];
  if (nil == v || 0 == ((jint) [v length])) {
    @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", [((id<OrgW3cDomElement>) nil_chk(e)) getTagName], @" has no text"));
  }
  return v;
}

id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagNameWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *name) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  for (id<OrgW3cDomNode> kid = [((id<OrgW3cDomElement>) nil_chk(e)) getFirstChild]; kid != nil; kid = [kid getNextSibling]) {
    if (([kid getNodeType] == OrgW3cDomNode_ELEMENT_NODE) && ([((NSString *) nil_chk(name)) isEqual:[kid getNodeName]])) {
      return (id<OrgW3cDomElement>) cast_check(kid, OrgW3cDomElement_class_());
    }
  }
  return nil;
}

NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> element, NSString *attributeName) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *result = [((id<OrgW3cDomElement>) nil_chk(element)) getAttributeWithNSString:attributeName];
  if ((result == nil) || ([@"" isEqual:result])) {
    id<OrgW3cDomNode> n = [element getParentNode];
    if ((n == element) || (n == nil)) {
      return nil;
    }
    if ([OrgW3cDomElement_class_() isInstance:n]) {
      id<OrgW3cDomElement> parent = (id<OrgW3cDomElement>) cast_check(n, OrgW3cDomElement_class_());
      return OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceWithOrgW3cDomElement_withNSString_(parent, attributeName);
    }
    return nil;
  }
  return result;
}

NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getChildTextByTagNameWithOrgW3cDomElement_withNSString_(id<OrgW3cDomElement> e, NSString *tagName) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  id<OrgW3cDomElement> child = OrgApacheLuceneQueryparserXmlDOMUtils_getChildByTagNameWithOrgW3cDomElement_withNSString_(e, tagName);
  return child != nil ? OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(child) : nil;
}

id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_insertChildWithOrgW3cDomElement_withNSString_withNSString_(id<OrgW3cDomElement> parent, NSString *tagName, NSString *text) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  id<OrgW3cDomElement> child = [((id<OrgW3cDomDocument>) nil_chk([((id<OrgW3cDomElement>) nil_chk(parent)) getOwnerDocument])) createElementWithNSString:tagName];
  [parent appendChildWithOrgW3cDomNode:child];
  if (text != nil) {
    [((id<OrgW3cDomElement>) nil_chk(child)) appendChildWithOrgW3cDomNode:[((id<OrgW3cDomDocument>) nil_chk([child getOwnerDocument])) createTextNodeWithNSString:text]];
  }
  return child;
}

NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(id<OrgW3cDomElement> element, NSString *attributeName, NSString *deflt) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *result = [((id<OrgW3cDomElement>) nil_chk(element)) getAttributeWithNSString:attributeName];
  return (result == nil) || ([@"" isEqual:result]) ? deflt : result;
}

jfloat OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(id<OrgW3cDomElement> element, NSString *attributeName, jfloat deflt) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *result = [((id<OrgW3cDomElement>) nil_chk(element)) getAttributeWithNSString:attributeName];
  return (result == nil) || ([@"" isEqual:result]) ? deflt : JavaLangFloat_parseFloatWithNSString_(result);
}

jint OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(id<OrgW3cDomElement> element, NSString *attributeName, jint deflt) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *result = [((id<OrgW3cDomElement>) nil_chk(element)) getAttributeWithNSString:attributeName];
  return (result == nil) || ([@"" isEqual:result]) ? deflt : JavaLangInteger_parseIntWithNSString_(result);
}

jboolean OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(id<OrgW3cDomElement> element, NSString *attributeName, jboolean deflt) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  NSString *result = [((id<OrgW3cDomElement>) nil_chk(element)) getAttributeWithNSString:attributeName];
  return (result == nil) || ([@"" isEqual:result]) ? deflt : [((JavaLangBoolean *) nil_chk(JavaLangBoolean_valueOfWithNSString_(result))) booleanValue];
}

NSString *OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(id<OrgW3cDomNode> e) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  OrgApacheLuceneQueryparserXmlDOMUtils_getTextBufferWithOrgW3cDomNode_withJavaLangStringBuilder_(e, sb);
  return [sb description];
}

id<OrgW3cDomElement> OrgApacheLuceneQueryparserXmlDOMUtils_getFirstChildElementWithOrgW3cDomElement_(id<OrgW3cDomElement> element) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  for (id<OrgW3cDomNode> kid = [((id<OrgW3cDomElement>) nil_chk(element)) getFirstChild]; kid != nil; kid = [kid getNextSibling]) {
    if ([kid getNodeType] == OrgW3cDomNode_ELEMENT_NODE) {
      return (id<OrgW3cDomElement>) cast_check(kid, OrgW3cDomElement_class_());
    }
  }
  return nil;
}

void OrgApacheLuceneQueryparserXmlDOMUtils_getTextBufferWithOrgW3cDomNode_withJavaLangStringBuilder_(id<OrgW3cDomNode> e, JavaLangStringBuilder *sb) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  for (id<OrgW3cDomNode> kid = [((id<OrgW3cDomNode>) nil_chk(e)) getFirstChild]; kid != nil; kid = [kid getNextSibling]) {
    switch ([kid getNodeType]) {
      case OrgW3cDomNode_TEXT_NODE:
      {
        [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:[kid getNodeValue]];
        break;
      }
      case OrgW3cDomNode_ELEMENT_NODE:
      {
        OrgApacheLuceneQueryparserXmlDOMUtils_getTextBufferWithOrgW3cDomNode_withJavaLangStringBuilder_(kid, sb);
        break;
      }
      case OrgW3cDomNode_ENTITY_REFERENCE_NODE:
      {
        OrgApacheLuceneQueryparserXmlDOMUtils_getTextBufferWithOrgW3cDomNode_withJavaLangStringBuilder_(kid, sb);
        break;
      }
    }
  }
}

id<OrgW3cDomDocument> OrgApacheLuceneQueryparserXmlDOMUtils_loadXMLWithJavaIoReader_(JavaIoReader *is) {
  OrgApacheLuceneQueryparserXmlDOMUtils_initialize();
  JavaxXmlParsersDocumentBuilderFactory *dbf = JavaxXmlParsersDocumentBuilderFactory_newInstance();
  JavaxXmlParsersDocumentBuilder *db = nil;
  @try {
    db = [((JavaxXmlParsersDocumentBuilderFactory *) nil_chk(dbf)) newDocumentBuilder];
  }
  @catch (JavaLangException *se) {
    @throw create_JavaLangRuntimeException_initWithNSString_withNSException_(@"Parser configuration error", se);
  }
  id<OrgW3cDomDocument> doc = nil;
  @try {
    doc = [((JavaxXmlParsersDocumentBuilder *) nil_chk(db)) parseWithOrgXmlSaxInputSource:create_OrgXmlSaxInputSource_initWithJavaIoReader_(is)];
  }
  @catch (JavaLangException *se) {
    @throw create_JavaLangRuntimeException_initWithNSString_withNSException_(JreStrcat("$@", @"Error parsing file:", se), se);
  }
  return doc;
}

void OrgApacheLuceneQueryparserXmlDOMUtils_init(OrgApacheLuceneQueryparserXmlDOMUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserXmlDOMUtils *new_OrgApacheLuceneQueryparserXmlDOMUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlDOMUtils, init)
}

OrgApacheLuceneQueryparserXmlDOMUtils *create_OrgApacheLuceneQueryparserXmlDOMUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlDOMUtils, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlDOMUtils)