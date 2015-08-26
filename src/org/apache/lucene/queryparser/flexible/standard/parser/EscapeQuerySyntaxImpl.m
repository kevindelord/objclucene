//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/EscapeQuerySyntaxImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Character.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"
#include "org/apache/lucene/queryparser/flexible/core/util/UnescapedCharSequence.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/EscapeQuerySyntaxImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/parser/ParseException.h"

@interface OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl ()

+ (id<JavaLangCharSequence>)escapeCharWithJavaLangCharSequence:(id<JavaLangCharSequence>)str
                                            withJavaUtilLocale:(JavaUtilLocale *)locale;

- (id<JavaLangCharSequence>)escapeQuotedWithJavaLangCharSequence:(id<JavaLangCharSequence>)str
                                              withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (id<JavaLangCharSequence>)escapeTermWithJavaLangCharSequence:(id<JavaLangCharSequence>)term
                                            withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (id<JavaLangCharSequence>)replaceIgnoreCaseWithJavaLangCharSequence:(id<JavaLangCharSequence>)string
                                             withJavaLangCharSequence:(id<JavaLangCharSequence>)sequence1
                                             withJavaLangCharSequence:(id<JavaLangCharSequence>)escapeChar
                                                   withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (id<JavaLangCharSequence>)escapeWhiteCharWithJavaLangCharSequence:(id<JavaLangCharSequence>)str
                                                 withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (jint)hexToIntWithChar:(jchar)c;

@end

static IOSCharArray *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_wildcardChars_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl, wildcardChars_, IOSCharArray *)

static IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermExtraFirstChars_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl, escapableTermExtraFirstChars_, IOSObjectArray *)

static IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermChars_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl, escapableTermChars_, IOSObjectArray *)

static IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableQuotedChars_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl, escapableQuotedChars_, IOSObjectArray *)

static IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWhiteChars_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl, escapableWhiteChars_, IOSObjectArray *)

static IOSObjectArray *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWordTokens_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl, escapableWordTokens_, IOSObjectArray *)

__attribute__((unused)) static id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeCharWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> str, JavaUtilLocale *locale);

__attribute__((unused)) static id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeQuotedWithJavaLangCharSequence_withJavaUtilLocale_(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *self, id<JavaLangCharSequence> str, JavaUtilLocale *locale);

__attribute__((unused)) static id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeTermWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> term, JavaUtilLocale *locale);

__attribute__((unused)) static id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_replaceIgnoreCaseWithJavaLangCharSequence_withJavaLangCharSequence_withJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> string, id<JavaLangCharSequence> sequence1, id<JavaLangCharSequence> escapeChar, JavaUtilLocale *locale);

__attribute__((unused)) static id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeWhiteCharWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> str, JavaUtilLocale *locale);

__attribute__((unused)) static jint OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_hexToIntWithChar_(jchar c);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl)

@implementation OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl

+ (id<JavaLangCharSequence>)escapeCharWithJavaLangCharSequence:(id<JavaLangCharSequence>)str
                                            withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeCharWithJavaLangCharSequence_withJavaUtilLocale_(str, locale);
}

- (id<JavaLangCharSequence>)escapeQuotedWithJavaLangCharSequence:(id<JavaLangCharSequence>)str
                                              withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeQuotedWithJavaLangCharSequence_withJavaUtilLocale_(self, str, locale);
}

+ (id<JavaLangCharSequence>)escapeTermWithJavaLangCharSequence:(id<JavaLangCharSequence>)term
                                            withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeTermWithJavaLangCharSequence_withJavaUtilLocale_(term, locale);
}

+ (id<JavaLangCharSequence>)replaceIgnoreCaseWithJavaLangCharSequence:(id<JavaLangCharSequence>)string
                                             withJavaLangCharSequence:(id<JavaLangCharSequence>)sequence1
                                             withJavaLangCharSequence:(id<JavaLangCharSequence>)escapeChar
                                                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_replaceIgnoreCaseWithJavaLangCharSequence_withJavaLangCharSequence_withJavaLangCharSequence_withJavaUtilLocale_(string, sequence1, escapeChar, locale);
}

+ (id<JavaLangCharSequence>)escapeWhiteCharWithJavaLangCharSequence:(id<JavaLangCharSequence>)str
                                                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeWhiteCharWithJavaLangCharSequence_withJavaUtilLocale_(str, locale);
}

- (id<JavaLangCharSequence>)escapeWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                        withJavaUtilLocale:(JavaUtilLocale *)locale
withOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax_TypeEnum:(OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax_TypeEnum *)type {
  if (text == nil || [text length] == 0) return text;
  if ([text isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class]]) {
    text = [((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) check_class_cast(text, [OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence class])))) toStringEscapedWithCharArray:OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_wildcardChars_];
  }
  else {
    text = [((OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *) [new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithJavaLangCharSequence_(text) autorelease]) toStringEscapedWithCharArray:OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_wildcardChars_];
  }
  if (type == JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax_TypeEnum, STRING)) {
    return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeQuotedWithJavaLangCharSequence_withJavaUtilLocale_(self, text, locale);
  }
  else {
    return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeTermWithJavaLangCharSequence_withJavaUtilLocale_(text, locale);
  }
}

+ (OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *)discardEscapeCharWithJavaLangCharSequence:(id<JavaLangCharSequence>)input {
  return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_discardEscapeCharWithJavaLangCharSequence_(input);
}

+ (jint)hexToIntWithChar:(jchar)c {
  return OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_hexToIntWithChar_(c);
}

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_wildcardChars_, [IOSCharArray newArrayWithChars:(jchar[]){ '*', '?' } count:2]);
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermExtraFirstChars_, [IOSObjectArray newArrayWithObjects:(id[]){ @"+", @"-", @"@" } count:3 type:NSString_class_()]);
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermChars_, [IOSObjectArray newArrayWithObjects:(id[]){ @"\"", @"<", @">", @"=", @"!", @"(", @")", @"^", @"[", @"{", @":", @"]", @"}", @"~", @"/" } count:15 type:NSString_class_()]);
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableQuotedChars_, [IOSObjectArray newArrayWithObjects:(id[]){ @"\"" } count:1 type:NSString_class_()]);
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWhiteChars_, [IOSObjectArray newArrayWithObjects:(id[]){ @" ", @"\t", @"\n", @"\x0d", @"\x0c", @"\x08", @"\u3000" } count:7 type:NSString_class_()]);
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWordTokens_, [IOSObjectArray newArrayWithObjects:(id[]){ @"AND", @"OR", @"NOT", @"TO", @"WITHIN", @"SENTENCE", @"PARAGRAPH", @"INORDER" } count:8 type:NSString_class_()]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "escapeCharWithJavaLangCharSequence:withJavaUtilLocale:", "escapeChar", "Ljava.lang.CharSequence;", 0x1a, NULL, NULL },
    { "escapeQuotedWithJavaLangCharSequence:withJavaUtilLocale:", "escapeQuoted", "Ljava.lang.CharSequence;", 0x12, NULL, NULL },
    { "escapeTermWithJavaLangCharSequence:withJavaUtilLocale:", "escapeTerm", "Ljava.lang.CharSequence;", 0x1a, NULL, NULL },
    { "replaceIgnoreCaseWithJavaLangCharSequence:withJavaLangCharSequence:withJavaLangCharSequence:withJavaUtilLocale:", "replaceIgnoreCase", "Ljava.lang.CharSequence;", 0xa, NULL, NULL },
    { "escapeWhiteCharWithJavaLangCharSequence:withJavaUtilLocale:", "escapeWhiteChar", "Ljava.lang.CharSequence;", 0x1a, NULL, NULL },
    { "escapeWithJavaLangCharSequence:withJavaUtilLocale:withOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax_TypeEnum:", "escape", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "discardEscapeCharWithJavaLangCharSequence:", "discardEscapeChar", "Lorg.apache.lucene.queryparser.flexible.core.util.UnescapedCharSequence;", 0x9, "Lorg.apache.lucene.queryparser.flexible.standard.parser.ParseException;", NULL },
    { "hexToIntWithChar:", "hexToInt", "I", 0x1a, "Lorg.apache.lucene.queryparser.flexible.standard.parser.ParseException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "wildcardChars_", NULL, 0x1a, "[C", &OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_wildcardChars_, NULL, .constantValue.asLong = 0 },
    { "escapableTermExtraFirstChars_", NULL, 0x1a, "[Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermExtraFirstChars_, NULL, .constantValue.asLong = 0 },
    { "escapableTermChars_", NULL, 0x1a, "[Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermChars_, NULL, .constantValue.asLong = 0 },
    { "escapableQuotedChars_", NULL, 0x1a, "[Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableQuotedChars_, NULL, .constantValue.asLong = 0 },
    { "escapableWhiteChars_", NULL, 0x1a, "[Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWhiteChars_, NULL, .constantValue.asLong = 0 },
    { "escapableWordTokens_", NULL, 0x1a, "[Ljava.lang.String;", &OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWordTokens_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl = { 2, "EscapeQuerySyntaxImpl", "org.apache.lucene.queryparser.flexible.standard.parser", NULL, 0x1, 9, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl;
}

@end

id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeCharWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> str, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_initialize();
  if (str == nil || [str length] == 0) return str;
  id<JavaLangCharSequence> buffer = str;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermChars_))->size_; i++) {
    buffer = OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_replaceIgnoreCaseWithJavaLangCharSequence_withJavaLangCharSequence_withJavaLangCharSequence_withJavaUtilLocale_(buffer, [((NSString *) nil_chk(IOSObjectArray_Get(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermChars_, i))) lowercaseStringWithJRELocale:locale], @"\\", locale);
  }
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermExtraFirstChars_))->size_; i++) {
    if ([((id<JavaLangCharSequence>) nil_chk(buffer)) charAtWithInt:0] == [((NSString *) nil_chk(IOSObjectArray_Get(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermExtraFirstChars_, i))) charAtWithInt:0]) {
      buffer = JreStrcat("CC@", '\\', [buffer charAtWithInt:0], [buffer subSequenceFrom:1 to:[buffer length]]);
      break;
    }
  }
  return buffer;
}

id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeQuotedWithJavaLangCharSequence_withJavaUtilLocale_(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *self, id<JavaLangCharSequence> str, JavaUtilLocale *locale) {
  if (str == nil || [str length] == 0) return str;
  id<JavaLangCharSequence> buffer = str;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableQuotedChars_))->size_; i++) {
    buffer = OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_replaceIgnoreCaseWithJavaLangCharSequence_withJavaLangCharSequence_withJavaLangCharSequence_withJavaUtilLocale_(buffer, [((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableTermChars_), i))) lowercaseStringWithJRELocale:locale], @"\\", locale);
  }
  return buffer;
}

id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeTermWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> term, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_initialize();
  if (term == nil) return term;
  term = OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeCharWithJavaLangCharSequence_withJavaUtilLocale_(term, locale);
  term = OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeWhiteCharWithJavaLangCharSequence_withJavaUtilLocale_(term, locale);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWordTokens_))->size_; i++) {
    if ([((NSString *) nil_chk(IOSObjectArray_Get(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWordTokens_, i))) equalsIgnoreCase:[((id<JavaLangCharSequence>) nil_chk(term)) description]]) return JreStrcat("C@", '\\', term);
  }
  return term;
}

id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_replaceIgnoreCaseWithJavaLangCharSequence_withJavaLangCharSequence_withJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> string, id<JavaLangCharSequence> sequence1, id<JavaLangCharSequence> escapeChar, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_initialize();
  if (escapeChar == nil || sequence1 == nil || string == nil) @throw [new_JavaLangNullPointerException_init() autorelease];
  jint count = [((id<JavaLangCharSequence>) nil_chk(string)) length];
  jint sequence1Length = [((id<JavaLangCharSequence>) nil_chk(sequence1)) length];
  if (sequence1Length == 0) {
    JavaLangStringBuilder *result = [new_JavaLangStringBuilder_initWithInt_((count + 1) * [((id<JavaLangCharSequence>) nil_chk(escapeChar)) length]) autorelease];
    [result appendWithJavaLangCharSequence:escapeChar];
    for (jint i = 0; i < count; i++) {
      [result appendWithChar:[string charAtWithInt:i]];
      [result appendWithJavaLangCharSequence:escapeChar];
    }
    return [result description];
  }
  JavaLangStringBuilder *result = [new_JavaLangStringBuilder_init() autorelease];
  jchar first = [sequence1 charAtWithInt:0];
  jint start = 0, copyStart = 0, firstIndex;
  while (start < count) {
    if ((firstIndex = [((NSString *) nil_chk([((NSString *) nil_chk([string description])) lowercaseStringWithJRELocale:locale])) indexOf:first fromIndex:start]) == -1) break;
    jboolean found = YES;
    if ([sequence1 length] > 1) {
      if (firstIndex + sequence1Length > count) break;
      for (jint i = 1; i < sequence1Length; i++) {
        if ([((NSString *) nil_chk([((NSString *) nil_chk([string description])) lowercaseStringWithJRELocale:locale])) charAtWithInt:firstIndex + i] != [sequence1 charAtWithInt:i]) {
          found = NO;
          break;
        }
      }
    }
    if (found) {
      [result appendWithNSString:[((NSString *) nil_chk([string description])) substring:copyStart endIndex:firstIndex]];
      [result appendWithJavaLangCharSequence:escapeChar];
      [result appendWithNSString:[((NSString *) nil_chk([string description])) substring:firstIndex endIndex:firstIndex + sequence1Length]];
      copyStart = start = firstIndex + sequence1Length;
    }
    else {
      start = firstIndex + 1;
    }
  }
  if ([result length] == 0 && copyStart == 0) return string;
  [result appendWithNSString:[((NSString *) nil_chk([string description])) substring:copyStart]];
  return [result description];
}

id<JavaLangCharSequence> OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapeWhiteCharWithJavaLangCharSequence_withJavaUtilLocale_(id<JavaLangCharSequence> str, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_initialize();
  if (str == nil || [str length] == 0) return str;
  id<JavaLangCharSequence> buffer = str;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWhiteChars_))->size_; i++) {
    buffer = OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_replaceIgnoreCaseWithJavaLangCharSequence_withJavaLangCharSequence_withJavaLangCharSequence_withJavaUtilLocale_(buffer, [((NSString *) nil_chk(IOSObjectArray_Get(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_escapableWhiteChars_, i))) lowercaseStringWithJRELocale:locale], @"\\", locale);
  }
  return buffer;
}

OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_discardEscapeCharWithJavaLangCharSequence_(id<JavaLangCharSequence> input) {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_initialize();
  IOSCharArray *output = [IOSCharArray arrayWithLength:[((id<JavaLangCharSequence>) nil_chk(input)) length]];
  IOSBooleanArray *wasEscaped = [IOSBooleanArray arrayWithLength:[input length]];
  jint length = 0;
  jboolean lastCharWasEscapeChar = NO;
  jint codePointMultiplier = 0;
  jint codePoint = 0;
  for (jint i = 0; i < [input length]; i++) {
    jchar curChar = [input charAtWithInt:i];
    if (codePointMultiplier > 0) {
      codePoint += OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_hexToIntWithChar_(curChar) * codePointMultiplier;
      JreURShiftAssignInt(&codePointMultiplier, 4);
      if (codePointMultiplier == 0) {
        *IOSCharArray_GetRef(output, length++) = (jchar) codePoint;
        codePoint = 0;
      }
    }
    else if (lastCharWasEscapeChar) {
      if (curChar == 'u') {
        codePointMultiplier = 16 * 16 * 16;
      }
      else {
        *IOSCharArray_GetRef(output, length) = curChar;
        *IOSBooleanArray_GetRef(wasEscaped, length) = YES;
        length++;
      }
      lastCharWasEscapeChar = NO;
    }
    else {
      if (curChar == '\\') {
        lastCharWasEscapeChar = YES;
      }
      else {
        *IOSCharArray_GetRef(output, length) = curChar;
        length++;
      }
    }
  }
  if (codePointMultiplier > 0) {
    @throw [new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_([new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, INVALID_SYNTAX_ESCAPE_UNICODE_TRUNCATION_)) autorelease]) autorelease];
  }
  if (lastCharWasEscapeChar) {
    @throw [new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_([new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, INVALID_SYNTAX_ESCAPE_CHARACTER_)) autorelease]) autorelease];
  }
  return [new_OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence_initWithCharArray_withBooleanArray_withInt_withInt_(output, wasEscaped, 0, length) autorelease];
}

jint OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_hexToIntWithChar_(jchar c) {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_initialize();
  if ('0' <= c && c <= '9') {
    return c - '0';
  }
  else if ('a' <= c && c <= 'f') {
    return c - 'a' + 10;
  }
  else if ('A' <= c && c <= 'F') {
    return c - 'A' + 10;
  }
  else {
    @throw [new_OrgApacheLuceneQueryparserFlexibleStandardParserParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_([new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, INVALID_SYNTAX_ESCAPE_NONE_HEX_UNICODE_), [IOSObjectArray arrayWithObjects:(id[]){ JavaLangCharacter_valueOfWithChar_(c) } count:1 type:NSObject_class_()]) autorelease]) autorelease];
  }
}

void OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *new_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init() {
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *self = [OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl alloc];
  OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl)