//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/Token.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/Token.h"

/*!
 @brief The version identifier for this Serializable class.
 Increment only if the <i>serialized</i> form of the
 class changes.
 */
inline jlong OrgApacheLuceneQueryparserFlexibleStandardParserToken_get_serialVersionUID();
#define OrgApacheLuceneQueryparserFlexibleStandardParserToken_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserFlexibleStandardParserToken, serialVersionUID, jlong)

@implementation OrgApacheLuceneQueryparserFlexibleStandardParserToken

- (id)getValue {
  return nil;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardParserToken_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)kind {
  OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_(self, kind);
  return self;
}

- (instancetype)initWithInt:(jint)kind
               withNSString:(NSString *)image {
  OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_withNSString_(self, kind, image);
  return self;
}

- (NSString *)description {
  return image_;
}

+ (OrgApacheLuceneQueryparserFlexibleStandardParserToken *)newTokenWithInt:(jint)ofKind
                                                              withNSString:(NSString *)image {
  return OrgApacheLuceneQueryparserFlexibleStandardParserToken_newTokenWithInt_withNSString_(ofKind, image);
}

+ (OrgApacheLuceneQueryparserFlexibleStandardParserToken *)newTokenWithInt:(jint)ofKind {
  return OrgApacheLuceneQueryparserFlexibleStandardParserToken_newTokenWithInt_(ofKind);
}

- (void)dealloc {
  RELEASE_(image_);
  RELEASE_(next_);
  RELEASE_(specialToken_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "init", "Token", NULL, 0x1, NULL, NULL },
    { "initWithInt:", "Token", NULL, 0x1, NULL, NULL },
    { "initWithInt:withNSString:", "Token", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "newTokenWithInt:withNSString:", "newToken", "Lorg.apache.lucene.queryparser.flexible.standard.parser.Token;", 0x9, NULL, NULL },
    { "newTokenWithInt:", "newToken", "Lorg.apache.lucene.queryparser.flexible.standard.parser.Token;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneQueryparserFlexibleStandardParserToken_serialVersionUID },
    { "kind_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "beginLine_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "beginColumn_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endLine_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endColumn_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "image_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "next_", NULL, 0x1, "Lorg.apache.lucene.queryparser.flexible.standard.parser.Token;", NULL, NULL, .constantValue.asLong = 0 },
    { "specialToken_", NULL, 0x1, "Lorg.apache.lucene.queryparser.flexible.standard.parser.Token;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardParserToken = { 2, "Token", "org.apache.lucene.queryparser.flexible.standard.parser", NULL, 0x1, 7, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardParserToken;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardParserToken_init(OrgApacheLuceneQueryparserFlexibleStandardParserToken *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *new_OrgApacheLuceneQueryparserFlexibleStandardParserToken_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserToken, init)
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *create_OrgApacheLuceneQueryparserFlexibleStandardParserToken_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserToken, init)
}

void OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *self, jint kind) {
  OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_withNSString_(self, kind, nil);
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *new_OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_(jint kind) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserToken, initWithInt_, kind)
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *create_OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_(jint kind) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserToken, initWithInt_, kind)
}

void OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_withNSString_(OrgApacheLuceneQueryparserFlexibleStandardParserToken *self, jint kind, NSString *image) {
  NSObject_init(self);
  self->kind_ = kind;
  JreStrongAssign(&self->image_, image);
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *new_OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_withNSString_(jint kind, NSString *image) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserToken, initWithInt_withNSString_, kind, image)
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *create_OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_withNSString_(jint kind, NSString *image) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardParserToken, initWithInt_withNSString_, kind, image)
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *OrgApacheLuceneQueryparserFlexibleStandardParserToken_newTokenWithInt_withNSString_(jint ofKind, NSString *image) {
  OrgApacheLuceneQueryparserFlexibleStandardParserToken_initialize();
  switch (ofKind) {
    default:
    return create_OrgApacheLuceneQueryparserFlexibleStandardParserToken_initWithInt_withNSString_(ofKind, image);
  }
}

OrgApacheLuceneQueryparserFlexibleStandardParserToken *OrgApacheLuceneQueryparserFlexibleStandardParserToken_newTokenWithInt_(jint ofKind) {
  OrgApacheLuceneQueryparserFlexibleStandardParserToken_initialize();
  return OrgApacheLuceneQueryparserFlexibleStandardParserToken_newTokenWithInt_withNSString_(ofKind, nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardParserToken)
