//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelD.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesBasicModelD_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesBasicModelD_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesBasicModelD_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesBasicModelD_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesBasicModelD_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesBasicModelD_) && (OrgApacheLuceneSearchSimilaritiesBasicModelD_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesBasicModelD_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesBasicModelD_

#define OrgApacheLuceneSearchSimilaritiesBasicModel_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE 1
#include "org/apache/lucene/search/similarities/BasicModel.h"

@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesBasicModelD : OrgApacheLuceneSearchSimilaritiesBasicModel

#pragma mark Public

- (instancetype)init;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesBasicModelD)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBasicModelD_init(OrgApacheLuceneSearchSimilaritiesBasicModelD *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBasicModelD *new_OrgApacheLuceneSearchSimilaritiesBasicModelD_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesBasicModelD)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesBasicModelD_INCLUDE_ALL")