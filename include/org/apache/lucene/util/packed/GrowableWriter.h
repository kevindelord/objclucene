//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/GrowableWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedGrowableWriter
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedGrowableWriter

#if !defined (OrgApacheLuceneUtilPackedGrowableWriter_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter || defined(INCLUDE_OrgApacheLuceneUtilPackedGrowableWriter))
#define OrgApacheLuceneUtilPackedGrowableWriter_

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Mutable 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@class IOSLongArray;
@class OrgApacheLuceneStoreDataOutput;

/*!
 @brief Implements <code>PackedInts.Mutable</code>, but grows the
 bit count of the underlying packed ints on-demand.
 <p>Beware that this class will accept to set negative values but in order
 to do this, it will grow the number of bits per value to 64.
 <p>@@lucene.internal</p>
 */
@interface OrgApacheLuceneUtilPackedGrowableWriter : OrgApacheLuceneUtilPackedPackedInts_Mutable

#pragma mark Public

/*!
 @param startBitsPerValue       the initial number of bits per value, may grow depending on the data
 @param valueCount              the number of values
 @param acceptableOverheadRatio an acceptable overhead ratio
 */
- (instancetype)initWithInt:(jint)startBitsPerValue
                    withInt:(jint)valueCount
                  withFloat:(jfloat)acceptableOverheadRatio;

- (void)clear;

- (void)fillWithInt:(jint)fromIndex
            withInt:(jint)toIndex
           withLong:(jlong)val;

- (jlong)getWithInt:(jint)index;

- (jint)getWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len;

- (jint)getBitsPerValue;

- (OrgApacheLuceneUtilPackedPackedInts_Mutable *)getMutable;

- (jlong)ramBytesUsed;

- (OrgApacheLuceneUtilPackedGrowableWriter *)resizeWithInt:(jint)newSize;

- (void)saveWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

- (jint)setWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedGrowableWriter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(OrgApacheLuceneUtilPackedGrowableWriter *self, jint startBitsPerValue, jint valueCount, jfloat acceptableOverheadRatio);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedGrowableWriter *new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(jint startBitsPerValue, jint valueCount, jfloat acceptableOverheadRatio) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedGrowableWriter *create_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(jint startBitsPerValue, jint valueCount, jfloat acceptableOverheadRatio);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedGrowableWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedGrowableWriter")
