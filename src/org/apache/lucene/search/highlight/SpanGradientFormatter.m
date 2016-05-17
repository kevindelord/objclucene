//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/SpanGradientFormatter.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/search/highlight/GradientFormatter.h"
#include "org/apache/lucene/search/highlight/SpanGradientFormatter.h"
#include "org/apache/lucene/search/highlight/TokenGroup.h"

inline NSString *OrgApacheLuceneSearchHighlightSpanGradientFormatter_get_TEMPLATE();
static NSString *OrgApacheLuceneSearchHighlightSpanGradientFormatter_TEMPLATE = @"<span style=\"background: #EEEEEE; color: #000000;\">...</span>";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, TEMPLATE, NSString *)

inline jint OrgApacheLuceneSearchHighlightSpanGradientFormatter_get_EXTRA();
static jint OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, EXTRA, jint)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchHighlightSpanGradientFormatter)

@implementation OrgApacheLuceneSearchHighlightSpanGradientFormatter

- (instancetype)initWithFloat:(jfloat)maxScore
                 withNSString:(NSString *)minForegroundColor
                 withNSString:(NSString *)maxForegroundColor
                 withNSString:(NSString *)minBackgroundColor
                 withNSString:(NSString *)maxBackgroundColor {
  OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(self, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor);
  return self;
}

- (NSString *)highlightTermWithNSString:(NSString *)originalText
withOrgApacheLuceneSearchHighlightTokenGroup:(OrgApacheLuceneSearchHighlightTokenGroup *)tokenGroup {
  if ([((OrgApacheLuceneSearchHighlightTokenGroup *) nil_chk(tokenGroup)) getTotalScore] == 0) return originalText;
  jfloat score = [tokenGroup getTotalScore];
  if (score == 0) {
    return originalText;
  }
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithInt_(((jint) [((NSString *) nil_chk(originalText)) length]) + OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA);
  [sb appendWithNSString:@"<span style=\""];
  if (highlightForeground_) {
    [sb appendWithNSString:@"color: "];
    [sb appendWithNSString:[self getForegroundColorStringWithFloat:score]];
    [sb appendWithNSString:@"; "];
  }
  if (highlightBackground_) {
    [sb appendWithNSString:@"background: "];
    [sb appendWithNSString:[self getBackgroundColorStringWithFloat:score]];
    [sb appendWithNSString:@"; "];
  }
  [sb appendWithNSString:@"\">"];
  [sb appendWithNSString:originalText];
  [sb appendWithNSString:@"</span>"];
  return [sb description];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchHighlightSpanGradientFormatter class]) {
    OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA = ((jint) [((NSString *) nil_chk(OrgApacheLuceneSearchHighlightSpanGradientFormatter_TEMPLATE)) length]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchHighlightSpanGradientFormatter)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withNSString:withNSString:withNSString:withNSString:", "SpanGradientFormatter", NULL, 0x1, NULL, NULL },
    { "highlightTermWithNSString:withOrgApacheLuceneSearchHighlightTokenGroup:", "highlightTerm", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TEMPLATE", "TEMPLATE", 0x1a, "Ljava.lang.String;", &OrgApacheLuceneSearchHighlightSpanGradientFormatter_TEMPLATE, NULL, .constantValue.asLong = 0 },
    { "EXTRA", "EXTRA", 0x1a, "I", &OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightSpanGradientFormatter = { 2, "SpanGradientFormatter", "org.apache.lucene.search.highlight", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightSpanGradientFormatter;
}

@end

void OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneSearchHighlightSpanGradientFormatter *self, jfloat maxScore, NSString *minForegroundColor, NSString *maxForegroundColor, NSString *minBackgroundColor, NSString *maxBackgroundColor) {
  OrgApacheLuceneSearchHighlightGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(self, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor);
}

OrgApacheLuceneSearchHighlightSpanGradientFormatter *new_OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(jfloat maxScore, NSString *minForegroundColor, NSString *maxForegroundColor, NSString *minBackgroundColor, NSString *maxBackgroundColor) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, initWithFloat_withNSString_withNSString_withNSString_withNSString_, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor)
}

OrgApacheLuceneSearchHighlightSpanGradientFormatter *create_OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(jfloat maxScore, NSString *minForegroundColor, NSString *maxForegroundColor, NSString *minBackgroundColor, NSString *maxBackgroundColor) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, initWithFloat_withNSString_withNSString_withNSString_withNSString_, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightSpanGradientFormatter)
