//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/Highlighter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/search/highlight/DefaultEncoder.h"
#include "org/apache/lucene/search/highlight/Encoder.h"
#include "org/apache/lucene/search/highlight/Formatter.h"
#include "org/apache/lucene/search/highlight/Fragmenter.h"
#include "org/apache/lucene/search/highlight/Highlighter.h"
#include "org/apache/lucene/search/highlight/InvalidTokenOffsetsException.h"
#include "org/apache/lucene/search/highlight/QueryScorer.h"
#include "org/apache/lucene/search/highlight/Scorer.h"
#include "org/apache/lucene/search/highlight/SimpleFragmenter.h"
#include "org/apache/lucene/search/highlight/SimpleHTMLFormatter.h"
#include "org/apache/lucene/search/highlight/TextFragment.h"
#include "org/apache/lucene/search/highlight/TokenGroup.h"
#include "org/apache/lucene/util/PriorityQueue.h"

@interface OrgApacheLuceneSearchHighlightHighlighter () {
 @public
  jint maxDocCharsToAnalyze_;
  id<OrgApacheLuceneSearchHighlightFormatter> formatter_;
  id<OrgApacheLuceneSearchHighlightEncoder> encoder_;
  id<OrgApacheLuceneSearchHighlightFragmenter> textFragmenter_;
  id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer_;
}

/*!
 @brief Improves readability of a score-sorted list of TextFragments by merging any fragments
 that were contiguous in the original text into one larger fragment with the correct order.
 This will leave a "null" in the array entry for the lesser scored fragment.
 @param frag An array of document fragments in descending score
 */
- (void)mergeContiguousFragmentsWithOrgApacheLuceneSearchHighlightTextFragmentArray:(IOSObjectArray *)frag;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightHighlighter, formatter_, id<OrgApacheLuceneSearchHighlightFormatter>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightHighlighter, encoder_, id<OrgApacheLuceneSearchHighlightEncoder>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightHighlighter, textFragmenter_, id<OrgApacheLuceneSearchHighlightFragmenter>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightHighlighter, fragmentScorer_, id<OrgApacheLuceneSearchHighlightScorer>)

__attribute__((unused)) static NSString *OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentWithOrgApacheLuceneAnalysisTokenStream_withNSString_(OrgApacheLuceneSearchHighlightHighlighter *self, OrgApacheLuceneAnalysisTokenStream *tokenStream, NSString *text);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withInt_(OrgApacheLuceneSearchHighlightHighlighter *self, OrgApacheLuceneAnalysisTokenStream *tokenStream, NSString *text, jint maxNumFragments);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightHighlighter_getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withBoolean_withInt_(OrgApacheLuceneSearchHighlightHighlighter *self, OrgApacheLuceneAnalysisTokenStream *tokenStream, NSString *text, jboolean mergeContiguousFragments, jint maxNumFragments);

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightHighlighter_mergeContiguousFragmentsWithOrgApacheLuceneSearchHighlightTextFragmentArray_(OrgApacheLuceneSearchHighlightHighlighter *self, IOSObjectArray *frag);

@implementation OrgApacheLuceneSearchHighlightHighlighter

+ (jint)DEFAULT_MAX_CHARS_TO_ANALYZE {
  return OrgApacheLuceneSearchHighlightHighlighter_DEFAULT_MAX_CHARS_TO_ANALYZE;
}

- (instancetype)initWithOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)fragmentScorer {
  OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightScorer_(self, fragmentScorer);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchHighlightFormatter:(id<OrgApacheLuceneSearchHighlightFormatter>)formatter
                       withOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)fragmentScorer {
  OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(self, formatter, fragmentScorer);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchHighlightFormatter:(id<OrgApacheLuceneSearchHighlightFormatter>)formatter
                      withOrgApacheLuceneSearchHighlightEncoder:(id<OrgApacheLuceneSearchHighlightEncoder>)encoder
                       withOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)fragmentScorer {
  OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(self, formatter, encoder, fragmentScorer);
  return self;
}

- (NSString *)getBestFragmentWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
                                                    withNSString:(NSString *)text {
  OrgApacheLuceneAnalysisTokenStream *tokenStream = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) tokenStreamWithNSString:fieldName withNSString:text];
  return OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentWithOrgApacheLuceneAnalysisTokenStream_withNSString_(self, tokenStream, text);
}

- (NSString *)getBestFragmentWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                       withNSString:(NSString *)text {
  return OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentWithOrgApacheLuceneAnalysisTokenStream_withNSString_(self, tokenStream, text);
}

- (IOSObjectArray *)getBestFragmentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                           withNSString:(NSString *)fieldName
                                                           withNSString:(NSString *)text
                                                                withInt:(jint)maxNumFragments {
  OrgApacheLuceneAnalysisTokenStream *tokenStream = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) tokenStreamWithNSString:fieldName withNSString:text];
  return OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withInt_(self, tokenStream, text, maxNumFragments);
}

- (IOSObjectArray *)getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                              withNSString:(NSString *)text
                                                                   withInt:(jint)maxNumFragments {
  return OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withInt_(self, tokenStream, text, maxNumFragments);
}

- (IOSObjectArray *)getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                                  withNSString:(NSString *)text
                                                                   withBoolean:(jboolean)mergeContiguousFragments
                                                                       withInt:(jint)maxNumFragments {
  return OrgApacheLuceneSearchHighlightHighlighter_getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withBoolean_withInt_(self, tokenStream, text, mergeContiguousFragments, maxNumFragments);
}

- (void)mergeContiguousFragmentsWithOrgApacheLuceneSearchHighlightTextFragmentArray:(IOSObjectArray *)frag {
  OrgApacheLuceneSearchHighlightHighlighter_mergeContiguousFragmentsWithOrgApacheLuceneSearchHighlightTextFragmentArray_(self, frag);
}

- (NSString *)getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
                                                        withNSString:(NSString *)text
                                                             withInt:(jint)maxNumFragments
                                                        withNSString:(NSString *)separator {
  IOSObjectArray *sections = OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withInt_(self, tokenStream, text, maxNumFragments);
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(sections))->size_; i++) {
    if (i > 0) {
      [result appendWithNSString:separator];
    }
    [result appendWithNSString:IOSObjectArray_Get(sections, i)];
  }
  return [result description];
}

- (jint)getMaxDocCharsToAnalyze {
  return maxDocCharsToAnalyze_;
}

- (void)setMaxDocCharsToAnalyzeWithInt:(jint)maxDocCharsToAnalyze {
  self->maxDocCharsToAnalyze_ = maxDocCharsToAnalyze;
}

- (id<OrgApacheLuceneSearchHighlightFragmenter>)getTextFragmenter {
  return textFragmenter_;
}

- (void)setTextFragmenterWithOrgApacheLuceneSearchHighlightFragmenter:(id<OrgApacheLuceneSearchHighlightFragmenter>)fragmenter {
  JreStrongAssign(&textFragmenter_, fragmenter);
}

- (id<OrgApacheLuceneSearchHighlightScorer>)getFragmentScorer {
  return fragmentScorer_;
}

- (void)setFragmentScorerWithOrgApacheLuceneSearchHighlightScorer:(id<OrgApacheLuceneSearchHighlightScorer>)scorer {
  JreStrongAssign(&fragmentScorer_, scorer);
}

- (id<OrgApacheLuceneSearchHighlightEncoder>)getEncoder {
  return encoder_;
}

- (void)setEncoderWithOrgApacheLuceneSearchHighlightEncoder:(id<OrgApacheLuceneSearchHighlightEncoder>)encoder {
  JreStrongAssign(&self->encoder_, encoder);
}

- (void)dealloc {
  RELEASE_(formatter_);
  RELEASE_(encoder_);
  RELEASE_(textFragmenter_);
  RELEASE_(fragmentScorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchHighlightScorer:", "Highlighter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchHighlightFormatter:withOrgApacheLuceneSearchHighlightScorer:", "Highlighter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchHighlightFormatter:withOrgApacheLuceneSearchHighlightEncoder:withOrgApacheLuceneSearchHighlightScorer:", "Highlighter", NULL, 0x1, NULL, NULL },
    { "getBestFragmentWithOrgApacheLuceneAnalysisAnalyzer:withNSString:withNSString:", "getBestFragment", "Ljava.lang.String;", 0x11, "Ljava.io.IOException;Lorg.apache.lucene.search.highlight.InvalidTokenOffsetsException;", NULL },
    { "getBestFragmentWithOrgApacheLuceneAnalysisTokenStream:withNSString:", "getBestFragment", "Ljava.lang.String;", 0x11, "Ljava.io.IOException;Lorg.apache.lucene.search.highlight.InvalidTokenOffsetsException;", NULL },
    { "getBestFragmentsWithOrgApacheLuceneAnalysisAnalyzer:withNSString:withNSString:withInt:", "getBestFragments", "[Ljava.lang.String;", 0x11, "Ljava.io.IOException;Lorg.apache.lucene.search.highlight.InvalidTokenOffsetsException;", NULL },
    { "getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream:withNSString:withInt:", "getBestFragments", "[Ljava.lang.String;", 0x11, "Ljava.io.IOException;Lorg.apache.lucene.search.highlight.InvalidTokenOffsetsException;", NULL },
    { "getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream:withNSString:withBoolean:withInt:", "getBestTextFragments", "[Lorg.apache.lucene.search.highlight.TextFragment;", 0x11, "Ljava.io.IOException;Lorg.apache.lucene.search.highlight.InvalidTokenOffsetsException;", NULL },
    { "mergeContiguousFragmentsWithOrgApacheLuceneSearchHighlightTextFragmentArray:", "mergeContiguousFragments", "V", 0x2, NULL, NULL },
    { "getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream:withNSString:withInt:withNSString:", "getBestFragments", "Ljava.lang.String;", 0x11, "Ljava.io.IOException;Lorg.apache.lucene.search.highlight.InvalidTokenOffsetsException;", NULL },
    { "getMaxDocCharsToAnalyze", NULL, "I", 0x1, NULL, NULL },
    { "setMaxDocCharsToAnalyzeWithInt:", "setMaxDocCharsToAnalyze", "V", 0x1, NULL, NULL },
    { "getTextFragmenter", NULL, "Lorg.apache.lucene.search.highlight.Fragmenter;", 0x1, NULL, NULL },
    { "setTextFragmenterWithOrgApacheLuceneSearchHighlightFragmenter:", "setTextFragmenter", "V", 0x1, NULL, NULL },
    { "getFragmentScorer", NULL, "Lorg.apache.lucene.search.highlight.Scorer;", 0x1, NULL, NULL },
    { "setFragmentScorerWithOrgApacheLuceneSearchHighlightScorer:", "setFragmentScorer", "V", 0x1, NULL, NULL },
    { "getEncoder", NULL, "Lorg.apache.lucene.search.highlight.Encoder;", 0x1, NULL, NULL },
    { "setEncoderWithOrgApacheLuceneSearchHighlightEncoder:", "setEncoder", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_CHARS_TO_ANALYZE", "DEFAULT_MAX_CHARS_TO_ANALYZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchHighlightHighlighter_DEFAULT_MAX_CHARS_TO_ANALYZE },
    { "maxDocCharsToAnalyze_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "formatter_", NULL, 0x2, "Lorg.apache.lucene.search.highlight.Formatter;", NULL, NULL, .constantValue.asLong = 0 },
    { "encoder_", NULL, 0x2, "Lorg.apache.lucene.search.highlight.Encoder;", NULL, NULL, .constantValue.asLong = 0 },
    { "textFragmenter_", NULL, 0x2, "Lorg.apache.lucene.search.highlight.Fragmenter;", NULL, NULL, .constantValue.asLong = 0 },
    { "fragmentScorer_", NULL, 0x2, "Lorg.apache.lucene.search.highlight.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightHighlighter = { 2, "Highlighter", "org.apache.lucene.search.highlight", NULL, 0x1, 18, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightHighlighter;
}

@end

void OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightScorer_(OrgApacheLuceneSearchHighlightHighlighter *self, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(self, create_OrgApacheLuceneSearchHighlightSimpleHTMLFormatter_init(), fragmentScorer);
}

OrgApacheLuceneSearchHighlightHighlighter *new_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightHighlighter, initWithOrgApacheLuceneSearchHighlightScorer_, fragmentScorer)
}

OrgApacheLuceneSearchHighlightHighlighter *create_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightHighlighter, initWithOrgApacheLuceneSearchHighlightScorer_, fragmentScorer)
}

void OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(OrgApacheLuceneSearchHighlightHighlighter *self, id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(self, formatter, create_OrgApacheLuceneSearchHighlightDefaultEncoder_init(), fragmentScorer);
}

OrgApacheLuceneSearchHighlightHighlighter *new_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightHighlighter, initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_, formatter, fragmentScorer)
}

OrgApacheLuceneSearchHighlightHighlighter *create_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightHighlighter, initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightScorer_, formatter, fragmentScorer)
}

void OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(OrgApacheLuceneSearchHighlightHighlighter *self, id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  NSObject_init(self);
  self->maxDocCharsToAnalyze_ = OrgApacheLuceneSearchHighlightHighlighter_DEFAULT_MAX_CHARS_TO_ANALYZE;
  JreStrongAssignAndConsume(&self->textFragmenter_, new_OrgApacheLuceneSearchHighlightSimpleFragmenter_init());
  JreStrongAssign(&self->fragmentScorer_, nil);
  JreStrongAssign(&self->formatter_, formatter);
  JreStrongAssign(&self->encoder_, encoder);
  JreStrongAssign(&self->fragmentScorer_, fragmentScorer);
}

OrgApacheLuceneSearchHighlightHighlighter *new_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightHighlighter, initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_, formatter, encoder, fragmentScorer)
}

OrgApacheLuceneSearchHighlightHighlighter *create_OrgApacheLuceneSearchHighlightHighlighter_initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_(id<OrgApacheLuceneSearchHighlightFormatter> formatter, id<OrgApacheLuceneSearchHighlightEncoder> encoder, id<OrgApacheLuceneSearchHighlightScorer> fragmentScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightHighlighter, initWithOrgApacheLuceneSearchHighlightFormatter_withOrgApacheLuceneSearchHighlightEncoder_withOrgApacheLuceneSearchHighlightScorer_, formatter, encoder, fragmentScorer)
}

NSString *OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentWithOrgApacheLuceneAnalysisTokenStream_withNSString_(OrgApacheLuceneSearchHighlightHighlighter *self, OrgApacheLuceneAnalysisTokenStream *tokenStream, NSString *text) {
  IOSObjectArray *results = OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withInt_(self, tokenStream, text, 1);
  if (((IOSObjectArray *) nil_chk(results))->size_ > 0) {
    return IOSObjectArray_Get(results, 0);
  }
  return nil;
}

IOSObjectArray *OrgApacheLuceneSearchHighlightHighlighter_getBestFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withInt_(OrgApacheLuceneSearchHighlightHighlighter *self, OrgApacheLuceneAnalysisTokenStream *tokenStream, NSString *text, jint maxNumFragments) {
  maxNumFragments = JavaLangMath_maxWithInt_withInt_(1, maxNumFragments);
  IOSObjectArray *frag = OrgApacheLuceneSearchHighlightHighlighter_getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withBoolean_withInt_(self, tokenStream, text, true, maxNumFragments);
  JavaUtilArrayList *fragTexts = create_JavaUtilArrayList_init();
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(frag))->size_; i++) {
    if ((IOSObjectArray_Get(frag, i) != nil) && ([((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(IOSObjectArray_Get(frag, i))) getScore] > 0)) {
      [fragTexts addWithId:[((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(IOSObjectArray_Get(frag, i))) description]];
    }
  }
  return [fragTexts toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightHighlighter_getBestTextFragmentsWithOrgApacheLuceneAnalysisTokenStream_withNSString_withBoolean_withInt_(OrgApacheLuceneSearchHighlightHighlighter *self, OrgApacheLuceneAnalysisTokenStream *tokenStream, NSString *text, jboolean mergeContiguousFragments, jint maxNumFragments) {
  JavaUtilArrayList *docFrags = create_JavaUtilArrayList_init();
  JavaLangStringBuilder *newText = create_JavaLangStringBuilder_init();
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(tokenStream)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt = [tokenStream addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
  OrgApacheLuceneSearchHighlightTextFragment *currentFrag = create_OrgApacheLuceneSearchHighlightTextFragment_initWithJavaLangCharSequence_withInt_withInt_(newText, [newText length], [docFrags size]);
  if ([self->fragmentScorer_ isKindOfClass:[OrgApacheLuceneSearchHighlightQueryScorer class]]) {
    [((OrgApacheLuceneSearchHighlightQueryScorer *) nil_chk(((OrgApacheLuceneSearchHighlightQueryScorer *) cast_chk(self->fragmentScorer_, [OrgApacheLuceneSearchHighlightQueryScorer class])))) setMaxDocCharsToAnalyzeWithInt:self->maxDocCharsToAnalyze_];
  }
  OrgApacheLuceneAnalysisTokenStream *newStream = [((id<OrgApacheLuceneSearchHighlightScorer>) nil_chk(self->fragmentScorer_)) init__WithOrgApacheLuceneAnalysisTokenStream:tokenStream];
  if (newStream != nil) {
    tokenStream = newStream;
  }
  [((id<OrgApacheLuceneSearchHighlightScorer>) nil_chk(self->fragmentScorer_)) startFragmentWithOrgApacheLuceneSearchHighlightTextFragment:currentFrag];
  [docFrags addWithId:currentFrag];
  OrgApacheLuceneSearchHighlightFragmentQueue *fragQueue = create_OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(maxNumFragments);
  @try {
    NSString *tokenText;
    jint startOffset;
    jint endOffset;
    jint lastEndOffset = 0;
    [((id<OrgApacheLuceneSearchHighlightFragmenter>) nil_chk(self->textFragmenter_)) startWithNSString:text withOrgApacheLuceneAnalysisTokenStream:tokenStream];
    OrgApacheLuceneSearchHighlightTokenGroup *tokenGroup = create_OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(tokenStream);
    [tokenStream reset];
    for (jboolean next = [tokenStream incrementToken]; next && ([((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt)) startOffset] < self->maxDocCharsToAnalyze_); next = [tokenStream incrementToken]) {
      if (([((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt)) endOffset] > ((jint) [((NSString *) nil_chk(text)) length])) || ([offsetAtt startOffset] > ((jint) [text length]))) {
        @throw create_OrgApacheLuceneSearchHighlightInvalidTokenOffsetsException_initWithNSString_(JreStrcat("$$$I", @"Token ", [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt)) description], @" exceeds length of provided text sized ", ((jint) [text length])));
      }
      if (([tokenGroup getNumTokens] > 0) && ([tokenGroup isDistinct])) {
        startOffset = [tokenGroup getStartOffset];
        endOffset = [tokenGroup getEndOffset];
        tokenText = [text substring:startOffset endIndex:endOffset];
        NSString *markedUpText = [((id<OrgApacheLuceneSearchHighlightFormatter>) nil_chk(self->formatter_)) highlightTermWithNSString:[((id<OrgApacheLuceneSearchHighlightEncoder>) nil_chk(self->encoder_)) encodeTextWithNSString:tokenText] withOrgApacheLuceneSearchHighlightTokenGroup:tokenGroup];
        if (startOffset > lastEndOffset) [newText appendWithNSString:[((id<OrgApacheLuceneSearchHighlightEncoder>) nil_chk(self->encoder_)) encodeTextWithNSString:[text substring:lastEndOffset endIndex:startOffset]]];
        [newText appendWithNSString:markedUpText];
        lastEndOffset = JavaLangMath_maxWithInt_withInt_(endOffset, lastEndOffset);
        [tokenGroup clear];
        if ([((id<OrgApacheLuceneSearchHighlightFragmenter>) nil_chk(self->textFragmenter_)) isNewFragment]) {
          [currentFrag setScoreWithFloat:[((id<OrgApacheLuceneSearchHighlightScorer>) nil_chk(self->fragmentScorer_)) getFragmentScore]];
          currentFrag->textEndPos_ = [newText length];
          currentFrag = create_OrgApacheLuceneSearchHighlightTextFragment_initWithJavaLangCharSequence_withInt_withInt_(newText, [newText length], [docFrags size]);
          [((id<OrgApacheLuceneSearchHighlightScorer>) nil_chk(self->fragmentScorer_)) startFragmentWithOrgApacheLuceneSearchHighlightTextFragment:currentFrag];
          [docFrags addWithId:currentFrag];
        }
      }
      [tokenGroup addTokenWithFloat:[((id<OrgApacheLuceneSearchHighlightScorer>) nil_chk(self->fragmentScorer_)) getTokenScore]];
    }
    [currentFrag setScoreWithFloat:[((id<OrgApacheLuceneSearchHighlightScorer>) nil_chk(self->fragmentScorer_)) getFragmentScore]];
    if ([tokenGroup getNumTokens] > 0) {
      startOffset = [tokenGroup getStartOffset];
      endOffset = [tokenGroup getEndOffset];
      tokenText = [((NSString *) nil_chk(text)) substring:startOffset endIndex:endOffset];
      NSString *markedUpText = [((id<OrgApacheLuceneSearchHighlightFormatter>) nil_chk(self->formatter_)) highlightTermWithNSString:[((id<OrgApacheLuceneSearchHighlightEncoder>) nil_chk(self->encoder_)) encodeTextWithNSString:tokenText] withOrgApacheLuceneSearchHighlightTokenGroup:tokenGroup];
      if (startOffset > lastEndOffset) [newText appendWithNSString:[((id<OrgApacheLuceneSearchHighlightEncoder>) nil_chk(self->encoder_)) encodeTextWithNSString:[text substring:lastEndOffset endIndex:startOffset]]];
      [newText appendWithNSString:markedUpText];
      lastEndOffset = JavaLangMath_maxWithInt_withInt_(lastEndOffset, endOffset);
    }
    if ((lastEndOffset < ((jint) [((NSString *) nil_chk(text)) length])) && (((jint) [text length]) <= self->maxDocCharsToAnalyze_)) {
      [newText appendWithNSString:[((id<OrgApacheLuceneSearchHighlightEncoder>) nil_chk(self->encoder_)) encodeTextWithNSString:[text substring:lastEndOffset]]];
    }
    currentFrag->textEndPos_ = [newText length];
    for (id<JavaUtilIterator> i = [docFrags iterator]; [((id<JavaUtilIterator>) nil_chk(i)) hasNext]; ) {
      currentFrag = [i next];
      [fragQueue insertWithOverflowWithId:currentFrag];
    }
    IOSObjectArray *frag = [IOSObjectArray arrayWithLength:[fragQueue size] type:OrgApacheLuceneSearchHighlightTextFragment_class_()];
    for (jint i = frag->size_ - 1; i >= 0; i--) {
      IOSObjectArray_Set(frag, i, [fragQueue pop]);
    }
    if (mergeContiguousFragments) {
      OrgApacheLuceneSearchHighlightHighlighter_mergeContiguousFragmentsWithOrgApacheLuceneSearchHighlightTextFragmentArray_(self, frag);
      JavaUtilArrayList *fragTexts = create_JavaUtilArrayList_init();
      for (jint i = 0; i < frag->size_; i++) {
        if ((IOSObjectArray_Get(frag, i) != nil) && ([((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(IOSObjectArray_Get(frag, i))) getScore] > 0)) {
          [fragTexts addWithId:IOSObjectArray_Get(frag, i)];
        }
      }
      frag = [fragTexts toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchHighlightTextFragment_class_()]];
    }
    return frag;
  }
  @finally {
    if (tokenStream != nil) {
      @try {
        [tokenStream end];
        [tokenStream close];
      }
      @catch (JavaLangException *e) {
      }
    }
  }
}

void OrgApacheLuceneSearchHighlightHighlighter_mergeContiguousFragmentsWithOrgApacheLuceneSearchHighlightTextFragmentArray_(OrgApacheLuceneSearchHighlightHighlighter *self, IOSObjectArray *frag) {
  jboolean mergingStillBeingDone;
  if (((IOSObjectArray *) nil_chk(frag))->size_ > 1) do {
    mergingStillBeingDone = false;
    for (jint i = 0; i < frag->size_; i++) {
      if (IOSObjectArray_Get(frag, i) == nil) {
        continue;
      }
      for (jint x = 0; x < frag->size_; x++) {
        if (IOSObjectArray_Get(frag, x) == nil) {
          continue;
        }
        if (IOSObjectArray_Get(frag, i) == nil) {
          break;
        }
        OrgApacheLuceneSearchHighlightTextFragment *frag1 = nil;
        OrgApacheLuceneSearchHighlightTextFragment *frag2 = nil;
        jint frag1Num = 0;
        jint frag2Num = 0;
        jint bestScoringFragNum;
        jint worstScoringFragNum;
        if ([((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(IOSObjectArray_Get(frag, i))) followsWithOrgApacheLuceneSearchHighlightTextFragment:IOSObjectArray_Get(frag, x)]) {
          frag1 = IOSObjectArray_Get(frag, x);
          frag1Num = x;
          frag2 = IOSObjectArray_Get(frag, i);
          frag2Num = i;
        }
        else if ([((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(IOSObjectArray_Get(frag, x))) followsWithOrgApacheLuceneSearchHighlightTextFragment:IOSObjectArray_Get(frag, i)]) {
          frag1 = IOSObjectArray_Get(frag, i);
          frag1Num = i;
          frag2 = IOSObjectArray_Get(frag, x);
          frag2Num = x;
        }
        if (frag1 != nil) {
          if ([frag1 getScore] > [((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(frag2)) getScore]) {
            bestScoringFragNum = frag1Num;
            worstScoringFragNum = frag2Num;
          }
          else {
            bestScoringFragNum = frag2Num;
            worstScoringFragNum = frag1Num;
          }
          [frag1 mergeWithOrgApacheLuceneSearchHighlightTextFragment:frag2];
          IOSObjectArray_Set(frag, worstScoringFragNum, nil);
          mergingStillBeingDone = true;
          IOSObjectArray_Set(frag, bestScoringFragNum, frag1);
        }
      }
    }
  }
  while (mergingStillBeingDone);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightHighlighter)

@implementation OrgApacheLuceneSearchHighlightFragmentQueue

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(self, size);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchHighlightTextFragment *)fragA
                    withId:(OrgApacheLuceneSearchHighlightTextFragment *)fragB {
  if ([((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(fragA)) getScore] == [((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(fragB)) getScore]) return fragA->fragNum_ > fragB->fragNum_;
  else return [fragA getScore] < [fragB getScore];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "FragmentQueue", NULL, 0x1, NULL, NULL },
    { "lessThanWithId:withId:", "lessThan", "Z", 0x11, NULL, "(Lorg/apache/lucene/search/highlight/TextFragment;Lorg/apache/lucene/search/highlight/TextFragment;)Z" },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.highlight.TextFragment;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightFragmentQueue = { 2, "FragmentQueue", "org.apache.lucene.search.highlight", NULL, 0x0, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/highlight/TextFragment;>;" };
  return &_OrgApacheLuceneSearchHighlightFragmentQueue;
}

@end

void OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(OrgApacheLuceneSearchHighlightFragmentQueue *self, jint size) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, size);
}

OrgApacheLuceneSearchHighlightFragmentQueue *new_OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightFragmentQueue, initWithInt_, size)
}

OrgApacheLuceneSearchHighlightFragmentQueue *create_OrgApacheLuceneSearchHighlightFragmentQueue_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightFragmentQueue, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightFragmentQueue)
