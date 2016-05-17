//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointInPolygonQuery.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/GeoBoundingBox.h"
#include "org/apache/lucene/search/GeoPointInBBoxQueryImpl.h"
#include "org/apache/lucene/search/GeoPointInPolygonQuery.h"
#include "org/apache/lucene/search/GeoPointTermsEnum.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/GeoUtils.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneSearchGeoPointInPolygonQuery () {
 @public
  IOSDoubleArray *x_;
  IOSDoubleArray *y_;
}

/*!
 @brief Common constructor, used only internally.
 */
- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchGeoBoundingBox:(OrgApacheLuceneSearchGeoBoundingBox *)bbox
                 withDoubleArray:(IOSDoubleArray *)polyLons
                 withDoubleArray:(IOSDoubleArray *)polyLats;

- (IOSDoubleArray *)toleranceConversionWithDoubleArray:(IOSDoubleArray *)vals;

+ (OrgApacheLuceneSearchGeoBoundingBox *)computeBBoxWithDoubleArray:(IOSDoubleArray *)polyLons
                                                    withDoubleArray:(IOSDoubleArray *)polyLats;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointInPolygonQuery, x_, IOSDoubleArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointInPolygonQuery, y_, IOSDoubleArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

__attribute__((unused)) static IOSDoubleArray *OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, IOSDoubleArray *vals);

__attribute__((unused)) static OrgApacheLuceneSearchGeoBoundingBox *OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(IOSDoubleArray *polyLons, IOSDoubleArray *polyLats);

/*!
 @brief Custom <code>org.apache.lucene.index.TermsEnum</code> that computes morton hash ranges based on the defined edges of
 the provided polygon.
 */
@interface OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum : OrgApacheLuceneSearchGeoPointTermsEnum {
 @public
  OrgApacheLuceneSearchGeoPointInPolygonQuery *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchGeoPointInPolygonQuery:(OrgApacheLuceneSearchGeoPointInPolygonQuery *)outer$
                                  withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                         withDouble:(jdouble)minLon
                                                         withDouble:(jdouble)minLat
                                                         withDouble:(jdouble)maxLon
                                                         withDouble:(jdouble)maxLat;

- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat;

- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat;

- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat;

/*!
 @brief The two-phase query approach.
 The parent
 <code>org.apache.lucene.search.GeoPointTermsEnum.accept</code> method is called to match
 encoded terms that fall within the bounding box of the polygon. Those documents that pass the initial
 bounding box filter are then compared to the provided polygon using the
 <code>org.apache.lucene.util.GeoUtils.pointInPolygon</code> method.
 */
- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum, this$0_, OrgApacheLuceneSearchGeoPointInPolygonQuery *)

__attribute__((unused)) static void OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *self, OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum)

@implementation OrgApacheLuceneSearchGeoPointInPolygonQuery

- (instancetype)initWithNSString:(NSString *)field
                 withDoubleArray:(IOSDoubleArray *)polyLons
                 withDoubleArray:(IOSDoubleArray *)polyLats {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(self, field, polyLons, polyLats);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchGeoBoundingBox:(OrgApacheLuceneSearchGeoBoundingBox *)bbox
                 withDoubleArray:(IOSDoubleArray *)polyLons
                 withDoubleArray:(IOSDoubleArray *)polyLats {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(self, field, bbox, polyLons, polyLats);
  return self;
}

- (IOSDoubleArray *)toleranceConversionWithDoubleArray:(IOSDoubleArray *)vals {
  return OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(self, vals);
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts {
  return create_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator], self->minLon_, self->minLat_, self->maxLon_, self->maxLat_);
}

- (void)setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"cannot change rewrite method");
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self getClass] != (id) [o getClass]) return false;
  if (![super isEqual:o]) return false;
  OrgApacheLuceneSearchGeoPointInPolygonQuery *that = (OrgApacheLuceneSearchGeoPointInPolygonQuery *) cast_chk(o, [OrgApacheLuceneSearchGeoPointInPolygonQuery class]);
  if (!JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(x_, that->x_)) return false;
  if (!JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_(y_, that->y_)) return false;
  return true;
}

- (NSUInteger)hash {
  jint result = ((jint) [super hash]);
  result = 31 * result + (x_ != nil ? JavaUtilArrays_hashCodeWithDoubleArray_(x_) : 0);
  result = 31 * result + (y_ != nil ? JavaUtilArrays_hashCodeWithDoubleArray_(y_) : 0);
  return result;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JreAssert((((IOSDoubleArray *) nil_chk(x_))->size_ == ((IOSDoubleArray *) nil_chk(y_))->size_), (@"org/apache/lucene/search/GeoPointInPolygonQuery.java:124 condition failed: assert x.length == y.length;"));
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithNSString:[[self getClass] getSimpleName]];
  [sb appendWithChar:':'];
  if (![((NSString *) nil_chk([self getField])) isEqual:field]) {
    [sb appendWithNSString:@" field="];
    [sb appendWithNSString:[self getField]];
    [sb appendWithChar:':'];
  }
  [sb appendWithNSString:@" Points: "];
  for (jint i = 0; i < x_->size_; ++i) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"["])) appendWithDouble:IOSDoubleArray_Get(x_, i)])) appendWithNSString:@", "])) appendWithDouble:IOSDoubleArray_Get(y_, i)])) appendWithNSString:@"] "];
  }
  [sb appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [sb description];
}

+ (OrgApacheLuceneSearchGeoBoundingBox *)computeBBoxWithDoubleArray:(IOSDoubleArray *)polyLons
                                                    withDoubleArray:(IOSDoubleArray *)polyLats {
  return OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(polyLons, polyLats);
}

- (IOSDoubleArray *)getLons {
  return self->x_;
}

- (IOSDoubleArray *)getLats {
  return self->y_;
}

- (void)dealloc {
  RELEASE_(x_);
  RELEASE_(y_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withDoubleArray:withDoubleArray:", "GeoPointInPolygonQuery", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneSearchGeoBoundingBox:withDoubleArray:withDoubleArray:", "GeoPointInPolygonQuery", NULL, 0x2, NULL, NULL },
    { "toleranceConversionWithDoubleArray:", "toleranceConversion", "[D", 0x2, NULL, NULL },
    { "getTermsEnumWithOrgApacheLuceneIndexTerms:withOrgApacheLuceneUtilAttributeSource:", "getTermsEnum", "Lorg.apache.lucene.index.TermsEnum;", 0x4, "Ljava.io.IOException;", NULL },
    { "setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:", "setRewriteMethod", "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "computeBBoxWithDoubleArray:withDoubleArray:", "computeBBox", "Lorg.apache.lucene.search.GeoBoundingBox;", 0xa, NULL, NULL },
    { "getLons", NULL, "[D", 0x1, NULL, NULL },
    { "getLats", NULL, "[D", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "x_", NULL, 0x12, "[D", NULL, NULL, .constantValue.asLong = 0 },
    { "y_", NULL, 0x12, "[D", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.GeoPointInPolygonQuery$GeoPolygonTermsEnum;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointInPolygonQuery = { 2, "GeoPointInPolygonQuery", "org.apache.lucene.search", NULL, 0x11, 11, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchGeoPointInPolygonQuery;
}

@end

void OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(self, field, OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(polyLons, polyLats), polyLons, polyLats);
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withDoubleArray_withDoubleArray_, field, polyLons, polyLats)
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withDoubleArray_withDoubleArray_(NSString *field, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withDoubleArray_withDoubleArray_, field, polyLons, polyLats)
}

void OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initWithNSString_withDouble_withDouble_withDouble_withDouble_(self, field, ((OrgApacheLuceneSearchGeoBoundingBox *) nil_chk(bbox))->minLon_, bbox->minLat_, bbox->maxLon_, bbox->maxLat_);
  if (((IOSDoubleArray *) nil_chk(polyLats))->size_ != ((IOSDoubleArray *) nil_chk(polyLons))->size_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"polyLats and polyLons must be equal length");
  }
  if (polyLats->size_ < 4) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"at least 4 polygon points required");
  }
  if (IOSDoubleArray_Get(polyLats, 0) != IOSDoubleArray_Get(polyLats, polyLats->size_ - 1)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D$I$D", @"first and last points of the polygon must be the same (it must close itself): polyLats[0]=", IOSDoubleArray_Get(polyLats, 0), @" polyLats[", (polyLats->size_ - 1), @"]=", IOSDoubleArray_Get(polyLats, polyLats->size_ - 1)));
  }
  if (IOSDoubleArray_Get(polyLons, 0) != IOSDoubleArray_Get(polyLons, polyLons->size_ - 1)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D$I$D", @"first and last points of the polygon must be the same (it must close itself): polyLons[0]=", IOSDoubleArray_Get(polyLons, 0), @" polyLons[", (polyLons->size_ - 1), @"]=", IOSDoubleArray_Get(polyLons, polyLons->size_ - 1)));
  }
  JreStrongAssign(&self->x_, OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(self, polyLons));
  JreStrongAssign(&self->y_, OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(self, polyLats));
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_, field, bbox, polyLons, polyLats)
}

