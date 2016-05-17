//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternReplaceCharFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/io/StringReader.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/charfilter/BaseCharFilter.h"
#include "org/apache/lucene/analysis/pattern/PatternReplaceCharFilter.h"

@interface OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter () {
 @public
  JavaUtilRegexPattern *pattern_;
  NSString *replacement_;
  JavaIoReader *transformedInput_;
}

- (void)fill;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter, pattern_, JavaUtilRegexPattern *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter, replacement_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter, transformedInput_, JavaIoReader *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_fill(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter *self);

@implementation OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter

- (instancetype)initWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern
                                withNSString:(NSString *)replacement
                            withJavaIoReader:(JavaIoReader *)inArg {
  OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_(self, pattern, replacement, inArg);
  return self;
}

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len {
  if (transformedInput_ == nil) {
    OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_fill(self);
  }
  return [((JavaIoReader *) nil_chk(transformedInput_)) readWithCharArray:cbuf withInt:off withInt:len];
}

- (void)fill {
  OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_fill(self);
}

- (jint)read {
  if (transformedInput_ == nil) {
    OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_fill(self);
  }
  return [((JavaIoReader *) nil_chk(transformedInput_)) read];
}

- (jint)correctWithInt:(jint)currentOff {
  return JavaLangMath_maxWithInt_withInt_(0, [super correctWithInt:currentOff]);
}

- (id<JavaLangCharSequence>)processPatternWithJavaLangCharSequence:(id<JavaLangCharSequence>)input {
  JavaUtilRegexMatcher *m = [((JavaUtilRegexPattern *) nil_chk(pattern_)) matcherWithJavaLangCharSequence:input];
  JavaLangStringBuffer *cumulativeOutput = create_JavaLangStringBuffer_init();
  jint cumulative = 0;
  jint lastMatchEnd = 0;
  while ([((JavaUtilRegexMatcher *) nil_chk(m)) find]) {
    jint groupSize = [m end] - [m start];
    jint skippedSize = [m start] - lastMatchEnd;
    lastMatchEnd = [m end];
    jint lengthBeforeReplacement = [cumulativeOutput length] + skippedSize;
    [m appendReplacementWithJavaLangStringBuffer:cumulativeOutput withNSString:replacement_];
    jint replacementSize = [cumulativeOutput length] - lengthBeforeReplacement;
    if (groupSize != replacementSize) {
      if (replacementSize < groupSize) {
        cumulative += groupSize - replacementSize;
        jint atIndex = lengthBeforeReplacement + replacementSize;
        [self addOffCorrectMapWithInt:atIndex withInt:cumulative];
      }
      else {
        for (jint i = groupSize; i < replacementSize; i++) {
          [self addOffCorrectMapWithInt:lengthBeforeReplacement + i withInt:--cumulative];
        }
      }
    }
  }
  [m appendTailWithJavaLangStringBuffer:cumulativeOutput];
  return cumulativeOutput;
}

- (void)dealloc {
  RELEASE_(pattern_);
  RELEASE_(replacement_);
  RELEASE_(transformedInput_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilRegexPattern:withNSString:withJavaIoReader:", "PatternReplaceCharFilter", NULL, 0x1, NULL, NULL },
    { "readWithCharArray:withInt:withInt:", "read", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "fill", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "read", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "correctWithInt:", "correct", "I", 0x4, NULL, NULL },
    { "processPatternWithJavaLangCharSequence:", "processPattern", "Ljava.lang.CharSequence;", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pattern_", NULL, 0x12, "Ljava.util.regex.Pattern;", NULL, NULL, .constantValue.asLong = 0 },
    { "replacement_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "transformedInput_", NULL, 0x2, "Ljava.io.Reader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter = { 2, "PatternReplaceCharFilter", "org.apache.lucene.analysis.pattern", NULL, 0x1, 6, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter;
}

@end

void OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter *self, JavaUtilRegexPattern *pattern, NSString *replacement, JavaIoReader *inArg) {
  OrgApacheLuceneAnalysisCharfilterBaseCharFilter_initWithJavaIoReader_(self, inArg);
  JreStrongAssign(&self->pattern_, pattern);
  JreStrongAssign(&self->replacement_, replacement);
}

OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter *new_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_(JavaUtilRegexPattern *pattern, NSString *replacement, JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter, initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_, pattern, replacement, inArg)
}

OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter *create_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_(JavaUtilRegexPattern *pattern, NSString *replacement, JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter, initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_, pattern, replacement, inArg)
}

void OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_fill(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter *self) {
  JavaLangStringBuilder *buffered = create_JavaLangStringBuilder_init();
  IOSCharArray *temp = [IOSCharArray arrayWithLength:1024];
  for (jint cnt = [((JavaIoReader *) nil_chk(self->input_)) readWithCharArray:temp]; cnt > 0; cnt = [self->input_ readWithCharArray:temp]) {
    [buffered appendWithCharArray:temp withInt:0 withInt:cnt];
  }
  JreStrongAssignAndConsume(&self->transformedInput_, new_JavaIoStringReader_initWithNSString_([((id<JavaLangCharSequence>) nil_chk([self processPatternWithJavaLangCharSequence:buffered])) description]));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter)
