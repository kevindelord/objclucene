//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/SimpleHTMLFormatter.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/search/highlight/SimpleHTMLFormatter.h"
#include "org/apache/lucene/search/highlight/TokenGroup.h"

@interface OrgApacheLuceneSearchHighlightSimpleHTMLFormatter () {
 @public
  NSString *preTag_;
  NSString *postTag_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, preTag_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, postTag_, NSString *)

inline NSString *OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_get_DEFAULT_PRE_TAG();
static NSString *OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_DEFAULT_PRE_TAG = @"<B>";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, DEFAULT_PRE_TAG, NSString *)

inline NSString *OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_get_DEFAULT_POST_TAG();
static NSString *OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_DEFAULT_POST_TAG = @"</B>";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, DEFAULT_POST_TAG, NSString *)

@implementation OrgApacheLuceneSearchHighlightSimpleHTMLFormatter

- (instancetype)initWithNSString:(NSString *)preTag
                    withNSString:(NSString *)postTag {
  OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_initWithNSString_withNSString_(self, preTag, postTag);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)highlightTermWithNSString:(NSString *)originalText
withOrgApacheLuceneSearchHighlightTokenGroup:(OrgApacheLuceneSearchHighlightTokenGroup *)tokenGroup {
  if ([((OrgApacheLuceneSearchHighlightTokenGroup *) nil_chk(tokenGroup)) getTotalScore] <= 0) {
    return originalText;
  }
  JavaLangStringBuilder *returnBuffer = create_JavaLangStringBuilder_initWithInt_(((jint) [((NSString *) nil_chk(preTag_)) length]) + ((jint) [((NSString *) nil_chk(originalText)) length]) + ((jint) [((NSString *) nil_chk(postTag_)) length]));
  [returnBuffer appendWithNSString:preTag_];
  [returnBuffer appendWithNSString:originalText];
  [returnBuffer appendWithNSString:postTag_];
  return [returnBuffer description];
}

- (void)dealloc {
  RELEASE_(preTag_);
  RELEASE_(postTag_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:", "SimpleHTMLFormatter", NULL, 0x1, NULL, NULL },
    { "init", "SimpleHTMLFormatter", NULL, 0x1, NULL, NULL },
    { "highlightTermWithNSString:withOrgApacheLuceneSearchHighlightTokenGroup:", "highlightTerm", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_PRE_TAG", "DEFAULT_PRE_TAG", 0x1a, "Ljava.lang.String;", &OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_DEFAULT_PRE_TAG, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_POST_TAG", "DEFAULT_POST_TAG", 0x1a, "Ljava.lang.String;", &OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_DEFAULT_POST_TAG, NULL, .constantValue.asLong = 0 },
    { "preTag_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "postTag_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightSimpleHTMLFormatter = { 2, "SimpleHTMLFormatter", "org.apache.lucene.search.highlight", NULL, 0x1, 3, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightSimpleHTMLFormatter;
}

@end

void OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_initWithNSString_withNSString_(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter *self, NSString *preTag, NSString *postTag) {
  NSObject_init(self);
  JreStrongAssign(&self->preTag_, preTag);
  JreStrongAssign(&self->postTag_, postTag);
}

OrgApacheLuceneSearchHighlightSimpleHTMLFormatter *new_OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_initWithNSString_withNSString_(NSString *preTag, NSString *postTag) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, initWithNSString_withNSString_, preTag, postTag)
}

OrgApacheLuceneSearchHighlightSimpleHTMLFormatter *create_OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_initWithNSString_withNSString_(NSString *preTag, NSString *postTag) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, initWithNSString_withNSString_, preTag, postTag)
}

void OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_init(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter *self) {
  OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_initWithNSString_withNSString_(self, OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_DEFAULT_PRE_TAG, OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_DEFAULT_POST_TAG);
}

OrgApacheLuceneSearchHighlightSimpleHTMLFormatter *new_OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, init)
}

OrgApacheLuceneSearchHighlightSimpleHTMLFormatter *create_OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightSimpleHTMLFormatter)
