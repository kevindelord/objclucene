//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/bloom/FuzzySet.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/codecs/bloom/FuzzySet.h"
#include "org/apache/lucene/codecs/bloom/HashFunction.h"
#include "org/apache/lucene/codecs/bloom/MurmurHash2.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneCodecsBloomFuzzySet () {
 @public
  OrgApacheLuceneCodecsBloomHashFunction *hashFunction_;
  OrgApacheLuceneUtilFixedBitSet *filter_;
  jint bloomSize_;
}

- (instancetype)initWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)filter
                                               withInt:(jint)bloomSize
            withOrgApacheLuceneCodecsBloomHashFunction:(OrgApacheLuceneCodecsBloomHashFunction *)hashFunction;

- (OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *)mayContainValueWithInt:(jint)positiveHash;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBloomFuzzySet, hashFunction_, OrgApacheLuceneCodecsBloomHashFunction *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBloomFuzzySet, filter_, OrgApacheLuceneUtilFixedBitSet *)

__attribute__((unused)) static void OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(OrgApacheLuceneCodecsBloomFuzzySet *self, OrgApacheLuceneUtilFixedBitSet *filter, jint bloomSize, OrgApacheLuceneCodecsBloomHashFunction *hashFunction);

__attribute__((unused)) static OrgApacheLuceneCodecsBloomFuzzySet *new_OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(OrgApacheLuceneUtilFixedBitSet *filter, jint bloomSize, OrgApacheLuceneCodecsBloomHashFunction *hashFunction) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *OrgApacheLuceneCodecsBloomFuzzySet_mayContainValueWithInt_(OrgApacheLuceneCodecsBloomFuzzySet *self, jint positiveHash);

__attribute__((unused)) static void OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *new_OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsBloomFuzzySet)

IOSIntArray *OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_;

@implementation OrgApacheLuceneCodecsBloomFuzzySet

+ (OrgApacheLuceneCodecsBloomHashFunction *)hashFunctionForVersionWithInt:(jint)version_ {
  return OrgApacheLuceneCodecsBloomFuzzySet_hashFunctionForVersionWithInt_(version_);
}

+ (jint)getNearestSetSizeWithInt:(jint)maxNumberOfBits {
  return OrgApacheLuceneCodecsBloomFuzzySet_getNearestSetSizeWithInt_(maxNumberOfBits);
}

+ (jint)getNearestSetSizeWithInt:(jint)maxNumberOfValuesExpected
                       withFloat:(jfloat)desiredSaturation {
  return OrgApacheLuceneCodecsBloomFuzzySet_getNearestSetSizeWithInt_withFloat_(maxNumberOfValuesExpected, desiredSaturation);
}

+ (OrgApacheLuceneCodecsBloomFuzzySet *)createSetBasedOnMaxMemoryWithInt:(jint)maxNumBytes {
  return OrgApacheLuceneCodecsBloomFuzzySet_createSetBasedOnMaxMemoryWithInt_(maxNumBytes);
}

+ (OrgApacheLuceneCodecsBloomFuzzySet *)createSetBasedOnQualityWithInt:(jint)maxNumUniqueValues
                                                             withFloat:(jfloat)desiredMaxSaturation {
  return OrgApacheLuceneCodecsBloomFuzzySet_createSetBasedOnQualityWithInt_withFloat_(maxNumUniqueValues, desiredMaxSaturation);
}

- (instancetype)initWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)filter
                                               withInt:(jint)bloomSize
            withOrgApacheLuceneCodecsBloomHashFunction:(OrgApacheLuceneCodecsBloomHashFunction *)hashFunction {
  OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(self, filter, bloomSize, hashFunction);
  return self;
}

- (OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *)containsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value {
  jint hash_ = [((OrgApacheLuceneCodecsBloomHashFunction *) nil_chk(hashFunction_)) hash__WithOrgApacheLuceneUtilBytesRef:value];
  if (hash_ < 0) {
    hash_ = hash_ * -1;
  }
  return OrgApacheLuceneCodecsBloomFuzzySet_mayContainValueWithInt_(self, hash_);
}

- (void)serializeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeIntWithInt:OrgApacheLuceneCodecsBloomFuzzySet_VERSION_CURRENT];
  [outArg writeIntWithInt:bloomSize_];
  IOSLongArray *bits = [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(filter_)) getBits];
  [outArg writeIntWithInt:((IOSLongArray *) nil_chk(bits))->size_];
  for (jint i = 0; i < bits->size_; i++) {
    [outArg writeLongWithLong:IOSLongArray_Get(bits, i)];
  }
}

+ (OrgApacheLuceneCodecsBloomFuzzySet *)deserializeWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  return OrgApacheLuceneCodecsBloomFuzzySet_deserializeWithOrgApacheLuceneStoreDataInput_(inArg);
}

- (OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *)mayContainValueWithInt:(jint)positiveHash {
  return OrgApacheLuceneCodecsBloomFuzzySet_mayContainValueWithInt_(self, positiveHash);
}

- (void)addValueWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value {
  jint hash_ = [((OrgApacheLuceneCodecsBloomHashFunction *) nil_chk(hashFunction_)) hash__WithOrgApacheLuceneUtilBytesRef:value];
  if (hash_ < 0) {
    hash_ = hash_ * -1;
  }
  jint bloomPos = hash_ & bloomSize_;
  [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(filter_)) setWithInt:bloomPos];
}

- (OrgApacheLuceneCodecsBloomFuzzySet *)downsizeWithFloat:(jfloat)targetMaxSaturation {
  jint numBitsSet = [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(filter_)) cardinality];
  OrgApacheLuceneUtilFixedBitSet *rightSizedBitSet = filter_;
  jint rightSizedBitSetSize = bloomSize_;
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_))->size_; i++) {
    jint candidateBitsetSize = IOSIntArray_Get(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, i);
    jfloat candidateSaturation = (jfloat) numBitsSet / (jfloat) candidateBitsetSize;
    if (candidateSaturation <= targetMaxSaturation) {
      rightSizedBitSetSize = candidateBitsetSize;
      break;
    }
  }
  if (rightSizedBitSetSize < bloomSize_) {
    rightSizedBitSet = [new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(rightSizedBitSetSize + 1) autorelease];
    jint bitIndex = 0;
    do {
      bitIndex = [filter_ nextSetBitWithInt:bitIndex];
      if (bitIndex != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
        jint downSizedBitIndex = bitIndex & rightSizedBitSetSize;
        [rightSizedBitSet setWithInt:downSizedBitIndex];
        bitIndex++;
      }
    }
    while ((bitIndex >= 0) && (bitIndex <= bloomSize_));
  }
  else {
    return nil;
  }
  return [new_OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(rightSizedBitSet, rightSizedBitSetSize, hashFunction_) autorelease];
}

- (jint)getEstimatedUniqueValues {
  return OrgApacheLuceneCodecsBloomFuzzySet_getEstimatedNumberUniqueValuesAllowingForCollisionsWithInt_withInt_(bloomSize_, [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(filter_)) cardinality]);
}

+ (jint)getEstimatedNumberUniqueValuesAllowingForCollisionsWithInt:(jint)setSize
                                                           withInt:(jint)numRecordedBits {
  return OrgApacheLuceneCodecsBloomFuzzySet_getEstimatedNumberUniqueValuesAllowingForCollisionsWithInt_withInt_(setSize, numRecordedBits);
}

- (jfloat)getSaturation {
  jint numBitsSet = [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(filter_)) cardinality];
  return (jfloat) numBitsSet / (jfloat) bloomSize_;
}

- (jlong)ramBytesUsed {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(filter_)) getBits]);
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (NSString *)description {
  return JreStrcat("$$@C", [[self getClass] getSimpleName], @"(hash=", hashFunction_, ')');
}

- (void)dealloc {
  RELEASE_(hashFunction_);
  RELEASE_(filter_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsBloomFuzzySet class]) {
    {
      JreStrongAssignAndConsume(&OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, [IOSIntArray newArrayWithLength:30]);
      jint mask = 1;
      jint size = mask;
      for (jint i = 0; i < OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_->size_; i++) {
        size = (JreLShift32(size, 1)) | mask;
        *IOSIntArray_GetRef(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, i) = size;
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsBloomFuzzySet)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "hashFunctionForVersionWithInt:", "hashFunctionForVersion", "Lorg.apache.lucene.codecs.bloom.HashFunction;", 0x9, NULL, NULL },
    { "getNearestSetSizeWithInt:", "getNearestSetSize", "I", 0x9, NULL, NULL },
    { "getNearestSetSizeWithInt:withFloat:", "getNearestSetSize", "I", 0x9, NULL, NULL },
    { "createSetBasedOnMaxMemoryWithInt:", "createSetBasedOnMaxMemory", "Lorg.apache.lucene.codecs.bloom.FuzzySet;", 0x9, NULL, NULL },
    { "createSetBasedOnQualityWithInt:withFloat:", "createSetBasedOnQuality", "Lorg.apache.lucene.codecs.bloom.FuzzySet;", 0x9, NULL, NULL },
    { "initWithOrgApacheLuceneUtilFixedBitSet:withInt:withOrgApacheLuceneCodecsBloomHashFunction:", "FuzzySet", NULL, 0x2, NULL, NULL },
    { "containsWithOrgApacheLuceneUtilBytesRef:", "contains", "Lorg.apache.lucene.codecs.bloom.FuzzySet$ContainsResult;", 0x1, NULL, NULL },
    { "serializeWithOrgApacheLuceneStoreDataOutput:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "deserializeWithOrgApacheLuceneStoreDataInput:", "deserialize", "Lorg.apache.lucene.codecs.bloom.FuzzySet;", 0x9, "Ljava.io.IOException;", NULL },
    { "mayContainValueWithInt:", "mayContainValue", "Lorg.apache.lucene.codecs.bloom.FuzzySet$ContainsResult;", 0x2, NULL, NULL },
    { "addValueWithOrgApacheLuceneUtilBytesRef:", "addValue", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "downsizeWithFloat:", "downsize", "Lorg.apache.lucene.codecs.bloom.FuzzySet;", 0x1, NULL, NULL },
    { "getEstimatedUniqueValues", NULL, "I", 0x1, NULL, NULL },
    { "getEstimatedNumberUniqueValuesAllowingForCollisionsWithInt:withInt:", "getEstimatedNumberUniqueValuesAllowingForCollisions", "I", 0x9, NULL, NULL },
    { "getSaturation", NULL, "F", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "VERSION_SPI", "VERSION_SPI", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsBloomFuzzySet_VERSION_SPI },
    { "VERSION_START", "VERSION_START", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsBloomFuzzySet_VERSION_START },
    { "VERSION_CURRENT", "VERSION_CURRENT", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsBloomFuzzySet_VERSION_CURRENT },
    { "hashFunction_", NULL, 0x2, "Lorg.apache.lucene.codecs.bloom.HashFunction;", NULL, NULL, .constantValue.asLong = 0 },
    { "filter_", NULL, 0x2, "Lorg.apache.lucene.util.FixedBitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "bloomSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "usableBitSetSizes_", NULL, 0x18, "[I", &OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.bloom.FuzzySet$ContainsResult;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBloomFuzzySet = { 2, "FuzzySet", "org.apache.lucene.codecs.bloom", NULL, 0x1, 18, methods, 7, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsBloomFuzzySet;
}

@end

OrgApacheLuceneCodecsBloomHashFunction *OrgApacheLuceneCodecsBloomFuzzySet_hashFunctionForVersionWithInt_(jint version_) {
  OrgApacheLuceneCodecsBloomFuzzySet_initialize();
  if (version_ < OrgApacheLuceneCodecsBloomFuzzySet_VERSION_START) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I", @"Version ", version_, @" is too old, expected at least ", OrgApacheLuceneCodecsBloomFuzzySet_VERSION_START)) autorelease];
  }
  else if (version_ > OrgApacheLuceneCodecsBloomFuzzySet_VERSION_CURRENT) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I", @"Version ", version_, @" is too new, expected at most ", OrgApacheLuceneCodecsBloomFuzzySet_VERSION_CURRENT)) autorelease];
  }
  return JreLoadStatic(OrgApacheLuceneCodecsBloomMurmurHash2, INSTANCE_);
}

jint OrgApacheLuceneCodecsBloomFuzzySet_getNearestSetSizeWithInt_(jint maxNumberOfBits) {
  OrgApacheLuceneCodecsBloomFuzzySet_initialize();
  jint result = IOSIntArray_Get(nil_chk(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_), 0);
  for (jint i = 0; i < OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_->size_; i++) {
    if (IOSIntArray_Get(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, i) <= maxNumberOfBits) {
      result = IOSIntArray_Get(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, i);
    }
  }
  return result;
}

jint OrgApacheLuceneCodecsBloomFuzzySet_getNearestSetSizeWithInt_withFloat_(jint maxNumberOfValuesExpected, jfloat desiredSaturation) {
  OrgApacheLuceneCodecsBloomFuzzySet_initialize();
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_))->size_; i++) {
    jint numSetBitsAtDesiredSaturation = JreFpToInt((IOSIntArray_Get(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, i) * desiredSaturation));
    jint estimatedNumUniqueValues = OrgApacheLuceneCodecsBloomFuzzySet_getEstimatedNumberUniqueValuesAllowingForCollisionsWithInt_withInt_(IOSIntArray_Get(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, i), numSetBitsAtDesiredSaturation);
    if (estimatedNumUniqueValues > maxNumberOfValuesExpected) {
      return IOSIntArray_Get(OrgApacheLuceneCodecsBloomFuzzySet_usableBitSetSizes_, i);
    }
  }
  return -1;
}

OrgApacheLuceneCodecsBloomFuzzySet *OrgApacheLuceneCodecsBloomFuzzySet_createSetBasedOnMaxMemoryWithInt_(jint maxNumBytes) {
  OrgApacheLuceneCodecsBloomFuzzySet_initialize();
  jint setSize = OrgApacheLuceneCodecsBloomFuzzySet_getNearestSetSizeWithInt_(maxNumBytes);
  return [new_OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_([new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(setSize + 1) autorelease], setSize, OrgApacheLuceneCodecsBloomFuzzySet_hashFunctionForVersionWithInt_(OrgApacheLuceneCodecsBloomFuzzySet_VERSION_CURRENT)) autorelease];
}

OrgApacheLuceneCodecsBloomFuzzySet *OrgApacheLuceneCodecsBloomFuzzySet_createSetBasedOnQualityWithInt_withFloat_(jint maxNumUniqueValues, jfloat desiredMaxSaturation) {
  OrgApacheLuceneCodecsBloomFuzzySet_initialize();
  jint setSize = OrgApacheLuceneCodecsBloomFuzzySet_getNearestSetSizeWithInt_withFloat_(maxNumUniqueValues, desiredMaxSaturation);
  return [new_OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_([new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(setSize + 1) autorelease], setSize, OrgApacheLuceneCodecsBloomFuzzySet_hashFunctionForVersionWithInt_(OrgApacheLuceneCodecsBloomFuzzySet_VERSION_CURRENT)) autorelease];
}

void OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(OrgApacheLuceneCodecsBloomFuzzySet *self, OrgApacheLuceneUtilFixedBitSet *filter, jint bloomSize, OrgApacheLuceneCodecsBloomHashFunction *hashFunction) {
  NSObject_init(self);
  JreStrongAssign(&self->filter_, filter);
  self->bloomSize_ = bloomSize;
  JreStrongAssign(&self->hashFunction_, hashFunction);
}

OrgApacheLuceneCodecsBloomFuzzySet *new_OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(OrgApacheLuceneUtilFixedBitSet *filter, jint bloomSize, OrgApacheLuceneCodecsBloomHashFunction *hashFunction) {
  OrgApacheLuceneCodecsBloomFuzzySet *self = [OrgApacheLuceneCodecsBloomFuzzySet alloc];
  OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(self, filter, bloomSize, hashFunction);
  return self;
}

OrgApacheLuceneCodecsBloomFuzzySet *OrgApacheLuceneCodecsBloomFuzzySet_deserializeWithOrgApacheLuceneStoreDataInput_(OrgApacheLuceneStoreDataInput *inArg) {
  OrgApacheLuceneCodecsBloomFuzzySet_initialize();
  jint version_ = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readInt];
  if (version_ == OrgApacheLuceneCodecsBloomFuzzySet_VERSION_SPI) {
    [inArg readString];
  }
  OrgApacheLuceneCodecsBloomHashFunction *hashFunction = OrgApacheLuceneCodecsBloomFuzzySet_hashFunctionForVersionWithInt_(version_);
  jint bloomSize = [inArg readInt];
  jint numLongs = [inArg readInt];
  IOSLongArray *longs = [IOSLongArray arrayWithLength:numLongs];
  for (jint i = 0; i < numLongs; i++) {
    *IOSLongArray_GetRef(longs, i) = [inArg readLong];
  }
  OrgApacheLuceneUtilFixedBitSet *bits = [new_OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(longs, bloomSize + 1) autorelease];
  return [new_OrgApacheLuceneCodecsBloomFuzzySet_initWithOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneCodecsBloomHashFunction_(bits, bloomSize, hashFunction) autorelease];
}

OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *OrgApacheLuceneCodecsBloomFuzzySet_mayContainValueWithInt_(OrgApacheLuceneCodecsBloomFuzzySet *self, jint positiveHash) {
  JreAssert((positiveHash >= 0), (@"org/apache/lucene/codecs/bloom/FuzzySet.java:219 condition failed: assert positiveHash >= 0;"));
  jint pos = positiveHash & self->bloomSize_;
  if ([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(self->filter_)) getWithInt:pos]) {
    return JreLoadStatic(OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum, MAYBE);
  }
  return JreLoadStatic(OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum, NO);
}

jint OrgApacheLuceneCodecsBloomFuzzySet_getEstimatedNumberUniqueValuesAllowingForCollisionsWithInt_withInt_(jint setSize, jint numRecordedBits) {
  OrgApacheLuceneCodecsBloomFuzzySet_initialize();
  jdouble setSizeAsDouble = setSize;
  jdouble numRecordedBitsAsDouble = numRecordedBits;
  jdouble saturation = numRecordedBitsAsDouble / setSizeAsDouble;
  jdouble logInverseSaturation = JavaLangMath_logWithDouble_(1 - saturation) * -1;
  return JreFpToInt((setSizeAsDouble * logInverseSaturation));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBloomFuzzySet)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum)

OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_values_[2];

@implementation OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_values() {
  OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_values_ count:2 type:OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_values();
}

+ (OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initialize();
  for (int i = 0; i < 2; i++) {
    OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *e = OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum class]) {
    OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_MAYBE = new_OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(@"MAYBE", 0);
    OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_NO = new_OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(@"NO", 1);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "MAYBE", "MAYBE", 0x4019, "Lorg.apache.lucene.codecs.bloom.FuzzySet$ContainsResult;", &OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_MAYBE, NULL, .constantValue.asLong = 0 },
    { "NO", "NO", 0x4019, "Lorg.apache.lucene.codecs.bloom.FuzzySet$ContainsResult;", &OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_NO, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.codecs.bloom.FuzzySet$ContainsResult;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum = { 2, "ContainsResult", "org.apache.lucene.codecs.bloom", "FuzzySet", 0x4019, 0, NULL, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/codecs/bloom/FuzzySet$ContainsResult;>;" };
  return &_OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum;
}

@end

void OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *new_OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum *self = [OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum alloc];
  OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBloomFuzzySet_ContainsResultEnum)