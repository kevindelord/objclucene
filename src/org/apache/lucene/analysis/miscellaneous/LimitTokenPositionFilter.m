//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenPositionFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenPositionFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter () {
 @public
  jint maxTokenPosition_;
  jboolean consumeAllTokens_;
  jint tokenPosition_;
  jboolean exhausted_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)

@implementation OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)maxTokenPosition {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(self, inArg, maxTokenPosition);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)maxTokenPosition
                                               withBoolean:(jboolean)consumeAllTokens {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(self, inArg, maxTokenPosition, consumeAllTokens);
  return self;
}

- (jboolean)incrementToken {
  if (exhausted_) {
    return false;
  }
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    tokenPosition_ += [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) getPositionIncrement];
    if (tokenPosition_ <= maxTokenPosition_) {
      return true;
    }
    else {
      while (consumeAllTokens_ && [input_ incrementToken]) {
      }
      exhausted_ = true;
      return false;
    }
  }
  else {
    exhausted_ = true;
    return false;
  }
}

- (void)reset {
  [super reset];
  tokenPosition_ = 0;
  exhausted_ = false;
}

- (void)dealloc {
  RELEASE_(posIncAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:", "LimitTokenPositionFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withBoolean:", "LimitTokenPositionFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maxTokenPosition_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "consumeAllTokens_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenPosition_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "exhausted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter = { 2, "LimitTokenPositionFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 4, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition) {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(self, inArg, maxTokenPosition, false);
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_, inArg, maxTokenPosition)
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_, inArg, maxTokenPosition)
}

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition, jboolean consumeAllTokens) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  self->tokenPosition_ = 0;
  self->exhausted_ = false;
  JreStrongAssign(&self->posIncAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  if (maxTokenPosition < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"maxTokenPosition must be greater than zero");
  }
  self->maxTokenPosition_ = maxTokenPosition;
  self->consumeAllTokens_ = consumeAllTokens;
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition, jboolean consumeAllTokens) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_, inArg, maxTokenPosition, consumeAllTokens)
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenPosition, jboolean consumeAllTokens) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_, inArg, maxTokenPosition, consumeAllTokens)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousLimitTokenPositionFilter)
