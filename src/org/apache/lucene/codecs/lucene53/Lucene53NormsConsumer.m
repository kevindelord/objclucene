//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene53/Lucene53NormsConsumer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Byte.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Iterable.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/Short.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/NormsConsumer.h"
#include "org/apache/lucene/codecs/lucene53/Lucene53NormsConsumer.h"
#include "org/apache/lucene/codecs/lucene53/Lucene53NormsFormat.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer ()

- (void)addConstantWithLong:(jlong)constant;

- (void)addByte1WithJavaLangIterable:(id<JavaLangIterable>)values;

- (void)addByte2WithJavaLangIterable:(id<JavaLangIterable>)values;

- (void)addByte4WithJavaLangIterable:(id<JavaLangIterable>)values;

- (void)addByte8WithJavaLangIterable:(id<JavaLangIterable>)values;

@end

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addConstantWithLong_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, jlong constant);

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte1WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values);

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte2WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values);

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte4WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values);

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte8WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values);

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                                                 withNSString:(NSString *)dataCodec
                                                 withNSString:(NSString *)dataExtension
                                                 withNSString:(NSString *)metaCodec
                                                 withNSString:(NSString *)metaExtension {
  OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(self, state, dataCodec, dataExtension, metaCodec, metaExtension);
  return self;
}

- (void)addNormsFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                  withJavaLangIterable:(id<JavaLangIterable>)values {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(meta_)) writeVIntWithInt:((OrgApacheLuceneIndexFieldInfo *) nil_chk(field))->number_];
  jlong minValue = JavaLangLong_MAX_VALUE;
  jlong maxValue = JavaLangLong_MIN_VALUE;
  jint count = 0;
  for (NSNumber * __strong nv in nil_chk(values)) {
    if (nv == nil) {
      @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$I", @"illegal norms data for field ", field->name_, @", got null for value: ", count));
    }
    jlong v = [nv longLongValue];
    minValue = JavaLangMath_minWithLong_withLong_(minValue, v);
    maxValue = JavaLangMath_maxWithLong_withLong_(maxValue, v);
    count++;
  }
  if (count != maxDoc_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$I$I", @"illegal norms data for field ", field->name_, @", expected count=", maxDoc_, @", got=", count));
  }
  if (minValue == maxValue) {
    OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addConstantWithLong_(self, minValue);
  }
  else if (minValue >= JavaLangByte_MIN_VALUE && maxValue <= JavaLangByte_MAX_VALUE) {
    OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte1WithJavaLangIterable_(self, values);
  }
  else if (minValue >= JavaLangShort_MIN_VALUE && maxValue <= JavaLangShort_MAX_VALUE) {
    OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte2WithJavaLangIterable_(self, values);
  }
  else if (minValue >= JavaLangInteger_MIN_VALUE && maxValue <= JavaLangInteger_MAX_VALUE) {
    OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte4WithJavaLangIterable_(self, values);
  }
  else {
    OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte8WithJavaLangIterable_(self, values);
  }
}

- (void)addConstantWithLong:(jlong)constant {
  OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addConstantWithLong_(self, constant);
}

- (void)addByte1WithJavaLangIterable:(id<JavaLangIterable>)values {
  OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte1WithJavaLangIterable_(self, values);
}

- (void)addByte2WithJavaLangIterable:(id<JavaLangIterable>)values {
  OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte2WithJavaLangIterable_(self, values);
}

- (void)addByte4WithJavaLangIterable:(id<JavaLangIterable>)values {
  OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte4WithJavaLangIterable_(self, values);
}

- (void)addByte8WithJavaLangIterable:(id<JavaLangIterable>)values {
  OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte8WithJavaLangIterable_(self, values);
}

- (void)close {
  jboolean success = false;
  @try {
    if (meta_ != nil) {
      [meta_ writeVIntWithInt:-1];
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(meta_);
    }
    if (data_ != nil) {
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(data_);
    }
    success = true;
  }
  @finally {
    if (success) {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ data_, meta_ } count:2 type:JavaIoCloseable_class_()]);
    }
    else {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ data_, meta_ } count:2 type:JavaIoCloseable_class_()]);
    }
    JreStrongAssign(&meta_, JreStrongAssign(&data_, nil));
  }
}

- (void)dealloc {
  RELEASE_(data_);
  RELEASE_(meta_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexSegmentWriteState:withNSString:withNSString:withNSString:withNSString:", "Lucene53NormsConsumer", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "addNormsFieldWithOrgApacheLuceneIndexFieldInfo:withJavaLangIterable:", "addNormsField", "V", 0x1, "Ljava.io.IOException;", "(Lorg/apache/lucene/index/FieldInfo;Ljava/lang/Iterable<Ljava/lang/Number;>;)V" },
    { "addConstantWithLong:", "addConstant", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "addByte1WithJavaLangIterable:", "addByte1", "V", 0x2, "Ljava.io.IOException;", "(Ljava/lang/Iterable<Ljava/lang/Number;>;)V" },
    { "addByte2WithJavaLangIterable:", "addByte2", "V", 0x2, "Ljava.io.IOException;", "(Ljava/lang/Iterable<Ljava/lang/Number;>;)V" },
    { "addByte4WithJavaLangIterable:", "addByte4", "V", 0x2, "Ljava.io.IOException;", "(Ljava/lang/Iterable<Ljava/lang/Number;>;)V" },
    { "addByte8WithJavaLangIterable:", "addByte8", "V", 0x2, "Ljava.io.IOException;", "(Ljava/lang/Iterable<Ljava/lang/Number;>;)V" },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "data_", NULL, 0x0, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "meta_", NULL, 0x0, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer = { 2, "Lucene53NormsConsumer", "org.apache.lucene.codecs.lucene53", NULL, 0x0, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, OrgApacheLuceneIndexSegmentWriteState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) {
  OrgApacheLuceneCodecsNormsConsumer_init(self);
  jboolean success = false;
  @try {
    NSString *dataName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_))->name_, state->segmentSuffix_, dataExtension);
    JreStrongAssign(&self->data_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) createOutputWithNSString:dataName withOrgApacheLuceneStoreIOContext:state->context_]);
    OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(self->data_, dataCodec, OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    NSString *metaName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(state->segmentInfo_->name_, state->segmentSuffix_, metaExtension);
    JreStrongAssign(&self->meta_, [state->directory_ createOutputWithNSString:metaName withOrgApacheLuceneStoreIOContext:state->context_]);
    OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(self->meta_, metaCodec, OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    self->maxDoc_ = [state->segmentInfo_ maxDoc];
    success = true;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ self } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *new_OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentWriteState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer, initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_, state, dataCodec, dataExtension, metaCodec, metaExtension)
}

OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *create_OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentWriteState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer, initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_, state, dataCodec, dataExtension, metaCodec, metaExtension)
}

void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addConstantWithLong_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, jlong constant) {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeByteWithByte:(jbyte) 0];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeLongWithLong:constant];
}

void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte1WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values) {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeByteWithByte:(jbyte) 1];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) getFilePointer]];
  for (NSNumber * __strong value in nil_chk(values)) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) writeByteWithByte:[((NSNumber *) nil_chk(value)) charValue]];
  }
}

void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte2WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values) {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeByteWithByte:(jbyte) 2];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) getFilePointer]];
  for (NSNumber * __strong value in nil_chk(values)) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) writeShortWithShort:[((NSNumber *) nil_chk(value)) shortValue]];
  }
}

void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte4WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values) {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeByteWithByte:(jbyte) 4];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) getFilePointer]];
  for (NSNumber * __strong value in nil_chk(values)) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) writeIntWithInt:[((NSNumber *) nil_chk(value)) intValue]];
  }
}

void OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_addByte8WithJavaLangIterable_(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *self, id<JavaLangIterable> values) {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeByteWithByte:(jbyte) 8];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->meta_)) writeLongWithLong:[((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) getFilePointer]];
  for (NSNumber * __strong value in nil_chk(values)) {
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->data_)) writeLongWithLong:[((NSNumber *) nil_chk(value)) longLongValue]];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer)