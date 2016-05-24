//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/mlt/MoreLikeThisQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/io/StringReader.h"
#include "java/lang/Float.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/queries/mlt/MoreLikeThis.h"
#include "org/apache/lucene/queries/mlt/MoreLikeThisQuery.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/Query.h"

@interface OrgApacheLuceneQueriesMltMoreLikeThisQuery () {
 @public
  NSString *likeText_;
  IOSObjectArray *moreLikeFields_;
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
  NSString *fieldName_;
  jfloat percentTermsToMatch_;
  jint minTermFrequency_;
  jint maxQueryTerms_;
  id<JavaUtilSet> stopWords_;
  jint minDocFreq_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesMltMoreLikeThisQuery, likeText_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesMltMoreLikeThisQuery, moreLikeFields_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesMltMoreLikeThisQuery, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesMltMoreLikeThisQuery, fieldName_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesMltMoreLikeThisQuery, stopWords_, id<JavaUtilSet>)

@implementation OrgApacheLuceneQueriesMltMoreLikeThisQuery

- (instancetype)initWithNSString:(NSString *)likeText
               withNSStringArray:(IOSObjectArray *)moreLikeFields
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                    withNSString:(NSString *)fieldName {
  OrgApacheLuceneQueriesMltMoreLikeThisQuery_initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_(self, likeText, moreLikeFields, analyzer, fieldName);
  return self;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneQueriesMltMoreLikeThis *mlt = create_OrgApacheLuceneQueriesMltMoreLikeThis_initWithOrgApacheLuceneIndexIndexReader_(reader);
  [mlt setFieldNamesWithNSStringArray:moreLikeFields_];
  [mlt setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:analyzer_];
  [mlt setMinTermFreqWithInt:minTermFrequency_];
  if (minDocFreq_ >= 0) {
    [mlt setMinDocFreqWithInt:minDocFreq_];
  }
  [mlt setMaxQueryTermsWithInt:maxQueryTerms_];
  [mlt setStopWordsWithJavaUtilSet:stopWords_];
  OrgApacheLuceneSearchBooleanQuery *bq = (OrgApacheLuceneSearchBooleanQuery *) cast_chk([mlt likeWithNSString:fieldName_ withJavaIoReaderArray:[IOSObjectArray arrayWithObjects:(id[]){ create_JavaIoStringReader_initWithNSString_(likeText_) } count:1 type:JavaIoReader_class_()]], [OrgApacheLuceneSearchBooleanQuery class]);
  OrgApacheLuceneSearchBooleanQuery_Builder *newBq = create_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [newBq setDisableCoordWithBoolean:[((OrgApacheLuceneSearchBooleanQuery *) nil_chk(bq)) isCoordDisabled]];
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in bq) {
    [newBq addWithOrgApacheLuceneSearchBooleanClause:clause];
  }
  [newBq setMinimumNumberShouldMatchWithInt:JreFpToInt(([((id<JavaUtilList>) nil_chk([bq clauses])) size] * percentTermsToMatch_))];
  OrgApacheLuceneSearchQuery *rewritten = [newBq build];
  [((OrgApacheLuceneSearchQuery *) nil_chk(rewritten)) setBoostWithFloat:[bq getBoost]];
  return rewritten;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$$", @"like:", likeText_);
}

- (jfloat)getPercentTermsToMatch {
  return percentTermsToMatch_;
}

- (void)setPercentTermsToMatchWithFloat:(jfloat)percentTermsToMatch {
  self->percentTermsToMatch_ = percentTermsToMatch;
}

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer {
  return analyzer_;
}

- (void)setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  JreStrongAssign(&self->analyzer_, analyzer);
}

- (NSString *)getLikeText {
  return likeText_;
}

- (void)setLikeTextWithNSString:(NSString *)likeText {
  JreStrongAssign(&self->likeText_, likeText);
}

- (jint)getMaxQueryTerms {
  return maxQueryTerms_;
}

- (void)setMaxQueryTermsWithInt:(jint)maxQueryTerms {
  self->maxQueryTerms_ = maxQueryTerms;
}

- (jint)getMinTermFrequency {
  return minTermFrequency_;
}

- (void)setMinTermFrequencyWithInt:(jint)minTermFrequency {
  self->minTermFrequency_ = minTermFrequency;
}

- (IOSObjectArray *)getMoreLikeFields {
  return moreLikeFields_;
}

- (void)setMoreLikeFieldsWithNSStringArray:(IOSObjectArray *)moreLikeFields {
  JreStrongAssign(&self->moreLikeFields_, moreLikeFields);
}

- (id<JavaUtilSet>)getStopWords {
  return stopWords_;
}

- (void)setStopWordsWithJavaUtilSet:(id<JavaUtilSet>)stopWords {
  JreStrongAssign(&self->stopWords_, stopWords);
}

- (jint)getMinDocFreq {
  return minDocFreq_;
}

- (void)setMinDocFreqWithInt:(jint)minDocFreq {
  self->minDocFreq_ = minDocFreq;
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((analyzer_ == nil) ? 0 : ((jint) [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer_)) hash]));
  result = prime * result + ((fieldName_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(fieldName_)) hash]));
  result = prime * result + ((likeText_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(likeText_)) hash]));
  result = prime * result + maxQueryTerms_;
  result = prime * result + minDocFreq_;
  result = prime * result + minTermFrequency_;
  result = prime * result + JavaUtilArrays_hashCodeWithNSObjectArray_(moreLikeFields_);
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_(percentTermsToMatch_);
  result = prime * result + ((stopWords_ == nil) ? 0 : ((jint) [((id<JavaUtilSet>) nil_chk(stopWords_)) hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (![super isEqual:obj]) return false;
  if ([self getClass] != (id) [nil_chk(obj) getClass]) return false;
  OrgApacheLuceneQueriesMltMoreLikeThisQuery *other = (OrgApacheLuceneQueriesMltMoreLikeThisQuery *) cast_chk(obj, [OrgApacheLuceneQueriesMltMoreLikeThisQuery class]);
  if (analyzer_ == nil) {
    if (other->analyzer_ != nil) return false;
  }
  else if (![analyzer_ isEqual:other->analyzer_]) return false;
  if (fieldName_ == nil) {
    if (other->fieldName_ != nil) return false;
  }
  else if (![fieldName_ isEqual:other->fieldName_]) return false;
  if (likeText_ == nil) {
    if (other->likeText_ != nil) return false;
  }
  else if (![likeText_ isEqual:other->likeText_]) return false;
  if (maxQueryTerms_ != other->maxQueryTerms_) return false;
  if (minDocFreq_ != other->minDocFreq_) return false;
  if (minTermFrequency_ != other->minTermFrequency_) return false;
  if (!JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(moreLikeFields_, other->moreLikeFields_)) return false;
  if (JavaLangFloat_floatToIntBitsWithFloat_(percentTermsToMatch_) != JavaLangFloat_floatToIntBitsWithFloat_(other->percentTermsToMatch_)) return false;
  if (stopWords_ == nil) {
    if (other->stopWords_ != nil) return false;
  }
  else if (![stopWords_ isEqual:other->stopWords_]) return false;
  return true;
}

- (void)dealloc {
  RELEASE_(likeText_);
  RELEASE_(moreLikeFields_);
  RELEASE_(analyzer_);
  RELEASE_(fieldName_);
  RELEASE_(stopWords_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSStringArray:withOrgApacheLuceneAnalysisAnalyzer:withNSString:", "MoreLikeThisQuery", NULL, 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getPercentTermsToMatch", NULL, "F", 0x1, NULL, NULL },
    { "setPercentTermsToMatchWithFloat:", "setPercentTermsToMatch", "V", 0x1, NULL, NULL },
    { "getAnalyzer", NULL, "Lorg.apache.lucene.analysis.Analyzer;", 0x1, NULL, NULL },
    { "setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:", "setAnalyzer", "V", 0x1, NULL, NULL },
    { "getLikeText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setLikeTextWithNSString:", "setLikeText", "V", 0x1, NULL, NULL },
    { "getMaxQueryTerms", NULL, "I", 0x1, NULL, NULL },
    { "setMaxQueryTermsWithInt:", "setMaxQueryTerms", "V", 0x1, NULL, NULL },
    { "getMinTermFrequency", NULL, "I", 0x1, NULL, NULL },
    { "setMinTermFrequencyWithInt:", "setMinTermFrequency", "V", 0x1, NULL, NULL },
    { "getMoreLikeFields", NULL, "[Ljava.lang.String;", 0x1, NULL, NULL },
    { "setMoreLikeFieldsWithNSStringArray:", "setMoreLikeFields", "V", 0x1, NULL, NULL },
    { "getStopWords", NULL, "Ljava.util.Set;", 0x1, NULL, "()Ljava/util/Set<*>;" },
    { "setStopWordsWithJavaUtilSet:", "setStopWords", "V", 0x1, NULL, "(Ljava/util/Set<*>;)V" },
    { "getMinDocFreq", NULL, "I", 0x1, NULL, NULL },
    { "setMinDocFreqWithInt:", "setMinDocFreq", "V", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "likeText_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "moreLikeFields_", NULL, 0x2, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "analyzer_", NULL, 0x2, "Lorg.apache.lucene.analysis.Analyzer;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldName_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "percentTermsToMatch_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "minTermFrequency_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxQueryTerms_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "stopWords_", NULL, 0x2, "Ljava.util.Set;", NULL, "Ljava/util/Set<*>;", .constantValue.asLong = 0 },
    { "minDocFreq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesMltMoreLikeThisQuery = { 2, "MoreLikeThisQuery", "org.apache.lucene.queries.mlt", NULL, 0x1, 21, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesMltMoreLikeThisQuery;
}

@end

void OrgApacheLuceneQueriesMltMoreLikeThisQuery_initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_(OrgApacheLuceneQueriesMltMoreLikeThisQuery *self, NSString *likeText, IOSObjectArray *moreLikeFields, OrgApacheLuceneAnalysisAnalyzer *analyzer, NSString *fieldName) {
  OrgApacheLuceneSearchQuery_init(self);
  self->percentTermsToMatch_ = 0.3f;
  self->minTermFrequency_ = 1;
  self->maxQueryTerms_ = 5;
  JreStrongAssign(&self->stopWords_, nil);
  self->minDocFreq_ = -1;
  JreStrongAssign(&self->likeText_, likeText);
  JreStrongAssign(&self->moreLikeFields_, moreLikeFields);
  JreStrongAssign(&self->analyzer_, analyzer);
  JreStrongAssign(&self->fieldName_, fieldName);
}

OrgApacheLuceneQueriesMltMoreLikeThisQuery *new_OrgApacheLuceneQueriesMltMoreLikeThisQuery_initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_(NSString *likeText, IOSObjectArray *moreLikeFields, OrgApacheLuceneAnalysisAnalyzer *analyzer, NSString *fieldName) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesMltMoreLikeThisQuery, initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_, likeText, moreLikeFields, analyzer, fieldName)
}

OrgApacheLuceneQueriesMltMoreLikeThisQuery *create_OrgApacheLuceneQueriesMltMoreLikeThisQuery_initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_(NSString *likeText, IOSObjectArray *moreLikeFields, OrgApacheLuceneAnalysisAnalyzer *analyzer, NSString *fieldName) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesMltMoreLikeThisQuery, initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_, likeText, moreLikeFields, analyzer, fieldName)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesMltMoreLikeThisQuery)