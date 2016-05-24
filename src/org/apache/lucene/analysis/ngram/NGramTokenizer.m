//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/NGramTokenizer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/ngram/NGramTokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/util/CharacterUtils.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisNgramNGramTokenizer () {
 @public
  OrgApacheLuceneAnalysisUtilCharacterUtils *charUtils_;
  OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *charBuffer_;
  IOSIntArray *buffer_;
  jint bufferStart_, bufferEnd_;
  jint offset_;
  jint gramSize_;
  jint minGram_, maxGram_;
  jboolean exhausted_;
  jint lastCheckedChar_;
  jint lastNonTokenChar_;
  jboolean edgesOnly_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute> posLenAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
}

- (void)init__WithInt:(jint)minGram
              withInt:(jint)maxGram
          withBoolean:(jboolean)edgesOnly OBJC_METHOD_FAMILY_NONE;

- (void)updateLastNonTokenChar;

/*!
 @brief Consume one code point.
 */
- (void)consume;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenizer, charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenizer, charBuffer_, OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenizer, buffer_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenizer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenizer, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenizer, posLenAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenizer, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramNGramTokenizer_init__WithInt_withInt_withBoolean_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, jint minGram, jint maxGram, jboolean edgesOnly);

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramNGramTokenizer_updateLastNonTokenChar(OrgApacheLuceneAnalysisNgramNGramTokenizer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramNGramTokenizer_consume(OrgApacheLuceneAnalysisNgramNGramTokenizer *self);

@implementation OrgApacheLuceneAnalysisNgramNGramTokenizer

+ (jint)DEFAULT_MIN_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MIN_NGRAM_SIZE;
}

+ (jint)DEFAULT_MAX_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MAX_NGRAM_SIZE;
}

- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram
                withBoolean:(jboolean)edgesOnly {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(self, minGram, maxGram, edgesOnly);
  return self;
}

- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(self, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram
                                                withBoolean:(jboolean)edgesOnly {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(self, factory, minGram, maxGram, edgesOnly);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(self, factory, minGram, maxGram);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithInt:(jint)minGram
              withInt:(jint)maxGram
          withBoolean:(jboolean)edgesOnly {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_init__WithInt_withInt_withBoolean_(self, minGram, maxGram, edgesOnly);
}

- (jboolean)incrementToken {
  [self clearAttributes];
  while (true) {
    if (bufferStart_ >= bufferEnd_ - maxGram_ - 1 && !exhausted_) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, bufferStart_, buffer_, 0, bufferEnd_ - bufferStart_);
      bufferEnd_ -= bufferStart_;
      lastCheckedChar_ -= bufferStart_;
      lastNonTokenChar_ -= bufferStart_;
      bufferStart_ = 0;
      exhausted_ = ![((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:charBuffer_ withJavaIoReader:input_ withInt:((IOSIntArray *) nil_chk(buffer_))->size_ - bufferEnd_];
      bufferEnd_ += [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) toCodePointsWithCharArray:[((OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *) nil_chk(charBuffer_)) getBuffer] withInt:0 withInt:[((OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *) nil_chk(charBuffer_)) getLength] withIntArray:buffer_ withInt:bufferEnd_];
    }
    if (gramSize_ > maxGram_ || (bufferStart_ + gramSize_) > bufferEnd_) {
      if (bufferStart_ + 1 + minGram_ > bufferEnd_) {
        JreAssert((exhausted_), (@"org/apache/lucene/analysis/ngram/NGramTokenizer.java:155 condition failed: assert exhausted;"));
        return false;
      }
      OrgApacheLuceneAnalysisNgramNGramTokenizer_consume(self);
      gramSize_ = minGram_;
    }
    OrgApacheLuceneAnalysisNgramNGramTokenizer_updateLastNonTokenChar(self);
    jboolean termContainsNonTokenChar = lastNonTokenChar_ >= bufferStart_ && lastNonTokenChar_ < (bufferStart_ + gramSize_);
    jboolean isEdgeAndPreviousCharIsTokenChar = edgesOnly_ && lastNonTokenChar_ != bufferStart_ - 1;
    if (termContainsNonTokenChar || isEdgeAndPreviousCharIsTokenChar) {
      OrgApacheLuceneAnalysisNgramNGramTokenizer_consume(self);
      gramSize_ = minGram_;
      continue;
    }
    jint length = [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) toCharsWithIntArray:buffer_ withInt:bufferStart_ withInt:gramSize_ withCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:0];
    [termAtt_ setLengthWithInt:length];
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) setPositionIncrementWithInt:1];
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLenAtt_)) setPositionLengthWithInt:1];
    [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:offset_] withInt:[self correctOffsetWithInt:offset_ + length]];
    ++gramSize_;
    return true;
  }
}

- (void)updateLastNonTokenChar {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_updateLastNonTokenChar(self);
}

- (void)consume {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_consume(self);
}

- (jboolean)isTokenCharWithInt:(jint)chr {
  return true;
}

- (void)end {
  [super end];
  JreAssert((bufferStart_ <= bufferEnd_), (@"org/apache/lucene/analysis/ngram/NGramTokenizer.java:209 condition failed: assert bufferStart <= bufferEnd;"));
  jint endOffset = offset_;
  for (jint i = bufferStart_; i < bufferEnd_; ++i) {
    endOffset += JavaLangCharacter_charCountWithInt_(IOSIntArray_Get(nil_chk(buffer_), i));
  }
  endOffset = [self correctOffsetWithInt:endOffset];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:endOffset withInt:endOffset];
}

- (void)reset {
  [super reset];
  bufferStart_ = bufferEnd_ = ((IOSIntArray *) nil_chk(buffer_))->size_;
  lastNonTokenChar_ = lastCheckedChar_ = bufferStart_ - 1;
  offset_ = 0;
  gramSize_ = minGram_;
  exhausted_ = false;
  [((OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *) nil_chk(charBuffer_)) reset];
}

- (void)dealloc {
  RELEASE_(charUtils_);
  RELEASE_(charBuffer_);
  RELEASE_(buffer_);
  RELEASE_(termAtt_);
  RELEASE_(posIncAtt_);
  RELEASE_(posLenAtt_);
  RELEASE_(offsetAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withBoolean:", "NGramTokenizer", NULL, 0x0, NULL, NULL },
    { "initWithInt:withInt:", "NGramTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:withInt:withInt:withBoolean:", "NGramTokenizer", NULL, 0x0, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:withInt:withInt:", "NGramTokenizer", NULL, 0x1, NULL, NULL },
    { "init", "NGramTokenizer", NULL, 0x1, NULL, NULL },
    { "init__WithInt:withInt:withBoolean:", "init", "V", 0x2, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "updateLastNonTokenChar", NULL, "V", 0x2, NULL, NULL },
    { "consume", NULL, "V", 0x2, NULL, NULL },
    { "isTokenCharWithInt:", "isTokenChar", "Z", 0x4, NULL, NULL },
    { "end", NULL, "V", 0x11, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x11, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MIN_NGRAM_SIZE", "DEFAULT_MIN_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MIN_NGRAM_SIZE },
    { "DEFAULT_MAX_NGRAM_SIZE", "DEFAULT_MAX_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MAX_NGRAM_SIZE },
    { "charUtils_", NULL, 0x2, "Lorg.apache.lucene.analysis.util.CharacterUtils;", NULL, NULL, .constantValue.asLong = 0 },
    { "charBuffer_", NULL, 0x2, "Lorg.apache.lucene.analysis.util.CharacterUtils$CharacterBuffer;", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferStart_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferEnd_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "offset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "gramSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minGram_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxGram_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "exhausted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "lastCheckedChar_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lastNonTokenChar_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "edgesOnly_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posLenAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionLengthAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramNGramTokenizer = { 2, "NGramTokenizer", "org.apache.lucene.analysis.ngram", NULL, 0x1, 12, methods, 19, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNgramNGramTokenizer;
}

@end

void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, jint minGram, jint maxGram, jboolean edgesOnly) {
  OrgApacheLuceneAnalysisTokenizer_init(self);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->posIncAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->posLenAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  OrgApacheLuceneAnalysisNgramNGramTokenizer_init__WithInt_withInt_withBoolean_(self, minGram, maxGram, edgesOnly);
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(jint minGram, jint maxGram, jboolean edgesOnly) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithInt_withInt_withBoolean_, minGram, maxGram, edgesOnly)
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(jint minGram, jint maxGram, jboolean edgesOnly) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithInt_withInt_withBoolean_, minGram, maxGram, edgesOnly)
}

void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(self, minGram, maxGram, false);
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithInt_withInt_, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithInt_withInt_, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram, jboolean edgesOnly) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->posIncAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->posLenAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  OrgApacheLuceneAnalysisNgramNGramTokenizer_init__WithInt_withInt_withBoolean_(self, minGram, maxGram, edgesOnly);
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram, jboolean edgesOnly) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_, factory, minGram, maxGram, edgesOnly)
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram, jboolean edgesOnly) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_, factory, minGram, maxGram, edgesOnly)
}

void OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(self, factory, minGram, maxGram, false);
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_, factory, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_, factory, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramNGramTokenizer_init(OrgApacheLuceneAnalysisNgramNGramTokenizer *self) {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_(self, OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MIN_NGRAM_SIZE, OrgApacheLuceneAnalysisNgramNGramTokenizer_DEFAULT_MAX_NGRAM_SIZE);
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *new_OrgApacheLuceneAnalysisNgramNGramTokenizer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, init)
}

OrgApacheLuceneAnalysisNgramNGramTokenizer *create_OrgApacheLuceneAnalysisNgramNGramTokenizer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenizer, init)
}

void OrgApacheLuceneAnalysisNgramNGramTokenizer_init__WithInt_withInt_withBoolean_(OrgApacheLuceneAnalysisNgramNGramTokenizer *self, jint minGram, jint maxGram, jboolean edgesOnly) {
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance());
  if (minGram < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must be greater than zero");
  }
  if (minGram > maxGram) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must not be greater than maxGram");
  }
  self->minGram_ = minGram;
  self->maxGram_ = maxGram;
  self->edgesOnly_ = edgesOnly;
  JreStrongAssign(&self->charBuffer_, OrgApacheLuceneAnalysisUtilCharacterUtils_newCharacterBufferWithInt_(2 * maxGram + 1024));
  JreStrongAssignAndConsume(&self->buffer_, [IOSIntArray newArrayWithLength:((IOSCharArray *) nil_chk([((OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *) nil_chk(self->charBuffer_)) getBuffer]))->size_]);
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) resizeBufferWithInt:2 * maxGram];
}

void OrgApacheLuceneAnalysisNgramNGramTokenizer_updateLastNonTokenChar(OrgApacheLuceneAnalysisNgramNGramTokenizer *self) {
  jint termEnd = self->bufferStart_ + self->gramSize_ - 1;
  if (termEnd > self->lastCheckedChar_) {
    for (jint i = termEnd; i > self->lastCheckedChar_; --i) {
      if (![self isTokenCharWithInt:IOSIntArray_Get(nil_chk(self->buffer_), i)]) {
        self->lastNonTokenChar_ = i;
        break;
      }
    }
    self->lastCheckedChar_ = termEnd;
  }
}

void OrgApacheLuceneAnalysisNgramNGramTokenizer_consume(OrgApacheLuceneAnalysisNgramNGramTokenizer *self) {
  self->offset_ += JavaLangCharacter_charCountWithInt_(IOSIntArray_Get(nil_chk(self->buffer_), self->bufferStart_++));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramNGramTokenizer)