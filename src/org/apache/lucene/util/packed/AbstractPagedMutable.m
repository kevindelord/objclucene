//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/AbstractPagedMutable.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/util/LongValues.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/AbstractPagedMutable.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedAbstractPagedMutable_lastPageSizeWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong size);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(OrgApacheLuceneUtilPackedAbstractPagedMutable *self);

__attribute__((unused)) static jlong OrgApacheLuceneUtilPackedAbstractPagedMutable_size(OrgApacheLuceneUtilPackedAbstractPagedMutable *self);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedAbstractPagedMutable_pageIndexWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong index);

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedAbstractPagedMutable_indexInPageWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong index);

__attribute__((unused)) static id OrgApacheLuceneUtilPackedAbstractPagedMutable_resizeWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong newSize);

__attribute__((unused)) static id OrgApacheLuceneUtilPackedAbstractPagedMutable_growWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong minSize);

@implementation OrgApacheLuceneUtilPackedAbstractPagedMutable

+ (jint)MIN_BLOCK_SIZE {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_MIN_BLOCK_SIZE;
}

+ (jint)MAX_BLOCK_SIZE {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_MAX_BLOCK_SIZE;
}

- (instancetype)initWithInt:(jint)bitsPerValue
                   withLong:(jlong)size
                    withInt:(jint)pageSize {
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(self, bitsPerValue, size, pageSize);
  return self;
}

- (void)fillPages {
  jint numPages = OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(size_, OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(self));
  for (jint i = 0; i < numPages; ++i) {
    jint valueCount = i == numPages - 1 ? OrgApacheLuceneUtilPackedAbstractPagedMutable_lastPageSizeWithLong_(self, size_) : OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(self);
    IOSObjectArray_Set(nil_chk(subMutables_), i, [self newMutableWithInt:valueCount withInt:bitsPerValue_]);
  }
}

- (OrgApacheLuceneUtilPackedPackedInts_Mutable *)newMutableWithInt:(jint)valueCount
                                                           withInt:(jint)bitsPerValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)lastPageSizeWithLong:(jlong)size {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_lastPageSizeWithLong_(self, size);
}

- (jint)pageSize {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(self);
}

- (jlong)size {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_size(self);
}

- (jint)pageIndexWithLong:(jlong)index {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_pageIndexWithLong_(self, index);
}

- (jint)indexInPageWithLong:(jlong)index {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_indexInPageWithLong_(self, index);
}

- (jlong)getWithLong:(jlong)index {
  JreAssert((index >= 0 && index < size_), (@"org/apache/lucene/util/packed/AbstractPagedMutable.java:90 condition failed: assert index >= 0 && index < size;"));
  jint pageIndex = OrgApacheLuceneUtilPackedAbstractPagedMutable_pageIndexWithLong_(self, index);
  jint indexInPage = OrgApacheLuceneUtilPackedAbstractPagedMutable_indexInPageWithLong_(self, index);
  return [((OrgApacheLuceneUtilPackedPackedInts_Mutable *) nil_chk(IOSObjectArray_Get(nil_chk(subMutables_), pageIndex))) getWithInt:indexInPage];
}

- (void)setWithLong:(jlong)index
           withLong:(jlong)value {
  JreAssert((index >= 0 && index < size_), (@"org/apache/lucene/util/packed/AbstractPagedMutable.java:98 condition failed: assert index >= 0 && index < size;"));
  jint pageIndex = OrgApacheLuceneUtilPackedAbstractPagedMutable_pageIndexWithLong_(self, index);
  jint indexInPage = OrgApacheLuceneUtilPackedAbstractPagedMutable_indexInPageWithLong_(self, index);
  [((OrgApacheLuceneUtilPackedPackedInts_Mutable *) nil_chk(IOSObjectArray_Get(nil_chk(subMutables_), pageIndex))) setWithInt:indexInPage withLong:value];
}

- (jlong)baseRamBytesUsed {
  return JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF) + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG + 3 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
}

- (jlong)ramBytesUsed {
  jlong bytesUsed = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_([self baseRamBytesUsed]);
  bytesUsed += OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(subMutables_));
  {
    IOSObjectArray *a__ = subMutables_;
    OrgApacheLuceneUtilPackedPackedInts_Mutable * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilPackedPackedInts_Mutable * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilPackedPackedInts_Mutable *gw = *b__++;
      bytesUsed += [((OrgApacheLuceneUtilPackedPackedInts_Mutable *) nil_chk(gw)) ramBytesUsed];
    }
  }
  return bytesUsed;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (id)newUnfilledCopyWithLong:(jlong)newSize {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)resizeWithLong:(jlong)newSize {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_resizeWithLong_(self, newSize);
}

- (id)growWithLong:(jlong)minSize {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_growWithLong_(self, minSize);
}

- (id)grow {
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_growWithLong_(self, OrgApacheLuceneUtilPackedAbstractPagedMutable_size(self) + 1);
}

- (NSString *)description {
  return JreStrcat("$$J$IC", [[self getClass] getSimpleName], @"(size=", OrgApacheLuceneUtilPackedAbstractPagedMutable_size(self), @",pageSize=", OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(self), ')');
}

- (void)dealloc {
  RELEASE_(subMutables_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withInt:", "AbstractPagedMutable", NULL, 0x0, NULL, NULL },
    { "fillPages", NULL, "V", 0x14, NULL, NULL },
    { "newMutableWithInt:withInt:", "newMutable", "Lorg.apache.lucene.util.packed.PackedInts$Mutable;", 0x404, NULL, NULL },
    { "lastPageSizeWithLong:", "lastPageSize", "I", 0x10, NULL, NULL },
    { "pageSize", NULL, "I", 0x10, NULL, NULL },
    { "size", NULL, "J", 0x11, NULL, NULL },
    { "pageIndexWithLong:", "pageIndex", "I", 0x10, NULL, NULL },
    { "indexInPageWithLong:", "indexInPage", "I", 0x10, NULL, NULL },
    { "getWithLong:", "get", "J", 0x11, NULL, NULL },
    { "setWithLong:withLong:", "set", "V", 0x11, NULL, NULL },
    { "baseRamBytesUsed", NULL, "J", 0x4, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "newUnfilledCopyWithLong:", "newUnfilledCopy", "TT;", 0x404, NULL, "(J)TT;" },
    { "resizeWithLong:", "resize", "TT;", 0x11, NULL, "(J)TT;" },
    { "growWithLong:", "grow", "TT;", 0x11, NULL, "(J)TT;" },
    { "grow", NULL, "TT;", 0x11, NULL, "()TT;" },
    { "description", "toString", "Ljava.lang.String;", 0x11, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_BLOCK_SIZE", "MIN_BLOCK_SIZE", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedAbstractPagedMutable_MIN_BLOCK_SIZE },
    { "MAX_BLOCK_SIZE", "MAX_BLOCK_SIZE", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedAbstractPagedMutable_MAX_BLOCK_SIZE },
    { "size_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "pageShift_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "pageMask_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "subMutables_", NULL, 0x10, "[Lorg.apache.lucene.util.packed.PackedInts$Mutable;", NULL, NULL, .constantValue.asLong = 0 },
    { "bitsPerValue_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedAbstractPagedMutable = { 2, "AbstractPagedMutable", "org.apache.lucene.util.packed", NULL, 0x400, 18, methods, 7, fields, 0, NULL, 0, NULL, NULL, "<T:Lorg/apache/lucene/util/packed/AbstractPagedMutable<TT;>;>Lorg/apache/lucene/util/LongValues;Lorg/apache/lucene/util/Accountable;" };
  return &_OrgApacheLuceneUtilPackedAbstractPagedMutable;
}

@end

void OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jint bitsPerValue, jlong size, jint pageSize) {
  OrgApacheLuceneUtilLongValues_init(self);
  self->bitsPerValue_ = bitsPerValue;
  self->size_ = size;
  self->pageShift_ = OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(pageSize, OrgApacheLuceneUtilPackedAbstractPagedMutable_MIN_BLOCK_SIZE, OrgApacheLuceneUtilPackedAbstractPagedMutable_MAX_BLOCK_SIZE);
  self->pageMask_ = pageSize - 1;
  jint numPages = OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(size, pageSize);
  JreStrongAssignAndConsume(&self->subMutables_, [IOSObjectArray newArrayWithLength:numPages type:OrgApacheLuceneUtilPackedPackedInts_Mutable_class_()]);
}

jint OrgApacheLuceneUtilPackedAbstractPagedMutable_lastPageSizeWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong size) {
  jint sz = OrgApacheLuceneUtilPackedAbstractPagedMutable_indexInPageWithLong_(self, size);
  return sz == 0 ? OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(self) : sz;
}

jint OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(OrgApacheLuceneUtilPackedAbstractPagedMutable *self) {
  return self->pageMask_ + 1;
}

jlong OrgApacheLuceneUtilPackedAbstractPagedMutable_size(OrgApacheLuceneUtilPackedAbstractPagedMutable *self) {
  return self->size_;
}

jint OrgApacheLuceneUtilPackedAbstractPagedMutable_pageIndexWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong index) {
  return (jint) (JreURShift64(index, self->pageShift_));
}

jint OrgApacheLuceneUtilPackedAbstractPagedMutable_indexInPageWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong index) {
  return (jint) index & self->pageMask_;
}

id OrgApacheLuceneUtilPackedAbstractPagedMutable_resizeWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong newSize) {
  OrgApacheLuceneUtilPackedAbstractPagedMutable *copy_ = [self newUnfilledCopyWithLong:newSize];
  jint numCommonPages = JavaLangMath_minWithInt_withInt_(((IOSObjectArray *) nil_chk(((OrgApacheLuceneUtilPackedAbstractPagedMutable *) nil_chk(copy_))->subMutables_))->size_, self->subMutables_->size_);
  IOSLongArray *copyBuffer = [IOSLongArray arrayWithLength:1024];
  for (jint i = 0; i < copy_->subMutables_->size_; ++i) {
    jint valueCount = i == copy_->subMutables_->size_ - 1 ? OrgApacheLuceneUtilPackedAbstractPagedMutable_lastPageSizeWithLong_(self, newSize) : OrgApacheLuceneUtilPackedAbstractPagedMutable_pageSize(self);
    jint bpv = i < numCommonPages ? [((OrgApacheLuceneUtilPackedPackedInts_Mutable *) nil_chk(IOSObjectArray_Get(self->subMutables_, i))) getBitsPerValue] : self->bitsPerValue_;
    IOSObjectArray_Set(copy_->subMutables_, i, [self newMutableWithInt:valueCount withInt:bpv]);
    if (i < numCommonPages) {
      jint copyLength = JavaLangMath_minWithInt_withInt_(valueCount, [((OrgApacheLuceneUtilPackedPackedInts_Mutable *) nil_chk(IOSObjectArray_Get(self->subMutables_, i))) size]);
      OrgApacheLuceneUtilPackedPackedInts_copy__WithOrgApacheLuceneUtilPackedPackedInts_Reader_withInt_withOrgApacheLuceneUtilPackedPackedInts_Mutable_withInt_withInt_withLongArray_(IOSObjectArray_Get(self->subMutables_, i), 0, IOSObjectArray_Get(copy_->subMutables_, i), 0, copyLength, copyBuffer);
    }
  }
  return copy_;
}

id OrgApacheLuceneUtilPackedAbstractPagedMutable_growWithLong_(OrgApacheLuceneUtilPackedAbstractPagedMutable *self, jlong minSize) {
  JreAssert((minSize >= 0), (@"org/apache/lucene/util/packed/AbstractPagedMutable.java:149 condition failed: assert minSize >= 0;"));
  if (minSize <= OrgApacheLuceneUtilPackedAbstractPagedMutable_size(self)) {
    OrgApacheLuceneUtilPackedAbstractPagedMutable *result = self;
    return result;
  }
  jlong extra = JreURShift64(minSize, 3);
  if (extra < 3) {
    extra = 3;
  }
  jlong newSize = minSize + extra;
  return OrgApacheLuceneUtilPackedAbstractPagedMutable_resizeWithLong_(self, newSize);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedAbstractPagedMutable)
