//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModel.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesBasicModel_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesBasicModel_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesBasicModel_) && (OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesBasicModel_

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesBasicModel : NSObject

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesBasicModel)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBasicModel_init(OrgApacheLuceneSearchSimilaritiesBasicModel *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesBasicModel)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE_ALL")