OrgApacheLuceneSearchGeoPointInPolygonQuery *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_(NSString *field, OrgApacheLuceneSearchGeoBoundingBox *bbox, IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery, initWithNSString_withOrgApacheLuceneSearchGeoBoundingBox_withDoubleArray_withDoubleArray_, field, bbox, polyLons, polyLats)
}

IOSDoubleArray *OrgApacheLuceneSearchGeoPointInPolygonQuery_toleranceConversionWithDoubleArray_(OrgApacheLuceneSearchGeoPointInPolygonQuery *self, IOSDoubleArray *vals) {
  for (jint i = 0; i < ((IOSDoubleArray *) nil_chk(vals))->size_; ++i) {
    *IOSDoubleArray_GetRef(vals, i) = (JreFpToInt((IOSDoubleArray_Get(vals, i) / OrgApacheLuceneUtilGeoUtils_TOLERANCE))) * OrgApacheLuceneUtilGeoUtils_TOLERANCE;
  }
  return vals;
}

OrgApacheLuceneSearchGeoBoundingBox *OrgApacheLuceneSearchGeoPointInPolygonQuery_computeBBoxWithDoubleArray_withDoubleArray_(IOSDoubleArray *polyLons, IOSDoubleArray *polyLats) {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_initialize();
  if (((IOSDoubleArray *) nil_chk(polyLons))->size_ != ((IOSDoubleArray *) nil_chk(polyLats))->size_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"polyLons and polyLats must be equal length");
  }
  jdouble minLon = JavaLangDouble_POSITIVE_INFINITY;
  jdouble maxLon = JavaLangDouble_NEGATIVE_INFINITY;
  jdouble minLat = JavaLangDouble_POSITIVE_INFINITY;
  jdouble maxLat = JavaLangDouble_NEGATIVE_INFINITY;
  for (jint i = 0; i < polyLats->size_; i++) {
    if (OrgApacheLuceneUtilGeoUtils_isValidLonWithDouble_(IOSDoubleArray_Get(polyLons, i)) == false) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$D", @"invalid polyLons[", i, @"]=", IOSDoubleArray_Get(polyLons, i)));
    }
    if (OrgApacheLuceneUtilGeoUtils_isValidLatWithDouble_(IOSDoubleArray_Get(polyLats, i)) == false) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$D", @"invalid polyLats[", i, @"]=", IOSDoubleArray_Get(polyLats, i)));
    }
    minLon = JavaLangMath_minWithDouble_withDouble_(IOSDoubleArray_Get(polyLons, i), minLon);
    maxLon = JavaLangMath_maxWithDouble_withDouble_(IOSDoubleArray_Get(polyLons, i), maxLon);
    minLat = JavaLangMath_minWithDouble_withDouble_(IOSDoubleArray_Get(polyLats, i), minLat);
    maxLat = JavaLangMath_maxWithDouble_withDouble_(IOSDoubleArray_Get(polyLats, i), maxLat);
  }
  return create_OrgApacheLuceneSearchGeoBoundingBox_initWithDouble_withDouble_withDouble_withDouble_(minLon, maxLon, minLat, maxLat);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointInPolygonQuery)

@implementation OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum

- (instancetype)initWithOrgApacheLuceneSearchGeoPointInPolygonQuery:(OrgApacheLuceneSearchGeoPointInPolygonQuery *)outer$
                                  withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                                                         withDouble:(jdouble)minLon
                                                         withDouble:(jdouble)minLat
                                                         withDouble:(jdouble)maxLon
                                                         withDouble:(jdouble)maxLat {
  OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, outer$, tenum, minLon, minLat, maxLon, maxLat);
  return self;
}

- (jboolean)cellCrossesWithDouble:(jdouble)minLon
                       withDouble:(jdouble)minLat
                       withDouble:(jdouble)maxLon
                       withDouble:(jdouble)maxLat {
  return OrgApacheLuceneUtilGeoUtils_rectCrossesPolyWithDouble_withDouble_withDouble_withDouble_withDoubleArray_withDoubleArray_withDouble_withDouble_withDouble_withDouble_(minLon, minLat, maxLon, maxLat, this$0_->x_, this$0_->y_, this$0_->minLon_, this$0_->minLat_, this$0_->maxLon_, this$0_->maxLat_);
}

- (jboolean)cellWithinWithDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat {
  return OrgApacheLuceneUtilGeoUtils_rectWithinPolyWithDouble_withDouble_withDouble_withDouble_withDoubleArray_withDoubleArray_withDouble_withDouble_withDouble_withDouble_(minLon, minLat, maxLon, maxLat, this$0_->x_, this$0_->y_, this$0_->minLon_, this$0_->minLat_, this$0_->maxLon_, this$0_->maxLat_);
}

- (jboolean)cellIntersectsShapeWithDouble:(jdouble)minLon
                               withDouble:(jdouble)minLat
                               withDouble:(jdouble)maxLon
                               withDouble:(jdouble)maxLat {
  return [self cellWithinWithDouble:minLon withDouble:minLat withDouble:maxLon withDouble:maxLat] || [self cellCrossesWithDouble:minLon withDouble:minLat withDouble:maxLon withDouble:maxLat];
}

- (jboolean)postFilterWithDouble:(jdouble)lon
                      withDouble:(jdouble)lat {
  return OrgApacheLuceneUtilGeoUtils_pointInPolygonWithDoubleArray_withDoubleArray_withDouble_withDouble_(this$0_->x_, this$0_->y_, lat, lon);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchGeoPointInPolygonQuery:withOrgApacheLuceneIndexTermsEnum:withDouble:withDouble:withDouble:withDouble:", "GeoPolygonTermsEnum", NULL, 0x0, NULL, NULL },
    { "cellCrossesWithDouble:withDouble:withDouble:withDouble:", "cellCrosses", "Z", 0x4, NULL, NULL },
    { "cellWithinWithDouble:withDouble:withDouble:withDouble:", "cellWithin", "Z", 0x4, NULL, NULL },
    { "cellIntersectsShapeWithDouble:withDouble:withDouble:withDouble:", "cellIntersectsShape", "Z", 0x4, NULL, NULL },
    { "postFilterWithDouble:withDouble:", "postFilter", "Z", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.GeoPointInPolygonQuery;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum = { 2, "GeoPolygonTermsEnum", "org.apache.lucene.search", "GeoPointInPolygonQuery", 0x12, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum;
}

@end

void OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *self, OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchGeoPointTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(self, tenum, minLon, minLat, maxLon, maxLat);
}

OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *new_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum, initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_, outer$, tenum, minLon, minLat, maxLon, maxLat)
}

OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum *create_OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum_initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInPolygonQuery *outer$, OrgApacheLuceneIndexTermsEnum *tenum, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum, initWithOrgApacheLuceneSearchGeoPointInPolygonQuery_withOrgApacheLuceneIndexTermsEnum_withDouble_withDouble_withDouble_withDouble_, outer$, tenum, minLon, minLat, maxLon, maxLat)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointInPolygonQuery_GeoPolygonTermsEnum)
