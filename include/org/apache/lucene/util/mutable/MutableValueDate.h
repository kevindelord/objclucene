//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueDate.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueDate")
#ifdef RESTRICT_OrgApacheLuceneUtilMutableMutableValueDate
#define INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueDate 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueDate 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilMutableMutableValueDate

#if !defined (OrgApacheLuceneUtilMutableMutableValueDate_) && (INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueDate || defined(INCLUDE_OrgApacheLuceneUtilMutableMutableValueDate))
#define OrgApacheLuceneUtilMutableMutableValueDate_

#define RESTRICT_OrgApacheLuceneUtilMutableMutableValueLong 1
#define INCLUDE_OrgApacheLuceneUtilMutableMutableValueLong 1
#include "org/apache/lucene/util/mutable/MutableValueLong.h"

@class OrgApacheLuceneUtilMutableMutableValue;

/*!
 @brief <code>MutableValue</code> implementation of type <code>Date</code>.
 - seealso: MutableValueLong
 */
@interface OrgApacheLuceneUtilMutableMutableValueDate : OrgApacheLuceneUtilMutableMutableValueLong

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate;

- (id)toObject;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilMutableMutableValueDate)

FOUNDATION_EXPORT void OrgApacheLuceneUtilMutableMutableValueDate_init(OrgApacheLuceneUtilMutableMutableValueDate *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilMutableMutableValueDate *new_OrgApacheLuceneUtilMutableMutableValueDate_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilMutableMutableValueDate *create_OrgApacheLuceneUtilMutableMutableValueDate_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilMutableMutableValueDate)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilMutableMutableValueDate")