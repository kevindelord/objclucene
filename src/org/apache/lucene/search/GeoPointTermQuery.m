//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointTermQuery.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/GeoPointTermQuery.h"
#include "org/apache/lucene/search/GeoPointTermQueryConstantScoreWrapper.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/GeoUtils.h"

@interface OrgApacheLuceneSearchGeoPointTermQuery_$1 : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointTermQuery_$1)

__attribute__((unused)) static void OrgApacheLuceneSearchGeoPointTermQuery_$1_init(OrgApacheLuceneSearchGeoPointTermQuery_$1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointTermQuery_$1 *new_OrgApacheLuceneSearchGeoPointTermQuery_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointTermQuery_$1 *create_OrgApacheLuceneSearchGeoPointTermQuery_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointTermQuery_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchGeoPointTermQuery)

OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchGeoPointTermQuery_GEO_CONSTANT_SCORE_REWRITE;

@implementation OrgApacheLuceneSearchGeoPointTermQuery

+ (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)GEO_CONSTANT_SCORE_REWRITE {
  return OrgApacheLuceneSearchGeoPointTermQuery_GEO_CONSTANT_SCORE_REWRITE;
}

- (instancetype)initWithNSString:(NSString *)field
                      withDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat {
  OrgApacheLuceneSearchGeoPointTermQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(self, field, minLon, minLat, maxLon, maxLat);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchGeoPointTermQuery class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchGeoPointTermQuery_GEO_CONSTANT_SCORE_REWRITE, new_OrgApacheLuceneSearchGeoPointTermQuery_$1_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchGeoPointTermQuery)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withDouble:withDouble:withDouble:withDouble:", "GeoPointTermQuery", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "minLon_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "minLat_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "maxLon_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "maxLat_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "GEO_CONSTANT_SCORE_REWRITE", "GEO_CONSTANT_SCORE_REWRITE", 0x19, "Lorg.apache.lucene.search.MultiTermQuery$RewriteMethod;", &OrgApacheLuceneSearchGeoPointTermQuery_GEO_CONSTANT_SCORE_REWRITE, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointTermQuery = { 2, "GeoPointTermQuery", "org.apache.lucene.search", NULL, 0x400, 1, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchGeoPointTermQuery;
}

@end

void OrgApacheLuceneSearchGeoPointTermQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointTermQuery *self, NSString *field, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  OrgApacheLuceneSearchMultiTermQuery_initWithNSString_(self, field);
  if (OrgApacheLuceneUtilGeoUtils_isValidLonWithDouble_(minLon) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid minLon ", minLon));
  }
  if (OrgApacheLuceneUtilGeoUtils_isValidLonWithDouble_(maxLon) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid maxLon ", maxLon));
  }
  if (OrgApacheLuceneUtilGeoUtils_isValidLatWithDouble_(minLat) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid minLat ", minLat));
  }
  if (OrgApacheLuceneUtilGeoUtils_isValidLatWithDouble_(maxLat) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid maxLat ", maxLat));
  }
  self->minLon_ = minLon;
  self->minLat_ = minLat;
  self->maxLon_ = maxLon;
  self->maxLat_ = maxLat;
  JreStrongAssign(&self->rewriteMethod_, OrgApacheLuceneSearchGeoPointTermQuery_GEO_CONSTANT_SCORE_REWRITE);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointTermQuery)

@implementation OrgApacheLuceneSearchGeoPointTermQuery_$1

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  OrgApacheLuceneSearchQuery *result = create_OrgApacheLuceneSearchGeoPointTermQueryConstantScoreWrapper_initWithOrgApacheLuceneSearchGeoPointTermQuery_((OrgApacheLuceneSearchGeoPointTermQuery *) cast_chk(query, [OrgApacheLuceneSearchGeoPointTermQuery class]));
  [result setBoostWithFloat:[((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query)) getBoost]];
  return result;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchGeoPointTermQuery_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointTermQuery_$1 = { 2, "", "org.apache.lucene.search", "GeoPointTermQuery", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchGeoPointTermQuery_$1;
}

@end

void OrgApacheLuceneSearchGeoPointTermQuery_$1_init(OrgApacheLuceneSearchGeoPointTermQuery_$1 *self) {
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(self);
}

OrgApacheLuceneSearchGeoPointTermQuery_$1 *new_OrgApacheLuceneSearchGeoPointTermQuery_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointTermQuery_$1, init)
}

OrgApacheLuceneSearchGeoPointTermQuery_$1 *create_OrgApacheLuceneSearchGeoPointTermQuery_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointTermQuery_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointTermQuery_$1)