//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BinaryDocValuesWriter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Iterable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Iterator.h"
#include "java/util/NoSuchElementException.h"
#include "org/apache/lucene/codecs/DocValuesConsumer.h"
#include "org/apache/lucene/index/BinaryDocValuesWriter.h"
#include "org/apache/lucene/index/DocValuesWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/PagedBytes.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PackedLongValues.h"

#define OrgApacheLuceneIndexBinaryDocValuesWriter_BLOCK_BITS 15

@interface OrgApacheLuceneIndexBinaryDocValuesWriter () {
 @public
  OrgApacheLuceneUtilPagedBytes *bytes_;
  OrgApacheLuceneStoreDataOutput *bytesOut_;
  OrgApacheLuceneUtilCounter *iwBytesUsed_;
  OrgApacheLuceneUtilPackedPackedLongValues_Builder *lengths_;
  OrgApacheLuceneUtilFixedBitSet *docsWithField_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
  jint addedValues_;
  jlong bytesUsed_;
}

- (jlong)docsWithFieldBytesUsed;

- (void)updateBytesUsed;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, bytes_, OrgApacheLuceneUtilPagedBytes *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, bytesOut_, OrgApacheLuceneStoreDataOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, iwBytesUsed_, OrgApacheLuceneUtilCounter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, lengths_, OrgApacheLuceneUtilPackedPackedLongValues_Builder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, docsWithField_, OrgApacheLuceneUtilFixedBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)

static jint OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, MAX_LENGTH_, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBinaryDocValuesWriter, BLOCK_BITS, jint)

__attribute__((unused)) static jlong OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self);

__attribute__((unused)) static void OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self);

@interface OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator : NSObject < JavaUtilIterator > {
 @public
  OrgApacheLuceneIndexBinaryDocValuesWriter *this$0_;
  OrgApacheLuceneUtilBytesRefBuilder *value_;
  OrgApacheLuceneUtilPackedPackedLongValues_Iterator *lengthsIterator_;
  OrgApacheLuceneStoreDataInput *bytesIterator_;
  jint size_;
  jint maxDoc_;
  jint upto_;
}

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)maxDoc
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)lengths;

- (jboolean)hasNext;

- (OrgApacheLuceneUtilBytesRef *)next;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, this$0_, OrgApacheLuceneIndexBinaryDocValuesWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, value_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, lengthsIterator_, OrgApacheLuceneUtilPackedPackedLongValues_Iterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator, bytesIterator_, OrgApacheLuceneStoreDataInput *)

__attribute__((unused)) static void OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths);

__attribute__((unused)) static OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *new_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator)

@interface OrgApacheLuceneIndexBinaryDocValuesWriter_$1 : NSObject < JavaLangIterable > {
 @public
  OrgApacheLuceneIndexBinaryDocValuesWriter *this$0_;
  jint val$maxDoc_;
  OrgApacheLuceneUtilPackedPackedLongValues *val$lengths_;
}

- (id<JavaUtilIterator>)iterator;

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)capture$0
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)capture$1;


@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValuesWriter_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_$1, this$0_, OrgApacheLuceneIndexBinaryDocValuesWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBinaryDocValuesWriter_$1, val$lengths_, OrgApacheLuceneUtilPackedPackedLongValues *)

__attribute__((unused)) static void OrgApacheLuceneIndexBinaryDocValuesWriter_$1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_$1 *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1);

__attribute__((unused)) static OrgApacheLuceneIndexBinaryDocValuesWriter_$1 *new_OrgApacheLuceneIndexBinaryDocValuesWriter_$1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBinaryDocValuesWriter_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexBinaryDocValuesWriter)

@implementation OrgApacheLuceneIndexBinaryDocValuesWriter

- (instancetype)initWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                       withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)iwBytesUsed {
  OrgApacheLuceneIndexBinaryDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(self, fieldInfo, iwBytesUsed);
  return self;
}

- (void)addValueWithInt:(jint)docID
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)value {
  if (docID < addedValues_) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"DocValuesField \"", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_, @"\" appears more than once in this document (only one value is allowed per field)")) autorelease];
  }
  if (value == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"field=\"", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_, @"\": null value not allowed")) autorelease];
  }
  if (((OrgApacheLuceneUtilBytesRef *) nil_chk(value))->length_ > OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH_) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$I", @"DocValuesField \"", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_, @"\" is too large, must be <= ", OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH_)) autorelease];
  }
  while (addedValues_ < docID) {
    addedValues_++;
    [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(lengths_)) addWithLong:0];
  }
  addedValues_++;
  [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(lengths_)) addWithLong:value->length_];
  @try {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(bytesOut_)) writeBytesWithByteArray:value->bytes_ withInt:value->offset_ withInt:value->length_];
  }
  @catch (JavaIoIOException *ioe) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe) autorelease];
  }
  JreStrongAssign(&docsWithField_, OrgApacheLuceneUtilFixedBitSet_ensureCapacityWithOrgApacheLuceneUtilFixedBitSet_withInt_(docsWithField_, docID));
  [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(docsWithField_)) setWithInt:docID];
  OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(self);
}

- (jlong)docsWithFieldBytesUsed {
  return OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(self);
}

- (void)updateBytesUsed {
  OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(self);
}

- (void)finishWithInt:(jint)maxDoc {
}

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
            withOrgApacheLuceneCodecsDocValuesConsumer:(OrgApacheLuceneCodecsDocValuesConsumer *)dvConsumer {
  jint maxDoc = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_)) maxDoc];
  [((OrgApacheLuceneUtilPagedBytes *) nil_chk(bytes_)) freezeWithBoolean:NO];
  OrgApacheLuceneUtilPackedPackedLongValues *lengths = [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(self->lengths_)) build];
  [((OrgApacheLuceneCodecsDocValuesConsumer *) nil_chk(dvConsumer)) addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:fieldInfo_ withJavaLangIterable:[new_OrgApacheLuceneIndexBinaryDocValuesWriter_$1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, maxDoc, lengths) autorelease]];
}

- (void)dealloc {
  RELEASE_(bytes_);
  RELEASE_(bytesOut_);
  RELEASE_(iwBytesUsed_);
  RELEASE_(lengths_);
  RELEASE_(docsWithField_);
  RELEASE_(fieldInfo_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexBinaryDocValuesWriter class]) {
    OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH_ = JreLoadStatic(OrgApacheLuceneUtilArrayUtil, MAX_ARRAY_LENGTH_);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexBinaryDocValuesWriter)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneUtilCounter:", "BinaryDocValuesWriter", NULL, 0x1, NULL, NULL },
    { "addValueWithInt:withOrgApacheLuceneUtilBytesRef:", "addValue", "V", 0x1, NULL, NULL },
    { "docsWithFieldBytesUsed", NULL, "J", 0x2, NULL, NULL },
    { "updateBytesUsed", NULL, "V", 0x2, NULL, NULL },
    { "finishWithInt:", "finish", "V", 0x1, NULL, NULL },
    { "flushWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsDocValuesConsumer:", "flush", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_LENGTH_", NULL, 0x1a, "I", &OrgApacheLuceneIndexBinaryDocValuesWriter_MAX_LENGTH_, NULL, .constantValue.asLong = 0 },
    { "BLOCK_BITS", "BLOCK_BITS", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexBinaryDocValuesWriter_BLOCK_BITS },
    { "bytes_", NULL, 0x12, "Lorg.apache.lucene.util.PagedBytes;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesOut_", NULL, 0x12, "Lorg.apache.lucene.store.DataOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "iwBytesUsed_", NULL, 0x12, "Lorg.apache.lucene.util.Counter;", NULL, NULL, .constantValue.asLong = 0 },
    { "lengths_", NULL, 0x12, "Lorg.apache.lucene.util.packed.PackedLongValues$Builder;", NULL, NULL, .constantValue.asLong = 0 },
    { "docsWithField_", NULL, 0x2, "Lorg.apache.lucene.util.FixedBitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldInfo_", NULL, 0x12, "Lorg.apache.lucene.index.FieldInfo;", NULL, NULL, .constantValue.asLong = 0 },
    { "addedValues_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsed_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.BinaryDocValuesWriter$BytesIterator;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBinaryDocValuesWriter = { 2, "BinaryDocValuesWriter", "org.apache.lucene.index", NULL, 0x0, 6, methods, 10, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexBinaryDocValuesWriter;
}

@end

void OrgApacheLuceneIndexBinaryDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexBinaryDocValuesWriter *self, OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  OrgApacheLuceneIndexDocValuesWriter_init(self);
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  JreStrongAssignAndConsume(&self->bytes_, new_OrgApacheLuceneUtilPagedBytes_initWithInt_(OrgApacheLuceneIndexBinaryDocValuesWriter_BLOCK_BITS));
  JreStrongAssign(&self->bytesOut_, [self->bytes_ getDataOutput]);
  JreStrongAssign(&self->lengths_, OrgApacheLuceneUtilPackedPackedLongValues_deltaPackedBuilderWithFloat_(OrgApacheLuceneUtilPackedPackedInts_COMPACT));
  JreStrongAssign(&self->iwBytesUsed_, iwBytesUsed);
  JreStrongAssignAndConsume(&self->docsWithField_, new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(64));
  self->bytesUsed_ = OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(self);
  [((OrgApacheLuceneUtilCounter *) nil_chk(iwBytesUsed)) addAndGetWithLong:self->bytesUsed_];
}

OrgApacheLuceneIndexBinaryDocValuesWriter *new_OrgApacheLuceneIndexBinaryDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexFieldInfo *fieldInfo, OrgApacheLuceneUtilCounter *iwBytesUsed) {
  OrgApacheLuceneIndexBinaryDocValuesWriter *self = [OrgApacheLuceneIndexBinaryDocValuesWriter alloc];
  OrgApacheLuceneIndexBinaryDocValuesWriter_initWithOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneUtilCounter_(self, fieldInfo, iwBytesUsed);
  return self;
}

jlong OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self) {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(self->docsWithField_)) getBits]) + 64;
}

void OrgApacheLuceneIndexBinaryDocValuesWriter_updateBytesUsed(OrgApacheLuceneIndexBinaryDocValuesWriter *self) {
  jlong newBytesUsed = [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(self->lengths_)) ramBytesUsed] + [((OrgApacheLuceneUtilPagedBytes *) nil_chk(self->bytes_)) ramBytesUsed] + OrgApacheLuceneIndexBinaryDocValuesWriter_docsWithFieldBytesUsed(self);
  [((OrgApacheLuceneUtilCounter *) nil_chk(self->iwBytesUsed_)) addAndGetWithLong:newBytesUsed - self->bytesUsed_];
  self->bytesUsed_ = newBytesUsed;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBinaryDocValuesWriter)

@implementation OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)maxDoc
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)lengths {
  OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, outer$, maxDoc, lengths);
  return self;
}

- (jboolean)hasNext {
  return upto_ < maxDoc_;
}

- (OrgApacheLuceneUtilBytesRef *)next {
  if (![self hasNext]) {
    @throw [new_JavaUtilNoSuchElementException_init() autorelease];
  }
  OrgApacheLuceneUtilBytesRef *v;
  if (upto_ < size_) {
    jint length = (jint) [((OrgApacheLuceneUtilPackedPackedLongValues_Iterator *) nil_chk(lengthsIterator_)) next];
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(value_)) growWithInt:length];
    [value_ setLengthWithInt:length];
    @try {
      [((OrgApacheLuceneStoreDataInput *) nil_chk(bytesIterator_)) readBytesWithByteArray:[value_ bytes] withInt:0 withInt:[value_ length]];
    }
    @catch (JavaIoIOException *ioe) {
      @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe) autorelease];
    }
    if ([((OrgApacheLuceneUtilFixedBitSet *) nil_chk(this$0_->docsWithField_)) getWithInt:upto_]) {
      v = [value_ get];
    }
    else {
      v = nil;
    }
  }
  else {
    v = nil;
  }
  upto_++;
  return v;
}

- (void)remove {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(value_);
  RELEASE_(lengthsIterator_);
  RELEASE_(bytesIterator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexBinaryDocValuesWriter:withInt:withOrgApacheLuceneUtilPackedPackedLongValues:", "BytesIterator", NULL, 0x0, NULL, NULL },
    { "hasNext", NULL, "Z", 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "remove", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.index.BinaryDocValuesWriter;", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "lengthsIterator_", NULL, 0x10, "Lorg.apache.lucene.util.packed.PackedLongValues$Iterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesIterator_", NULL, 0x10, "Lorg.apache.lucene.store.DataInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "size_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "upto_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator = { 2, "BytesIterator", "org.apache.lucene.index", "BinaryDocValuesWriter", 0x2, 4, methods, 7, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/util/Iterator<Lorg/apache/lucene/util/BytesRef;>;" };
  return &_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator;
}

@end

void OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->value_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssign(&self->bytesIterator_, [((OrgApacheLuceneUtilPagedBytes *) nil_chk(outer$->bytes_)) getDataInput]);
  self->size_ = (jint) [((OrgApacheLuceneUtilPackedPackedLongValues_Builder *) nil_chk(outer$->lengths_)) size];
  self->maxDoc_ = maxDoc;
  JreStrongAssign(&self->lengthsIterator_, [((OrgApacheLuceneUtilPackedPackedLongValues *) nil_chk(lengths)) iterator]);
}

OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *new_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint maxDoc, OrgApacheLuceneUtilPackedPackedLongValues *lengths) {
  OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator *self = [OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator alloc];
  OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, outer$, maxDoc, lengths);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator)

@implementation OrgApacheLuceneIndexBinaryDocValuesWriter_$1

- (id<JavaUtilIterator>)iterator {
  return [new_OrgApacheLuceneIndexBinaryDocValuesWriter_BytesIterator_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(this$0_, val$maxDoc_, val$lengths_) autorelease];
}

- (instancetype)initWithOrgApacheLuceneIndexBinaryDocValuesWriter:(OrgApacheLuceneIndexBinaryDocValuesWriter *)outer$
                                                          withInt:(jint)capture$0
                    withOrgApacheLuceneUtilPackedPackedLongValues:(OrgApacheLuceneUtilPackedPackedLongValues *)capture$1 {
  OrgApacheLuceneIndexBinaryDocValuesWriter_$1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$lengths_);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  // Essentially disables fast-enumeration for correctness.
  return JreDefaultFastEnumeration(self, state, stackbuf, 1);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexBinaryDocValuesWriter:withInt:withOrgApacheLuceneUtilPackedPackedLongValues:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.index.BinaryDocValuesWriter;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$maxDoc_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$lengths_", NULL, 0x1012, "Lorg.apache.lucene.util.packed.PackedLongValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneIndexBinaryDocValuesWriter", "flushWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsDocValuesConsumer:" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBinaryDocValuesWriter_$1 = { 2, "", "org.apache.lucene.index", "BinaryDocValuesWriter", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Ljava/lang/Iterable<Lorg/apache/lucene/util/BytesRef;>;" };
  return &_OrgApacheLuceneIndexBinaryDocValuesWriter_$1;
}

@end

void OrgApacheLuceneIndexBinaryDocValuesWriter_$1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter_$1 *self, OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  self->val$maxDoc_ = capture$0;
  JreStrongAssign(&self->val$lengths_, capture$1);
  NSObject_init(self);
}

OrgApacheLuceneIndexBinaryDocValuesWriter_$1 *new_OrgApacheLuceneIndexBinaryDocValuesWriter_$1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(OrgApacheLuceneIndexBinaryDocValuesWriter *outer$, jint capture$0, OrgApacheLuceneUtilPackedPackedLongValues *capture$1) {
  OrgApacheLuceneIndexBinaryDocValuesWriter_$1 *self = [OrgApacheLuceneIndexBinaryDocValuesWriter_$1 alloc];
  OrgApacheLuceneIndexBinaryDocValuesWriter_$1_initWithOrgApacheLuceneIndexBinaryDocValuesWriter_withInt_withOrgApacheLuceneUtilPackedPackedLongValues_(self, outer$, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBinaryDocValuesWriter_$1)
