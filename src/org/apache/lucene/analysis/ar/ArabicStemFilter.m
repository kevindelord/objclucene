//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicStemFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/ar/ArabicStemFilter.h"
#include "org/apache/lucene/analysis/ar/ArabicStemmer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisArArabicStemFilter () {
 @public
  OrgApacheLuceneAnalysisArArabicStemmer *stemmer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAttr_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisArArabicStemFilter, stemmer_, OrgApacheLuceneAnalysisArArabicStemmer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisArArabicStemFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisArArabicStemFilter, keywordAttr_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)

@implementation OrgApacheLuceneAnalysisArArabicStemFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisArArabicStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAttr_)) isKeyword]) {
      jint newlen = [((OrgApacheLuceneAnalysisArArabicStemmer *) nil_chk(stemmer_)) stemWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ length]];
      [termAtt_ setLengthWithInt:newlen];
    }
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(stemmer_);
  RELEASE_(termAtt_);
  RELEASE_(keywordAttr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "ArabicStemFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemmer_", NULL, 0x12, "Lorg.apache.lucene.analysis.ar.ArabicStemmer;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "keywordAttr_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.KeywordAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisArArabicStemFilter = { 2, "ArabicStemFilter", "org.apache.lucene.analysis.ar", NULL, 0x11, 2, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisArArabicStemFilter;
}

@end

void OrgApacheLuceneAnalysisArArabicStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisArArabicStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->stemmer_, new_OrgApacheLuceneAnalysisArArabicStemmer_init());
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
}

OrgApacheLuceneAnalysisArArabicStemFilter *new_OrgApacheLuceneAnalysisArArabicStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisArArabicStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisArArabicStemFilter *create_OrgApacheLuceneAnalysisArArabicStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisArArabicStemFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisArArabicStemFilter)
