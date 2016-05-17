//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/LongValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilLongValues")
#ifdef RESTRICT_OrgApacheLuceneUtilLongValues
#define INCLUDE_ALL_OrgApacheLuceneUtilLongValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilLongValues 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilLongValues

#if !defined (OrgApacheLuceneUtilLongValues_) && (INCLUDE_ALL_OrgApacheLuceneUtilLongValues || defined(INCLUDE_OrgApacheLuceneUtilLongValues))
#define OrgApacheLuceneUtilLongValues_

#define RESTRICT_OrgApacheLuceneIndexNumericDocValues 1
#define INCLUDE_OrgApacheLuceneIndexNumericDocValues 1
#include "org/apache/lucene/index/NumericDocValues.h"

/*!
 @brief Abstraction over an array of longs.
 This class extends NumericDocValues so that we don't need to add another
 level of abstraction every time we want eg. to use the <code>PackedInts</code>
 utility classes to represent a <code>NumericDocValues</code> instance.
  
 */
@interface OrgApacheLuceneUtilLongValues : OrgApacheLuceneIndexNumericDocValues

+ (OrgApacheLuceneUtilLongValues *)IDENTITY;

#pragma mark Public

- (instancetype)init;

- (jlong)getWithInt:(jint)idx;

/*!
 @brief Get value at <code>index</code>.
 */
- (jlong)getWithLong:(jlong)index;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilLongValues)

/*!
 @brief An instance that returns the provided value.
 */
inline OrgApacheLuceneUtilLongValues *OrgApacheLuceneUtilLongValues_get_IDENTITY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilLongValues *OrgApacheLuceneUtilLongValues_IDENTITY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilLongValues, IDENTITY, OrgApacheLuceneUtilLongValues *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilLongValues_init(OrgApacheLuceneUtilLongValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilLongValues)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilLongValues")
