//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50PostingsFormat.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/BlockTermState.h"
#include "org/apache/lucene/codecs/FieldsConsumer.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/codecs/PostingsReaderBase.h"
#include "org/apache/lucene/codecs/PostingsWriterBase.h"
#include "org/apache/lucene/codecs/blocktree/BlockTreeTermsReader.h"
#include "org/apache/lucene/codecs/blocktree/BlockTreeTermsWriter.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50PostingsFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50PostingsReader.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50PostingsWriter.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat () {
 @public
  jint minTermBlockSize_;
  jint maxTermBlockSize_;
}

@end

NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_EXTENSION = @"doc";
NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_EXTENSION = @"pos";
NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_EXTENSION = @"pay";
NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_TERMS_CODEC = @"Lucene50PostingsWriterTerms";
NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_CODEC = @"Lucene50PostingsWriterDoc";
NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_CODEC = @"Lucene50PostingsWriterPos";
NSString *OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_CODEC = @"Lucene50PostingsWriterPay";

@implementation OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat

+ (NSString *)DOC_EXTENSION {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_EXTENSION;
}

+ (NSString *)POS_EXTENSION {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_EXTENSION;
}

+ (NSString *)PAY_EXTENSION {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_EXTENSION;
}

+ (jint)MAX_SKIP_LEVELS {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_MAX_SKIP_LEVELS;
}

+ (NSString *)TERMS_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_TERMS_CODEC;
}

+ (NSString *)DOC_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_CODEC;
}

+ (NSString *)POS_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_CODEC;
}

+ (NSString *)PAY_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_CODEC;
}

+ (jint)VERSION_START {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_START;
}

+ (jint)VERSION_CURRENT {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_CURRENT;
}

+ (jint)BLOCK_SIZE {
  return OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_BLOCK_SIZE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)minTermBlockSize
                    withInt:(jint)maxTermBlockSize {
  OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(self, minTermBlockSize, maxTermBlockSize);
  return self;
}

- (NSString *)description {
  return JreStrcat("$$IC", [self getName], @"(blocksize=", OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_BLOCK_SIZE, ')');
}

- (OrgApacheLuceneCodecsFieldsConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter = create_OrgApacheLuceneCodecsLucene50Lucene50PostingsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_(state);
  jboolean success = false;
  @try {
    OrgApacheLuceneCodecsFieldsConsumer *ret = create_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(state, postingsWriter, minTermBlockSize_, maxTermBlockSize_);
    success = true;
    return ret;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ postingsWriter } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

- (OrgApacheLuceneCodecsFieldsProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  OrgApacheLuceneCodecsPostingsReaderBase *postingsReader = create_OrgApacheLuceneCodecsLucene50Lucene50PostingsReader_initWithOrgApacheLuceneIndexSegmentReadState_(state);
  jboolean success = false;
  @try {
    OrgApacheLuceneCodecsFieldsProducer *ret = create_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(postingsReader, state);
    success = true;
    return ret;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ postingsReader } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Lucene50PostingsFormat", NULL, 0x1, NULL, NULL },
    { "initWithInt:withInt:", "Lucene50PostingsFormat", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:", "fieldsConsumer", "Lorg.apache.lucene.codecs.FieldsConsumer;", 0x1, "Ljava.io.IOException;", NULL },
    { "fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:", "fieldsProducer", "Lorg.apache.lucene.codecs.FieldsProducer;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DOC_EXTENSION", "DOC_EXTENSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_EXTENSION, NULL, .constantValue.asLong = 0 },
    { "POS_EXTENSION", "POS_EXTENSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_EXTENSION, NULL, .constantValue.asLong = 0 },
    { "PAY_EXTENSION", "PAY_EXTENSION", 0x19, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_EXTENSION, NULL, .constantValue.asLong = 0 },
    { "MAX_SKIP_LEVELS", "MAX_SKIP_LEVELS", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_MAX_SKIP_LEVELS },
    { "TERMS_CODEC", "TERMS_CODEC", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_TERMS_CODEC, NULL, .constantValue.asLong = 0 },
    { "DOC_CODEC", "DOC_CODEC", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_DOC_CODEC, NULL, .constantValue.asLong = 0 },
    { "POS_CODEC", "POS_CODEC", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_POS_CODEC, NULL, .constantValue.asLong = 0 },
    { "PAY_CODEC", "PAY_CODEC", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_PAY_CODEC, NULL, .constantValue.asLong = 0 },
    { "VERSION_START", "VERSION_START", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_START },
    { "VERSION_CURRENT", "VERSION_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_VERSION_CURRENT },
    { "minTermBlockSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxTermBlockSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "BLOCK_SIZE", "BLOCK_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_BLOCK_SIZE },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.lucene50.Lucene50PostingsFormat$IntBlockTermState;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat = { 2, "Lucene50PostingsFormat", "org.apache.lucene.codecs.lucene50", NULL, 0x11, 5, methods, 13, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *self) {
  OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(self, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_DEFAULT_MIN_BLOCK_SIZE, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_DEFAULT_MAX_BLOCK_SIZE);
}

OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, init)
}

OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, init)
}

void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *self, jint minTermBlockSize, jint maxTermBlockSize) {
  OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(self, @"Lucene50");
  OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter_validateSettingsWithInt_withInt_(minTermBlockSize, maxTermBlockSize);
  self->minTermBlockSize_ = minTermBlockSize;
  self->maxTermBlockSize_ = maxTermBlockSize;
}

OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(jint minTermBlockSize, jint maxTermBlockSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, initWithInt_withInt_, minTermBlockSize, maxTermBlockSize)
}

OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat *create_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_initWithInt_withInt_(jint minTermBlockSize, jint maxTermBlockSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat, initWithInt_withInt_, minTermBlockSize, maxTermBlockSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat)

@implementation OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState

- (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *)clone {
  OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *other = create_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init();
  [other copyFromWithOrgApacheLuceneIndexTermState:self];
  return other;
}

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)_other {
  [super copyFromWithOrgApacheLuceneIndexTermState:_other];
  OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *other = (OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *) cast_chk(_other, [OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState class]);
  docStartFP_ = ((OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *) nil_chk(other))->docStartFP_;
  posStartFP_ = other->posStartFP_;
  payStartFP_ = other->payStartFP_;
  lastPosBlockOffset_ = other->lastPosBlockOffset_;
  skipOffset_ = other->skipOffset_;
  singletonDocID_ = other->singletonDocID_;
}

- (NSString *)description {
  return JreStrcat("$$J$J$J$J$I", [super description], @" docStartFP=", docStartFP_, @" posStartFP=", posStartFP_, @" payStartFP=", payStartFP_, @" lastPosBlockOffset=", lastPosBlockOffset_, @" singletonDocID=", singletonDocID_);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "clone", NULL, "Lorg.apache.lucene.codecs.lucene50.Lucene50PostingsFormat$IntBlockTermState;", 0x1, NULL, NULL },
    { "copyFromWithOrgApacheLuceneIndexTermState:", "copyFrom", "V", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "IntBlockTermState", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "docStartFP_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "posStartFP_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "payStartFP_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "skipOffset_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastPosBlockOffset_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "singletonDocID_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState = { 2, "IntBlockTermState", "org.apache.lucene.codecs.lucene50", "Lucene50PostingsFormat", 0x18, 4, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *self) {
  OrgApacheLuceneCodecsBlockTermState_init(self);
  self->docStartFP_ = 0;
  self->posStartFP_ = 0;
  self->payStartFP_ = 0;
  self->skipOffset_ = -1;
  self->lastPosBlockOffset_ = -1;
  self->singletonDocID_ = -1;
}

OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *new_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState, init)
}

OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState *create_OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50PostingsFormat_IntBlockTermState)
