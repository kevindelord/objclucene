//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelBE.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesBasicModelBE_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesBasicModelBE_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesBasicModelBE_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesBasicModelBE_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesBasicModelBE_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesBasicModelBE_) && (OrgApacheLuceneSearchSimilaritiesBasicModelBE_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesBasicModelBE_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesBasicModelBE_

#define OrgApacheLuceneSearchSimilaritiesBasicModel_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE 1
#include "org/apache/lucene/search/similarities/BasicModel.h"

@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesBasicModelBE : OrgApacheLuceneSearchSimilaritiesBasicModel

#pragma mark Public

- (instancetype)init;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesBasicModelBE)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBasicModelBE_init(OrgApacheLuceneSearchSimilaritiesBasicModelBE *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBasicModelBE *new_OrgApacheLuceneSearchSimilaritiesBasicModelBE_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesBasicModelBE)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesBasicModelBE_INCLUDE_ALL")