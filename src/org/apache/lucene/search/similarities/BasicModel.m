//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModel.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/similarities/BasicModel.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"

@implementation OrgApacheLuceneSearchSimilaritiesBasicModel

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesBasicModel_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn {
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([self scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:stats withFloat:tfn], JreStrcat("$$", [[self getClass] getSimpleName], @", computed from: "), [IOSObjectArray arrayWithObjects:(id[]){ OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats)) getNumberOfDocuments], @"numberOfDocuments", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]), OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([stats getTotalTermFreq], @"totalTermFreq", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]) } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (NSString *)description {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BasicModel", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "score", "F", 0x401, NULL, NULL },
    { "explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesBasicModel = { 2, "BasicModel", "org.apache.lucene.search.similarities", NULL, 0x401, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesBasicModel;
}

@end

void OrgApacheLuceneSearchSimilaritiesBasicModel_init(OrgApacheLuceneSearchSimilaritiesBasicModel *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesBasicModel)
