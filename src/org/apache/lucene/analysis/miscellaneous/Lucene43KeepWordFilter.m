//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/Lucene43KeepWordFilter.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/Lucene43KeepWordFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/Lucene43FilteringTokenFilter.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  OrgApacheLuceneAnalysisUtilCharArraySet *words_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter, words_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@implementation OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter

- (instancetype)initWithBoolean:(jboolean)enablePositionIncrements
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)words {
  OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, enablePositionIncrements, inArg, words);
  return self;
}

- (jboolean)accept {
  return [((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(words_)) containsWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:0 withInt:[termAtt_ length]];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(words_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:withOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:", "Lucene43KeepWordFilter", NULL, 0x1, NULL, NULL },
    { "accept", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "words_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter = { 2, "Lucene43KeepWordFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *words) {
  OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_(self, enablePositionIncrements, inArg);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->words_, words);
}

OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter *new_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *words) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter, initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, enablePositionIncrements, inArg, words)
}

OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter *create_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *words) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter, initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, enablePositionIncrements, inArg, words)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter)