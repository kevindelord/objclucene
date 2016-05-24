//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/SparseFixedBitSet.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/BitSetIterator.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/SparseFixedBitSet.h"

@interface OrgApacheLuceneUtilSparseFixedBitSet ()

+ (jint)blockCountWithInt:(jint)length;

- (jboolean)consistentWithInt:(jint)index;

+ (jint)oversizeWithInt:(jint)s;

- (void)insertBlockWithInt:(jint)i4096
                   withInt:(jint)i64
                   withInt:(jint)i;

- (void)insertLongWithInt:(jint)i4096
                  withInt:(jint)i64
                  withInt:(jint)i
                 withLong:(jlong)index;

- (void)and__WithInt:(jint)i4096
             withInt:(jint)i64
            withLong:(jlong)mask;

- (void)removeLongWithInt:(jint)i4096
                  withInt:(jint)i64
                 withLong:(jlong)index
                  withInt:(jint)o;

+ (jlong)maskWithInt:(jint)from
             withInt:(jint)to;

- (void)clearWithinBlockWithInt:(jint)i4096
                        withInt:(jint)from
                        withInt:(jint)to;

/*!
 @brief Return the first document that occurs on or after the provided block index.
 */
- (jint)firstDocWithInt:(jint)i4096;

/*!
 @brief Return the last document that occurs on or before the provided block index.
 */
- (jint)lastDocWithInt:(jint)i4096;

/*!
 @brief Return the long bits at the given <code>i64</code> index.
 */
- (jlong)longBitsWithLong:(jlong)index
            withLongArray:(IOSLongArray *)bits
                  withInt:(jint)i64;

- (void)or__WithInt:(jint)i4096
           withLong:(jlong)index
      withLongArray:(IOSLongArray *)bits
            withInt:(jint)nonZeroLongCount;

- (void)or__WithOrgApacheLuceneUtilSparseFixedBitSet:(OrgApacheLuceneUtilSparseFixedBitSet *)other;

/*!
 @brief <code>or(DocIdSetIterator)</code> impl that works best when <code>it</code> is dense
 */
- (void)orDenseWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)it;

@end

inline jlong OrgApacheLuceneUtilSparseFixedBitSet_get_BASE_RAM_BYTES_USED();
static jlong OrgApacheLuceneUtilSparseFixedBitSet_BASE_RAM_BYTES_USED;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilSparseFixedBitSet, BASE_RAM_BYTES_USED, jlong)

inline jlong OrgApacheLuceneUtilSparseFixedBitSet_get_SINGLE_ELEMENT_ARRAY_BYTES_USED();
static jlong OrgApacheLuceneUtilSparseFixedBitSet_SINGLE_ELEMENT_ARRAY_BYTES_USED;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilSparseFixedBitSet, SINGLE_ELEMENT_ARRAY_BYTES_USED, jlong)

inline jint OrgApacheLuceneUtilSparseFixedBitSet_get_MASK_4096();
#define OrgApacheLuceneUtilSparseFixedBitSet_MASK_4096 4095
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilSparseFixedBitSet, MASK_4096, jint)

__attribute__((unused)) static jint OrgApacheLuceneUtilSparseFixedBitSet_blockCountWithInt_(jint length);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilSparseFixedBitSet_consistentWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint index);

__attribute__((unused)) static jint OrgApacheLuceneUtilSparseFixedBitSet_oversizeWithInt_(jint s);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_insertBlockWithInt_withInt_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jint i);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_insertLongWithInt_withInt_withInt_withLong_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jint i, jlong index);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jlong mask);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_removeLongWithInt_withInt_withLong_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jlong index, jint o);

__attribute__((unused)) static jlong OrgApacheLuceneUtilSparseFixedBitSet_maskWithInt_withInt_(jint from, jint to);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_clearWithinBlockWithInt_withInt_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint from, jint to);

__attribute__((unused)) static jint OrgApacheLuceneUtilSparseFixedBitSet_firstDocWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096);

__attribute__((unused)) static jint OrgApacheLuceneUtilSparseFixedBitSet_lastDocWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096);

__attribute__((unused)) static jlong OrgApacheLuceneUtilSparseFixedBitSet_longBitsWithLong_withLongArray_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jlong index, IOSLongArray *bits, jint i64);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_or__WithInt_withLong_withLongArray_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jlong index, IOSLongArray *bits, jint nonZeroLongCount);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_or__WithOrgApacheLuceneUtilSparseFixedBitSet_(OrgApacheLuceneUtilSparseFixedBitSet *self, OrgApacheLuceneUtilSparseFixedBitSet *other);

__attribute__((unused)) static void OrgApacheLuceneUtilSparseFixedBitSet_orDenseWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilSparseFixedBitSet *self, OrgApacheLuceneSearchDocIdSetIterator *it);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilSparseFixedBitSet)

@implementation OrgApacheLuceneUtilSparseFixedBitSet

+ (jint)blockCountWithInt:(jint)length {
  return OrgApacheLuceneUtilSparseFixedBitSet_blockCountWithInt_(length);
}

- (instancetype)initWithInt:(jint)length {
  OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(self, length);
  return self;
}

- (jint)length {
  return length_;
}

- (jboolean)consistentWithInt:(jint)index {
  return OrgApacheLuceneUtilSparseFixedBitSet_consistentWithInt_(self, index);
}

- (jint)cardinality {
  jint cardinality = 0;
  {
    IOSObjectArray *a__ = bits_;
    IOSLongArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    IOSLongArray * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      IOSLongArray *bitArray = *b__++;
      if (bitArray != nil) {
        {
          IOSLongArray *a__ = bitArray;
          jlong const *b__ = a__->buffer_;
          jlong const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            jlong bits = *b__++;
            cardinality += JavaLangLong_bitCountWithLong_(bits);
          }
        }
      }
    }
  }
  return cardinality;
}

- (jint)approximateCardinality {
  jint totalLongs = JreURShift32((length_ + 63), 6);
  JreAssert((totalLongs >= nonZeroLongCount_), (@"org/apache/lucene/util/SparseFixedBitSet.java:101 condition failed: assert totalLongs >= nonZeroLongCount;"));
  jint zeroLongs = totalLongs - nonZeroLongCount_;
  jlong estimate = JavaLangMath_roundWithDouble_(totalLongs * JavaLangMath_logWithDouble_((jdouble) totalLongs / zeroLongs));
  return (jint) JavaLangMath_minWithLong_withLong_(length_, estimate);
}

- (jboolean)getWithInt:(jint)i {
  JreAssert((OrgApacheLuceneUtilSparseFixedBitSet_consistentWithInt_(self, i)), (@"org/apache/lucene/util/SparseFixedBitSet.java:110 condition failed: assert consistent(i);"));
  jint i4096 = JreURShift32(i, 12);
  jlong index = IOSLongArray_Get(nil_chk(indices_), i4096);
  jint i64 = JreURShift32(i, 6);
  if ((index & (JreLShift64(1LL, i64))) == 0) {
    return false;
  }
  jlong bits = IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->bits_), i4096)), JavaLangLong_bitCountWithLong_(index & ((JreLShift64(1LL, i64)) - 1)));
  return (bits & (JreLShift64(1LL, i))) != 0;
}

+ (jint)oversizeWithInt:(jint)s {
  return OrgApacheLuceneUtilSparseFixedBitSet_oversizeWithInt_(s);
}

- (void)setWithInt:(jint)i {
  JreAssert((OrgApacheLuceneUtilSparseFixedBitSet_consistentWithInt_(self, i)), (@"org/apache/lucene/util/SparseFixedBitSet.java:139 condition failed: assert consistent(i);"));
  jint i4096 = JreURShift32(i, 12);
  jlong index = IOSLongArray_Get(nil_chk(indices_), i4096);
  jint i64 = JreURShift32(i, 6);
  if ((index & (JreLShift64(1LL, i64))) != 0) {
    *IOSLongArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(bits_), i4096)), JavaLangLong_bitCountWithLong_(index & ((JreLShift64(1LL, i64)) - 1))) |= JreLShift64(1LL, i);
  }
  else if (index == 0) {
    OrgApacheLuceneUtilSparseFixedBitSet_insertBlockWithInt_withInt_withInt_(self, i4096, i64, i);
  }
  else {
    OrgApacheLuceneUtilSparseFixedBitSet_insertLongWithInt_withInt_withInt_withLong_(self, i4096, i64, i, index);
  }
}

- (void)insertBlockWithInt:(jint)i4096
                   withInt:(jint)i64
                   withInt:(jint)i {
  OrgApacheLuceneUtilSparseFixedBitSet_insertBlockWithInt_withInt_withInt_(self, i4096, i64, i);
}

- (void)insertLongWithInt:(jint)i4096
                  withInt:(jint)i64
                  withInt:(jint)i
                 withLong:(jlong)index {
  OrgApacheLuceneUtilSparseFixedBitSet_insertLongWithInt_withInt_withInt_withLong_(self, i4096, i64, i, index);
}

- (void)clearWithInt:(jint)i {
  JreAssert((OrgApacheLuceneUtilSparseFixedBitSet_consistentWithInt_(self, i)), (@"org/apache/lucene/util/SparseFixedBitSet.java:196 condition failed: assert consistent(i);"));
  jint i4096 = JreURShift32(i, 12);
  jint i64 = JreURShift32(i, 6);
  OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(self, i4096, i64, ~(JreLShift64(1LL, i)));
}

- (void)and__WithInt:(jint)i4096
             withInt:(jint)i64
            withLong:(jlong)mask {
  OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(self, i4096, i64, mask);
}

- (void)removeLongWithInt:(jint)i4096
                  withInt:(jint)i64
                 withLong:(jlong)index
                  withInt:(jint)o {
  OrgApacheLuceneUtilSparseFixedBitSet_removeLongWithInt_withInt_withLong_withInt_(self, i4096, i64, index, o);
}

- (void)clearWithInt:(jint)from
             withInt:(jint)to {
  JreAssert((from >= 0), (@"org/apache/lucene/util/SparseFixedBitSet.java:233 condition failed: assert from >= 0;"));
  JreAssert((to <= length_), (@"org/apache/lucene/util/SparseFixedBitSet.java:234 condition failed: assert to <= length;"));
  if (from >= to) {
    return;
  }
  jint firstBlock = JreURShift32(from, 12);
  jint lastBlock = JreURShift32((to - 1), 12);
  if (firstBlock == lastBlock) {
    OrgApacheLuceneUtilSparseFixedBitSet_clearWithinBlockWithInt_withInt_withInt_(self, firstBlock, from & OrgApacheLuceneUtilSparseFixedBitSet_MASK_4096, (to - 1) & OrgApacheLuceneUtilSparseFixedBitSet_MASK_4096);
  }
  else {
    OrgApacheLuceneUtilSparseFixedBitSet_clearWithinBlockWithInt_withInt_withInt_(self, firstBlock, from & OrgApacheLuceneUtilSparseFixedBitSet_MASK_4096, OrgApacheLuceneUtilSparseFixedBitSet_MASK_4096);
    for (jint i = firstBlock + 1; i < lastBlock; ++i) {
      nonZeroLongCount_ -= JavaLangLong_bitCountWithLong_(IOSLongArray_Get(nil_chk(indices_), i));
      *IOSLongArray_GetRef(indices_, i) = 0;
      IOSObjectArray_Set(nil_chk(bits_), i, nil);
    }
    OrgApacheLuceneUtilSparseFixedBitSet_clearWithinBlockWithInt_withInt_withInt_(self, lastBlock, 0, (to - 1) & OrgApacheLuceneUtilSparseFixedBitSet_MASK_4096);
  }
}

+ (jlong)maskWithInt:(jint)from
             withInt:(jint)to {
  return OrgApacheLuceneUtilSparseFixedBitSet_maskWithInt_withInt_(from, to);
}

- (void)clearWithinBlockWithInt:(jint)i4096
                        withInt:(jint)from
                        withInt:(jint)to {
  OrgApacheLuceneUtilSparseFixedBitSet_clearWithinBlockWithInt_withInt_withInt_(self, i4096, from, to);
}

- (jint)firstDocWithInt:(jint)i4096 {
  return OrgApacheLuceneUtilSparseFixedBitSet_firstDocWithInt_(self, i4096);
}

- (jint)nextSetBitWithInt:(jint)i {
  JreAssert((i < length_), (@"org/apache/lucene/util/SparseFixedBitSet.java:290 condition failed: assert i < length;"));
  jint i4096 = JreURShift32(i, 12);
  jlong index = IOSLongArray_Get(nil_chk(indices_), i4096);
  IOSLongArray *bitArray = IOSObjectArray_Get(nil_chk(self->bits_), i4096);
  jint i64 = JreURShift32(i, 6);
  jint o = JavaLangLong_bitCountWithLong_(index & ((JreLShift64(1LL, i64)) - 1));
  if ((index & (JreLShift64(1LL, i64))) != 0) {
    jlong bits = JreURShift64(IOSLongArray_Get(nil_chk(bitArray), o), i);
    if (bits != 0) {
      return i + JavaLangLong_numberOfTrailingZerosWithLong_(bits);
    }
    o += 1;
  }
  jlong indexBits = JreURShift64(JreURShift64(index, i64), 1);
  if (indexBits == 0) {
    return OrgApacheLuceneUtilSparseFixedBitSet_firstDocWithInt_(self, i4096 + 1);
  }
  i64 += 1 + JavaLangLong_numberOfTrailingZerosWithLong_(indexBits);
  jlong bits = IOSLongArray_Get(nil_chk(bitArray), o);
  return (JreLShift32(i64, 6)) | JavaLangLong_numberOfTrailingZerosWithLong_(bits);
}

- (jint)lastDocWithInt:(jint)i4096 {
  return OrgApacheLuceneUtilSparseFixedBitSet_lastDocWithInt_(self, i4096);
}

- (jint)prevSetBitWithInt:(jint)i {
  JreAssert((i >= 0), (@"org/apache/lucene/util/SparseFixedBitSet.java:333 condition failed: assert i >= 0;"));
  jint i4096 = JreURShift32(i, 12);
  jlong index = IOSLongArray_Get(nil_chk(indices_), i4096);
  IOSLongArray *bitArray = IOSObjectArray_Get(nil_chk(self->bits_), i4096);
  jint i64 = JreURShift32(i, 6);
  jlong indexBits = index & ((JreLShift64(1LL, i64)) - 1);
  jint o = JavaLangLong_bitCountWithLong_(indexBits);
  if ((index & (JreLShift64(1LL, i64))) != 0) {
    jlong bits = IOSLongArray_Get(nil_chk(bitArray), o) & ((JreLShift64(JreLShift64(1LL, i), 1)) - 1);
    if (bits != 0) {
      return (JreLShift32(i64, 6)) | (63 - JavaLangLong_numberOfLeadingZerosWithLong_(bits));
    }
  }
  if (indexBits == 0) {
    return OrgApacheLuceneUtilSparseFixedBitSet_lastDocWithInt_(self, i4096 - 1);
  }
  i64 = 63 - JavaLangLong_numberOfLeadingZerosWithLong_(indexBits);
  jlong bits = IOSLongArray_Get(nil_chk(bitArray), o - 1);
  return (JreLShift32(i4096, 12)) | (JreLShift32(i64, 6)) | (63 - JavaLangLong_numberOfLeadingZerosWithLong_(bits));
}

- (jlong)longBitsWithLong:(jlong)index
            withLongArray:(IOSLongArray *)bits
                  withInt:(jint)i64 {
  return OrgApacheLuceneUtilSparseFixedBitSet_longBitsWithLong_withLongArray_withInt_(self, index, bits, i64);
}

- (void)or__WithInt:(jint)i4096
           withLong:(jlong)index
      withLongArray:(IOSLongArray *)bits
            withInt:(jint)nonZeroLongCount {
  OrgApacheLuceneUtilSparseFixedBitSet_or__WithInt_withLong_withLongArray_withInt_(self, i4096, index, bits, nonZeroLongCount);
}

- (void)or__WithOrgApacheLuceneUtilSparseFixedBitSet:(OrgApacheLuceneUtilSparseFixedBitSet *)other {
  OrgApacheLuceneUtilSparseFixedBitSet_or__WithOrgApacheLuceneUtilSparseFixedBitSet_(self, other);
}

- (void)orDenseWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)it {
  OrgApacheLuceneUtilSparseFixedBitSet_orDenseWithOrgApacheLuceneSearchDocIdSetIterator_(self, it);
}

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)it {
  {
    OrgApacheLuceneUtilSparseFixedBitSet *other = OrgApacheLuceneUtilBitSetIterator_getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(it);
    if (other != nil) {
      [self assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:it];
      OrgApacheLuceneUtilSparseFixedBitSet_or__WithOrgApacheLuceneUtilSparseFixedBitSet_(self, other);
      return;
    }
  }
  if ([((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(it)) cost] < ((IOSLongArray *) nil_chk(indices_))->size_) {
    [super or__WithOrgApacheLuceneSearchDocIdSetIterator:it];
  }
  else {
    OrgApacheLuceneUtilSparseFixedBitSet_orDenseWithOrgApacheLuceneSearchDocIdSetIterator_(self, it);
  }
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)it {
  OrgApacheLuceneUtilSparseFixedBitSet *other = OrgApacheLuceneUtilBitSetIterator_getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(it);
  if (other != nil) {
    jint numCommonBlocks = JavaLangMath_minWithInt_withInt_(((IOSLongArray *) nil_chk(indices_))->size_, other->indices_->size_);
    for (jint i = 0; i < numCommonBlocks; ++i) {
      if ((IOSLongArray_Get(indices_, i) & IOSLongArray_Get(other->indices_, i)) == 0) {
        self->nonZeroLongCount_ -= JavaLangLong_bitCountWithLong_(IOSLongArray_Get(self->indices_, i));
        *IOSLongArray_GetRef(self->indices_, i) = 0;
        IOSObjectArray_Set(nil_chk(self->bits_), i, nil);
      }
    }
  }
  [super and__WithOrgApacheLuceneSearchDocIdSetIterator:it];
}

- (jlong)ramBytesUsed {
  return ramBytesUsed_;
}

- (NSString *)description {
  return JreStrcat("$I$I", @"SparseFixedBitSet(size=", length_, @",cardinality=~", [self approximateCardinality]);
}

- (void)dealloc {
  RELEASE_(indices_);
  RELEASE_(bits_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilSparseFixedBitSet class]) {
    OrgApacheLuceneUtilSparseFixedBitSet_BASE_RAM_BYTES_USED = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilSparseFixedBitSet_class_());
    OrgApacheLuceneUtilSparseFixedBitSet_SINGLE_ELEMENT_ARRAY_BYTES_USED = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_([IOSLongArray arrayWithLength:1]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilSparseFixedBitSet)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "blockCountWithInt:", "blockCount", "I", 0xa, NULL, NULL },
    { "initWithInt:", "SparseFixedBitSet", NULL, 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "consistentWithInt:", "consistent", "Z", 0x2, NULL, NULL },
    { "cardinality", NULL, "I", 0x1, NULL, NULL },
    { "approximateCardinality", NULL, "I", 0x1, NULL, NULL },
    { "getWithInt:", "get", "Z", 0x1, NULL, NULL },
    { "oversizeWithInt:", "oversize", "I", 0xa, NULL, NULL },
    { "setWithInt:", "set", "V", 0x1, NULL, NULL },
    { "insertBlockWithInt:withInt:withInt:", "insertBlock", "V", 0x2, NULL, NULL },
    { "insertLongWithInt:withInt:withInt:withLong:", "insertLong", "V", 0x2, NULL, NULL },
    { "clearWithInt:", "clear", "V", 0x1, NULL, NULL },
    { "and__WithInt:withInt:withLong:", "and", "V", 0x2, NULL, NULL },
    { "removeLongWithInt:withInt:withLong:withInt:", "removeLong", "V", 0x2, NULL, NULL },
    { "clearWithInt:withInt:", "clear", "V", 0x1, NULL, NULL },
    { "maskWithInt:withInt:", "mask", "J", 0xa, NULL, NULL },
    { "clearWithinBlockWithInt:withInt:withInt:", "clearWithinBlock", "V", 0x2, NULL, NULL },
    { "firstDocWithInt:", "firstDoc", "I", 0x2, NULL, NULL },
    { "nextSetBitWithInt:", "nextSetBit", "I", 0x1, NULL, NULL },
    { "lastDocWithInt:", "lastDoc", "I", 0x2, NULL, NULL },
    { "prevSetBitWithInt:", "prevSetBit", "I", 0x1, NULL, NULL },
    { "longBitsWithLong:withLongArray:withInt:", "longBits", "J", 0x2, NULL, NULL },
    { "or__WithInt:withLong:withLongArray:withInt:", "or", "V", 0x2, NULL, NULL },
    { "or__WithOrgApacheLuceneUtilSparseFixedBitSet:", "or", "V", 0x2, NULL, NULL },
    { "orDenseWithOrgApacheLuceneSearchDocIdSetIterator:", "orDense", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "or__WithOrgApacheLuceneSearchDocIdSetIterator:", "or", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "and__WithOrgApacheLuceneSearchDocIdSetIterator:", "and", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED", "BASE_RAM_BYTES_USED", 0x1a, "J", &OrgApacheLuceneUtilSparseFixedBitSet_BASE_RAM_BYTES_USED, NULL, .constantValue.asLong = 0 },
    { "SINGLE_ELEMENT_ARRAY_BYTES_USED", "SINGLE_ELEMENT_ARRAY_BYTES_USED", 0x1a, "J", &OrgApacheLuceneUtilSparseFixedBitSet_SINGLE_ELEMENT_ARRAY_BYTES_USED, NULL, .constantValue.asLong = 0 },
    { "MASK_4096", "MASK_4096", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilSparseFixedBitSet_MASK_4096 },
    { "indices_", NULL, 0x10, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "bits_", NULL, 0x10, "[[J", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "nonZeroLongCount_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ramBytesUsed_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilSparseFixedBitSet = { 2, "SparseFixedBitSet", "org.apache.lucene.util", NULL, 0x1, 29, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilSparseFixedBitSet;
}

@end

jint OrgApacheLuceneUtilSparseFixedBitSet_blockCountWithInt_(jint length) {
  OrgApacheLuceneUtilSparseFixedBitSet_initialize();
  jint blockCount = JreURShift32(length, 12);
  if ((JreLShift32(blockCount, 12)) < length) {
    ++blockCount;
  }
  JreAssert(((JreLShift32(blockCount, 12)) >= length), (@"org/apache/lucene/util/SparseFixedBitSet.java:47 condition failed: assert (blockCount << 12) >= length;"));
  return blockCount;
}

void OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint length) {
  OrgApacheLuceneUtilBitSet_init(self);
  if (length < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"length needs to be >= 1");
  }
  self->length_ = length;
  jint blockCount = OrgApacheLuceneUtilSparseFixedBitSet_blockCountWithInt_(length);
  JreStrongAssignAndConsume(&self->indices_, [IOSLongArray newArrayWithLength:blockCount]);
  JreStrongAssignAndConsume(&self->bits_, [IOSObjectArray newArrayWithLength:blockCount type:IOSClass_longArray(1)]);
  self->ramBytesUsed_ = OrgApacheLuceneUtilSparseFixedBitSet_BASE_RAM_BYTES_USED + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(self->indices_) + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->bits_);
}

OrgApacheLuceneUtilSparseFixedBitSet *new_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilSparseFixedBitSet, initWithInt_, length)
}

OrgApacheLuceneUtilSparseFixedBitSet *create_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilSparseFixedBitSet, initWithInt_, length)
}

jboolean OrgApacheLuceneUtilSparseFixedBitSet_consistentWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint index) {
  JreAssert((index >= 0 && index < self->length_), (JreStrcat("$I$I", @"index=", index, @",length=", self->length_)));
  return true;
}

jint OrgApacheLuceneUtilSparseFixedBitSet_oversizeWithInt_(jint s) {
  OrgApacheLuceneUtilSparseFixedBitSet_initialize();
  jint newSize = s + (JreURShift32(s, 1));
  if (newSize > 50) {
    newSize = 64;
  }
  return newSize;
}

void OrgApacheLuceneUtilSparseFixedBitSet_insertBlockWithInt_withInt_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jint i) {
  *IOSLongArray_GetRef(nil_chk(self->indices_), i4096) = JreLShift64(1LL, i64);
  JreAssert((IOSObjectArray_Get(nil_chk(self->bits_), i4096) == nil), (@"org/apache/lucene/util/SparseFixedBitSet.java:162 condition failed: assert bits[i4096] == null;"));
  IOSObjectArray_SetAndConsume(self->bits_, i4096, [IOSLongArray newArrayWithLongs:(jlong[]){ JreLShift64(1LL, i) } count:1]);
  ++self->nonZeroLongCount_;
  self->ramBytesUsed_ += OrgApacheLuceneUtilSparseFixedBitSet_SINGLE_ELEMENT_ARRAY_BYTES_USED;
}

void OrgApacheLuceneUtilSparseFixedBitSet_insertLongWithInt_withInt_withInt_withLong_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jint i, jlong index) {
  *IOSLongArray_GetRef(nil_chk(self->indices_), i4096) |= JreLShift64(1LL, i64);
  jint o = JavaLangLong_bitCountWithLong_(index & ((JreLShift64(1LL, i64)) - 1));
  IOSLongArray *bitArray = IOSObjectArray_Get(nil_chk(self->bits_), i4096);
  if (IOSLongArray_Get(bitArray, ((IOSLongArray *) nil_chk(bitArray))->size_ - 1) == 0) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bitArray, o, bitArray, o + 1, bitArray->size_ - o - 1);
    *IOSLongArray_GetRef(bitArray, o) = JreLShift64(1LL, i);
  }
  else {
    jint newSize = OrgApacheLuceneUtilSparseFixedBitSet_oversizeWithInt_(bitArray->size_ + 1);
    IOSLongArray *newBitArray = [IOSLongArray arrayWithLength:newSize];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bitArray, 0, newBitArray, 0, o);
    *IOSLongArray_GetRef(newBitArray, o) = JreLShift64(1LL, i);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bitArray, o, newBitArray, o + 1, bitArray->size_ - o);
    IOSObjectArray_Set(self->bits_, i4096, newBitArray);
    self->ramBytesUsed_ += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(newBitArray) - OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(bitArray);
  }
  ++self->nonZeroLongCount_;
}

void OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jlong mask) {
  jlong index = IOSLongArray_Get(nil_chk(self->indices_), i4096);
  if ((index & (JreLShift64(1LL, i64))) != 0) {
    jint o = JavaLangLong_bitCountWithLong_(index & ((JreLShift64(1LL, i64)) - 1));
    jlong bits = IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->bits_), i4096)), o) & mask;
    if (bits == 0) {
      OrgApacheLuceneUtilSparseFixedBitSet_removeLongWithInt_withInt_withLong_withInt_(self, i4096, i64, index, o);
    }
    else {
      *IOSLongArray_GetRef(nil_chk(IOSObjectArray_Get(self->bits_, i4096)), o) = bits;
    }
  }
}

void OrgApacheLuceneUtilSparseFixedBitSet_removeLongWithInt_withInt_withLong_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint i64, jlong index, jint o) {
  index &= ~(JreLShift64(1LL, i64));
  *IOSLongArray_GetRef(nil_chk(self->indices_), i4096) = index;
  if (index == 0) {
    IOSObjectArray_Set(nil_chk(self->bits_), i4096, nil);
  }
  else {
    jint length = JavaLangLong_bitCountWithLong_(index);
    IOSLongArray *bitArray = IOSObjectArray_Get(nil_chk(self->bits_), i4096);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bitArray, o + 1, bitArray, o, length - o);
    *IOSLongArray_GetRef(nil_chk(bitArray), length) = 0LL;
  }
  self->nonZeroLongCount_ -= 1;
}

jlong OrgApacheLuceneUtilSparseFixedBitSet_maskWithInt_withInt_(jint from, jint to) {
  OrgApacheLuceneUtilSparseFixedBitSet_initialize();
  return JreLShift64(((JreLShift64(JreLShift64(1LL, (to - from)), 1)) - 1), from);
}

void OrgApacheLuceneUtilSparseFixedBitSet_clearWithinBlockWithInt_withInt_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jint from, jint to) {
  jint firstLong = JreURShift32(from, 6);
  jint lastLong = JreURShift32(to, 6);
  if (firstLong == lastLong) {
    OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(self, i4096, firstLong, ~OrgApacheLuceneUtilSparseFixedBitSet_maskWithInt_withInt_(from, to));
  }
  else {
    JreAssert((firstLong < lastLong), (@"org/apache/lucene/util/SparseFixedBitSet.java:265 condition failed: assert firstLong < lastLong;"));
    OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(self, i4096, lastLong, ~OrgApacheLuceneUtilSparseFixedBitSet_maskWithInt_withInt_(0, to));
    for (jint i = lastLong - 1; i >= firstLong + 1; --i) {
      OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(self, i4096, i, 0LL);
    }
    OrgApacheLuceneUtilSparseFixedBitSet_and__WithInt_withInt_withLong_(self, i4096, firstLong, ~OrgApacheLuceneUtilSparseFixedBitSet_maskWithInt_withInt_(from, 63));
  }
}

jint OrgApacheLuceneUtilSparseFixedBitSet_firstDocWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096) {
  jlong index = 0;
  while (i4096 < ((IOSLongArray *) nil_chk(self->indices_))->size_) {
    index = IOSLongArray_Get(self->indices_, i4096);
    if (index != 0) {
      jint i64 = JavaLangLong_numberOfTrailingZerosWithLong_(index);
      return (JreLShift32(i4096, 12)) | (JreLShift32(i64, 6)) | JavaLangLong_numberOfTrailingZerosWithLong_(IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->bits_), i4096)), 0));
    }
    i4096 += 1;
  }
  return OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
}

jint OrgApacheLuceneUtilSparseFixedBitSet_lastDocWithInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096) {
  jlong index;
  while (i4096 >= 0) {
    index = IOSLongArray_Get(nil_chk(self->indices_), i4096);
    if (index != 0) {
      jint i64 = 63 - JavaLangLong_numberOfLeadingZerosWithLong_(index);
      jlong bits = IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->bits_), i4096)), JavaLangLong_bitCountWithLong_(index) - 1);
      return (JreLShift32(i4096, 12)) | (JreLShift32(i64, 6)) | (63 - JavaLangLong_numberOfLeadingZerosWithLong_(bits));
    }
    i4096 -= 1;
  }
  return -1;
}

jlong OrgApacheLuceneUtilSparseFixedBitSet_longBitsWithLong_withLongArray_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jlong index, IOSLongArray *bits, jint i64) {
  if ((index & (JreLShift64(1LL, i64))) == 0) {
    return 0LL;
  }
  else {
    return IOSLongArray_Get(nil_chk(bits), JavaLangLong_bitCountWithLong_(index & ((JreLShift64(1LL, i64)) - 1)));
  }
}

void OrgApacheLuceneUtilSparseFixedBitSet_or__WithInt_withLong_withLongArray_withInt_(OrgApacheLuceneUtilSparseFixedBitSet *self, jint i4096, jlong index, IOSLongArray *bits, jint nonZeroLongCount) {
  JreAssert((JavaLangLong_bitCountWithLong_(index) == nonZeroLongCount), (@"org/apache/lucene/util/SparseFixedBitSet.java:369 condition failed: assert Long.bitCount(index) == nonZeroLongCount;"));
  jlong currentIndex = IOSLongArray_Get(nil_chk(self->indices_), i4096);
  if (currentIndex == 0) {
    *IOSLongArray_GetRef(self->indices_, i4096) = index;
    IOSObjectArray_Set(nil_chk(self->bits_), i4096, JavaUtilArrays_copyOfWithLongArray_withInt_(bits, nonZeroLongCount));
    self->nonZeroLongCount_ += nonZeroLongCount;
    return;
  }
  IOSLongArray *currentBits = IOSObjectArray_Get(nil_chk(self->bits_), i4096);
  IOSLongArray *newBits;
  jlong newIndex = currentIndex | index;
  jint requiredCapacity = JavaLangLong_bitCountWithLong_(newIndex);
  if (((IOSLongArray *) nil_chk(currentBits))->size_ >= requiredCapacity) {
    newBits = currentBits;
  }
  else {
    newBits = [IOSLongArray arrayWithLength:OrgApacheLuceneUtilSparseFixedBitSet_oversizeWithInt_(requiredCapacity)];
  }
  for (jint i = JavaLangLong_numberOfLeadingZerosWithLong_(newIndex), newO = JavaLangLong_bitCountWithLong_(newIndex) - 1; i < 64; i += 1 + JavaLangLong_numberOfLeadingZerosWithLong_(JreLShift64(newIndex, (i + 1))), newO -= 1) {
    jint bitIndex = 63 - i;
    JreAssert((newO == JavaLangLong_bitCountWithLong_(newIndex & ((JreLShift64(1LL, bitIndex)) - 1))), (@"org/apache/lucene/util/SparseFixedBitSet.java:395 condition failed: assert newO == Long.bitCount(newIndex & ((1L << bitIndex) - 1));"));
    *IOSLongArray_GetRef(newBits, newO) = OrgApacheLuceneUtilSparseFixedBitSet_longBitsWithLong_withLongArray_withInt_(self, currentIndex, currentBits, bitIndex) | OrgApacheLuceneUtilSparseFixedBitSet_longBitsWithLong_withLongArray_withInt_(self, index, bits, bitIndex);
  }
  *IOSLongArray_GetRef(self->indices_, i4096) = newIndex;
  IOSObjectArray_Set(self->bits_, i4096, newBits);
  self->nonZeroLongCount_ += nonZeroLongCount - JavaLangLong_bitCountWithLong_(currentIndex & index);
}

void OrgApacheLuceneUtilSparseFixedBitSet_or__WithOrgApacheLuceneUtilSparseFixedBitSet_(OrgApacheLuceneUtilSparseFixedBitSet *self, OrgApacheLuceneUtilSparseFixedBitSet *other) {
  for (jint i = 0; i < ((IOSLongArray *) nil_chk(((OrgApacheLuceneUtilSparseFixedBitSet *) nil_chk(other))->indices_))->size_; ++i) {
    jlong index = IOSLongArray_Get(other->indices_, i);
    if (index != 0) {
      OrgApacheLuceneUtilSparseFixedBitSet_or__WithInt_withLong_withLongArray_withInt_(self, i, index, IOSObjectArray_Get(nil_chk(other->bits_), i), JavaLangLong_bitCountWithLong_(index));
    }
  }
}

void OrgApacheLuceneUtilSparseFixedBitSet_orDenseWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilSparseFixedBitSet *self, OrgApacheLuceneSearchDocIdSetIterator *it) {
  [self assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:it];
  jint firstDoc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(it)) nextDoc];
  if (firstDoc == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    return;
  }
  jint i4096 = JreURShift32(firstDoc, 12);
  jint i64 = JreURShift32(firstDoc, 6);
  jlong index = JreLShift64(1LL, i64);
  jlong currentLong = JreLShift64(1LL, firstDoc);
  IOSLongArray *longs = [IOSLongArray arrayWithLength:64];
  jint numLongs = 0;
  for (jint doc = [it nextDoc]; doc != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS; doc = [it nextDoc]) {
    jint doc64 = JreURShift32(doc, 6);
    if (doc64 == i64) {
      currentLong |= JreLShift64(1LL, doc);
    }
    else {
      *IOSLongArray_GetRef(longs, numLongs++) = currentLong;
      jint doc4096 = JreURShift32(doc, 12);
      if (doc4096 == i4096) {
        index |= JreLShift64(1LL, doc64);
      }
      else {
        OrgApacheLuceneUtilSparseFixedBitSet_or__WithInt_withLong_withLongArray_withInt_(self, i4096, index, longs, numLongs);
        i4096 = doc4096;
        index = JreLShift64(1LL, doc64);
        numLongs = 0;
      }
      i64 = doc64;
      currentLong = JreLShift64(1LL, doc);
    }
  }
  *IOSLongArray_GetRef(longs, numLongs++) = currentLong;
  OrgApacheLuceneUtilSparseFixedBitSet_or__WithInt_withLong_withLongArray_withInt_(self, i4096, index, longs, numLongs);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilSparseFixedBitSet)