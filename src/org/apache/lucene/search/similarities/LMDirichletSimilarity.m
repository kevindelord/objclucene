//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/LMDirichletSimilarity.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/LMDirichletSimilarity.h"
#include "org/apache/lucene/search/similarities/LMSimilarity.h"

@interface OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity () {
 @public
  /*!
   @brief The &mu; parameter.
   */
  jfloat mu_;
}

@end

@implementation OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity

- (instancetype)initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>)collectionModel
                                                                            withFloat:(jfloat)mu {
  OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(self, collectionModel, mu);
  return self;
}

- (instancetype)initWithFloat:(jfloat)mu {
  OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(self, mu);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>)collectionModel {
  OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(self, collectionModel);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)freq
                                                     withFloat:(jfloat)docLen {
  jfloat score = [((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] * (jfloat) (JavaLangMath_logWithDouble_(1 + freq / (mu_ * [((OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *) cast_chk(stats, [OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats class])) getCollectionProbability])) + JavaLangMath_logWithDouble_(mu_ / (docLen + mu_)));
  return score > 0.0f ? score : 0.0f;
}

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subs
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen {
  if ([((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalBoost] != 1.0f) {
    [((id<JavaUtilList>) nil_chk(subs)) addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([stats getTotalBoost], @"boost", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
  }
  [((id<JavaUtilList>) nil_chk(subs)) addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(mu_, @"mu", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
  OrgApacheLuceneSearchExplanation *weightExpl = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_((jfloat) JavaLangMath_logWithDouble_(1 + freq / (mu_ * [((OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *) cast_chk(stats, [OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats class])) getCollectionProbability])), @"term weight", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
  [subs addWithId:weightExpl];
  [subs addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_((jfloat) JavaLangMath_logWithDouble_(mu_ / (docLen + mu_)), @"document norm", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
  [super explainWithJavaUtilList:subs withOrgApacheLuceneSearchSimilaritiesBasicStats:stats withInt:doc withFloat:freq withFloat:docLen];
}

- (jfloat)getMu {
  return mu_;
}

- (NSString *)getName {
  return NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"Dirichlet(%f)", [IOSObjectArray arrayWithObjects:(id[]){ JavaLangFloat_valueOfWithFloat_([self getMu]) } count:1 type:NSObject_class_()]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:withFloat:", "LMDirichletSimilarity", NULL, 0x1, NULL, NULL },
    { "initWithFloat:", "LMDirichletSimilarity", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:", "LMDirichletSimilarity", NULL, 0x1, NULL, NULL },
    { "init", "LMDirichletSimilarity", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:", "score", "F", 0x4, NULL, NULL },
    { "explainWithJavaUtilList:withOrgApacheLuceneSearchSimilaritiesBasicStats:withInt:withFloat:withFloat:", "explain", "V", 0x4, NULL, "(Ljava/util/List<Lorg/apache/lucene/search/Explanation;>;Lorg/apache/lucene/search/similarities/BasicStats;IFF)V" },
    { "getMu", NULL, "F", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mu_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity = { 2, "LMDirichletSimilarity", "org.apache.lucene.search.similarities", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity;
}

@end

void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self, id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat mu) {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(self, collectionModel);
  self->mu_ = mu;
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat mu) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_, collectionModel, mu)
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel, jfloat mu) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_, collectionModel, mu)
}

void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self, jfloat mu) {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_init(self);
  self->mu_ = mu;
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(jfloat mu) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, initWithFloat_, mu)
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(jfloat mu) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, initWithFloat_, mu)
}

void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self, id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel) {
  OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_withFloat_(self, collectionModel, 2000);
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_, collectionModel)
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_, collectionModel)
}

void OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_init(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *self) {
  OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_initWithFloat_(self, 2000);
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *new_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, init)
}

OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity *create_OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesLMDirichletSimilarity)
