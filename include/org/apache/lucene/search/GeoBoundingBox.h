//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoBoundingBox.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGeoBoundingBox_INCLUDE_ALL")
#if OrgApacheLuceneSearchGeoBoundingBox_RESTRICT
#define OrgApacheLuceneSearchGeoBoundingBox_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGeoBoundingBox_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGeoBoundingBox_RESTRICT

#if !defined (_OrgApacheLuceneSearchGeoBoundingBox_) && (OrgApacheLuceneSearchGeoBoundingBox_INCLUDE_ALL || OrgApacheLuceneSearchGeoBoundingBox_INCLUDE)
#define _OrgApacheLuceneSearchGeoBoundingBox_

@interface OrgApacheLuceneSearchGeoBoundingBox : NSObject {
 @public
  jdouble minLon_;
  jdouble maxLon_;
  jdouble minLat_;
  jdouble maxLat_;
}

#pragma mark Public

- (instancetype)initWithDouble:(jdouble)minLon
                    withDouble:(jdouble)maxLon
                    withDouble:(jdouble)minLat
                    withDouble:(jdouble)maxLat;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGeoBoundingBox)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGeoBoundingBox_initWithDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoBoundingBox *self, jdouble minLon, jdouble maxLon, jdouble minLat, jdouble maxLat);

FOUNDATION_EXPORT OrgApacheLuceneSearchGeoBoundingBox *new_OrgApacheLuceneSearchGeoBoundingBox_initWithDouble_withDouble_withDouble_withDouble_(jdouble minLon, jdouble maxLon, jdouble minLat, jdouble maxLat) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGeoBoundingBox)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGeoBoundingBox_INCLUDE_ALL")