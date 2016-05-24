//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/LMSimilarity.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/search/CollectionStatistics.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/TermStatistics.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/LMSimilarity.h"
#include "org/apache/lucene/search/similarities/SimilarityBase.h"

@interface OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats () {
 @public
  /*!
   @brief The probability that the current term is generated by the collection.
   */
  jfloat collectionProbability_;
}

@end

__attribute__((unused)) static void OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_setCollectionProbabilityWithFloat_(OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *self, jfloat collectionProbability);

@interface OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel : NSObject

@end

@implementation OrgApacheLuceneSearchSimilaritiesLMSimilarity

- (instancetype)initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:(id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>)collectionModel {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(self, collectionModel);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchSimilaritiesBasicStats *)newStatsWithNSString:(NSString *)field
                                                            withFloat:(jfloat)queryBoost {
  return create_OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_initWithNSString_withFloat_(field, queryBoost);
}

- (void)fillBasicStatsWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                              withOrgApacheLuceneSearchTermStatistics:(OrgApacheLuceneSearchTermStatistics *)termStats {
  [super fillBasicStatsWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withOrgApacheLuceneSearchCollectionStatistics:collectionStats withOrgApacheLuceneSearchTermStatistics:termStats];
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *lmStats = (OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *) cast_chk(stats, [OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats class]);
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_setCollectionProbabilityWithFloat_(nil_chk(lmStats), [((id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>) nil_chk(collectionModel_)) computeProbabilityWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats]);
}

- (void)explainWithJavaUtilList:(id<JavaUtilList>)subExpls
withOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                        withInt:(jint)doc
                      withFloat:(jfloat)freq
                      withFloat:(jfloat)docLen {
  [((id<JavaUtilList>) nil_chk(subExpls)) addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([((id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>) nil_chk(collectionModel_)) computeProbabilityWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats], @"collection probability", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()])];
}

- (NSString *)getName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  NSString *coll = [((id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel>) nil_chk(collectionModel_)) getName];
  if (coll != nil) {
    return NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"LM %s - %s", [IOSObjectArray arrayWithObjects:(id[]){ [self getName], coll } count:2 type:NSObject_class_()]);
  }
  else {
    return NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"LM %s", [IOSObjectArray arrayWithObjects:(id[]){ [self getName] } count:1 type:NSObject_class_()]);
  }
}

- (void)dealloc {
  RELEASE_(collectionModel_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel:", "LMSimilarity", NULL, 0x1, NULL, NULL },
    { "init", "LMSimilarity", NULL, 0x1, NULL, NULL },
    { "newStatsWithNSString:withFloat:", "newStats", "Lorg.apache.lucene.search.similarities.BasicStats;", 0x4, NULL, NULL },
    { "fillBasicStatsWithOrgApacheLuceneSearchSimilaritiesBasicStats:withOrgApacheLuceneSearchCollectionStatistics:withOrgApacheLuceneSearchTermStatistics:", "fillBasicStats", "V", 0x4, NULL, NULL },
    { "explainWithJavaUtilList:withOrgApacheLuceneSearchSimilaritiesBasicStats:withInt:withFloat:withFloat:", "explain", "V", 0x4, NULL, "(Ljava/util/List<Lorg/apache/lucene/search/Explanation;>;Lorg/apache/lucene/search/similarities/BasicStats;IFF)V" },
    { "getName", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "collectionModel_", NULL, 0x14, "Lorg.apache.lucene.search.similarities.LMSimilarity$CollectionModel;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.similarities.LMSimilarity$LMStats;", "Lorg.apache.lucene.search.similarities.LMSimilarity$CollectionModel;", "Lorg.apache.lucene.search.similarities.LMSimilarity$DefaultCollectionModel;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesLMSimilarity = { 2, "LMSimilarity", "org.apache.lucene.search.similarities", NULL, 0x401, 7, methods, 1, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesLMSimilarity;
}

@end

void OrgApacheLuceneSearchSimilaritiesLMSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(OrgApacheLuceneSearchSimilaritiesLMSimilarity *self, id<OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel> collectionModel) {
  OrgApacheLuceneSearchSimilaritiesSimilarityBase_init(self);
  JreStrongAssign(&self->collectionModel_, collectionModel);
}

void OrgApacheLuceneSearchSimilaritiesLMSimilarity_init(OrgApacheLuceneSearchSimilaritiesLMSimilarity *self) {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_initWithOrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel_(self, create_OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel_init());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesLMSimilarity)

@implementation OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats

- (instancetype)initWithNSString:(NSString *)field
                       withFloat:(jfloat)queryBoost {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_initWithNSString_withFloat_(self, field, queryBoost);
  return self;
}

- (jfloat)getCollectionProbability {
  return collectionProbability_;
}

- (void)setCollectionProbabilityWithFloat:(jfloat)collectionProbability {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_setCollectionProbabilityWithFloat_(self, collectionProbability);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withFloat:", "LMStats", NULL, 0x1, NULL, NULL },
    { "getCollectionProbability", NULL, "F", 0x11, NULL, NULL },
    { "setCollectionProbabilityWithFloat:", "setCollectionProbability", "V", 0x11, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "collectionProbability_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats = { 2, "LMStats", "org.apache.lucene.search.similarities", "LMSimilarity", 0x9, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats;
}

@end

void OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_initWithNSString_withFloat_(OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *self, NSString *field, jfloat queryBoost) {
  OrgApacheLuceneSearchSimilaritiesBasicStats_initWithNSString_withFloat_(self, field, queryBoost);
}

OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *new_OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_initWithNSString_withFloat_(NSString *field, jfloat queryBoost) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats, initWithNSString_withFloat_, field, queryBoost)
}

OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *create_OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_initWithNSString_withFloat_(NSString *field, jfloat queryBoost) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats, initWithNSString_withFloat_, field, queryBoost)
}

void OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats_setCollectionProbabilityWithFloat_(OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats *self, jfloat collectionProbability) {
  self->collectionProbability_ = collectionProbability;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesLMSimilarity_LMStats)

@implementation OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "computeProbabilityWithOrgApacheLuceneSearchSimilaritiesBasicStats:", "computeProbability", "F", 0x401, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel = { 2, "CollectionModel", "org.apache.lucene.search.similarities", "LMSimilarity", 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesLMSimilarity_CollectionModel)

@implementation OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)computeProbabilityWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats {
  return ([((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getTotalTermFreq] + 1.0f) / ([stats getNumberOfFieldTokens] + 1.0f);
}

- (NSString *)getName {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultCollectionModel", NULL, 0x1, NULL, NULL },
    { "computeProbabilityWithOrgApacheLuceneSearchSimilaritiesBasicStats:", "computeProbability", "F", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel = { 2, "DefaultCollectionModel", "org.apache.lucene.search.similarities", "LMSimilarity", 0x9, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel;
}

@end

void OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel_init(OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel *new_OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel, init)
}

OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel *create_OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesLMSimilarity_DefaultCollectionModel)