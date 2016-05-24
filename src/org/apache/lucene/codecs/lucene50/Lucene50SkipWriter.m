//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50SkipWriter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/codecs/MultiLevelSkipListWriter.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50SkipWriter.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneCodecsLucene50Lucene50SkipWriter () {
 @public
  IOSIntArray *lastSkipDoc_;
  IOSLongArray *lastSkipDocPointer_;
  IOSLongArray *lastSkipPosPointer_;
  IOSLongArray *lastSkipPayPointer_;
  IOSIntArray *lastPayloadByteUpto_;
  OrgApacheLuceneStoreIndexOutput *docOut_;
  OrgApacheLuceneStoreIndexOutput *posOut_;
  OrgApacheLuceneStoreIndexOutput *payOut_;
  jint curDoc_;
  jlong curDocPointer_;
  jlong curPosPointer_;
  jlong curPayPointer_;
  jint curPosBufferUpto_;
  jint curPayloadByteUpto_;
  jboolean fieldHasPositions_;
  jboolean fieldHasOffsets_;
  jboolean fieldHasPayloads_;
  jboolean initialized_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, lastSkipDoc_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, lastSkipDocPointer_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, lastSkipPosPointer_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, lastSkipPayPointer_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, lastPayloadByteUpto_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, docOut_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, posOut_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, payOut_, OrgApacheLuceneStoreIndexOutput *)

@implementation OrgApacheLuceneCodecsLucene50Lucene50SkipWriter

- (instancetype)initWithInt:(jint)maxSkipLevels
                    withInt:(jint)blockSize
                    withInt:(jint)docCount
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)docOut
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)posOut
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)payOut {
  OrgApacheLuceneCodecsLucene50Lucene50SkipWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(self, maxSkipLevels, blockSize, docCount, docOut, posOut, payOut);
  return self;
}

- (void)setFieldWithBoolean:(jboolean)fieldHasPositions
                withBoolean:(jboolean)fieldHasOffsets
                withBoolean:(jboolean)fieldHasPayloads {
  self->fieldHasPositions_ = fieldHasPositions;
  self->fieldHasOffsets_ = fieldHasOffsets;
  self->fieldHasPayloads_ = fieldHasPayloads;
}

- (void)resetSkip {
  lastDocFP_ = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(docOut_)) getFilePointer];
  if (fieldHasPositions_) {
    lastPosFP_ = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(posOut_)) getFilePointer];
    if (fieldHasOffsets_ || fieldHasPayloads_) {
      lastPayFP_ = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(payOut_)) getFilePointer];
    }
  }
  initialized_ = false;
}

- (void)initSkip {
  if (!initialized_) {
    [super resetSkip];
    JavaUtilArrays_fillWithIntArray_withInt_(lastSkipDoc_, 0);
    JavaUtilArrays_fillWithLongArray_withLong_(lastSkipDocPointer_, lastDocFP_);
    if (fieldHasPositions_) {
      JavaUtilArrays_fillWithLongArray_withLong_(lastSkipPosPointer_, lastPosFP_);
      if (fieldHasPayloads_) {
        JavaUtilArrays_fillWithIntArray_withInt_(lastPayloadByteUpto_, 0);
      }
      if (fieldHasOffsets_ || fieldHasPayloads_) {
        JavaUtilArrays_fillWithLongArray_withLong_(lastSkipPayPointer_, lastPayFP_);
      }
    }
    initialized_ = true;
  }
}

- (void)bufferSkipWithInt:(jint)doc
                  withInt:(jint)numDocs
                 withLong:(jlong)posFP
                 withLong:(jlong)payFP
                  withInt:(jint)posBufferUpto
                  withInt:(jint)payloadByteUpto {
  [self initSkip];
  self->curDoc_ = doc;
  self->curDocPointer_ = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(docOut_)) getFilePointer];
  self->curPosPointer_ = posFP;
  self->curPayPointer_ = payFP;
  self->curPosBufferUpto_ = posBufferUpto;
  self->curPayloadByteUpto_ = payloadByteUpto;
  [self bufferSkipWithInt:numDocs];
}

- (void)writeSkipDataWithInt:(jint)level
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)skipBuffer {
  jint delta = curDoc_ - IOSIntArray_Get(nil_chk(lastSkipDoc_), level);
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(skipBuffer)) writeVIntWithInt:delta];
  *IOSIntArray_GetRef(nil_chk(lastSkipDoc_), level) = curDoc_;
  [skipBuffer writeVLongWithLong:curDocPointer_ - IOSLongArray_Get(nil_chk(lastSkipDocPointer_), level)];
  *IOSLongArray_GetRef(nil_chk(lastSkipDocPointer_), level) = curDocPointer_;
  if (fieldHasPositions_) {
    [skipBuffer writeVLongWithLong:curPosPointer_ - IOSLongArray_Get(nil_chk(lastSkipPosPointer_), level)];
    *IOSLongArray_GetRef(nil_chk(lastSkipPosPointer_), level) = curPosPointer_;
    [skipBuffer writeVIntWithInt:curPosBufferUpto_];
    if (fieldHasPayloads_) {
      [skipBuffer writeVIntWithInt:curPayloadByteUpto_];
    }
    if (fieldHasOffsets_ || fieldHasPayloads_) {
      [skipBuffer writeVLongWithLong:curPayPointer_ - IOSLongArray_Get(nil_chk(lastSkipPayPointer_), level)];
      *IOSLongArray_GetRef(nil_chk(lastSkipPayPointer_), level) = curPayPointer_;
    }
  }
}

- (void)dealloc {
  RELEASE_(lastSkipDoc_);
  RELEASE_(lastSkipDocPointer_);
  RELEASE_(lastSkipPosPointer_);
  RELEASE_(lastSkipPayPointer_);
  RELEASE_(lastPayloadByteUpto_);
  RELEASE_(docOut_);
  RELEASE_(posOut_);
  RELEASE_(payOut_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:withOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneStoreIndexOutput:", "Lucene50SkipWriter", NULL, 0x1, NULL, NULL },
    { "setFieldWithBoolean:withBoolean:withBoolean:", "setField", "V", 0x1, NULL, NULL },
    { "resetSkip", NULL, "V", 0x1, NULL, NULL },
    { "initSkip", NULL, "V", 0x1, NULL, NULL },
    { "bufferSkipWithInt:withInt:withLong:withLong:withInt:withInt:", "bufferSkip", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeSkipDataWithInt:withOrgApacheLuceneStoreIndexOutput:", "writeSkipData", "V", 0x4, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "lastSkipDoc_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "lastSkipDocPointer_", NULL, 0x2, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastSkipPosPointer_", NULL, 0x2, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastSkipPayPointer_", NULL, 0x2, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastPayloadByteUpto_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "docOut_", NULL, 0x12, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "posOut_", NULL, 0x12, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "payOut_", NULL, 0x12, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "curDoc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curDocPointer_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "curPosPointer_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "curPayPointer_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "curPosBufferUpto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curPayloadByteUpto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldHasPositions_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldHasOffsets_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldHasPayloads_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "initialized_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "lastDocFP_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastPosFP_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastPayFP_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50SkipWriter = { 2, "Lucene50SkipWriter", "org.apache.lucene.codecs.lucene50", NULL, 0x10, 6, methods, 21, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene50Lucene50SkipWriter;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50SkipWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter *self, jint maxSkipLevels, jint blockSize, jint docCount, OrgApacheLuceneStoreIndexOutput *docOut, OrgApacheLuceneStoreIndexOutput *posOut, OrgApacheLuceneStoreIndexOutput *payOut) {
  OrgApacheLuceneCodecsMultiLevelSkipListWriter_initWithInt_withInt_withInt_withInt_(self, blockSize, 8, maxSkipLevels, docCount);
  JreStrongAssign(&self->docOut_, docOut);
  JreStrongAssign(&self->posOut_, posOut);
  JreStrongAssign(&self->payOut_, payOut);
  JreStrongAssignAndConsume(&self->lastSkipDoc_, [IOSIntArray newArrayWithLength:maxSkipLevels]);
  JreStrongAssignAndConsume(&self->lastSkipDocPointer_, [IOSLongArray newArrayWithLength:maxSkipLevels]);
  if (posOut != nil) {
    JreStrongAssignAndConsume(&self->lastSkipPosPointer_, [IOSLongArray newArrayWithLength:maxSkipLevels]);
    if (payOut != nil) {
      JreStrongAssignAndConsume(&self->lastSkipPayPointer_, [IOSLongArray newArrayWithLength:maxSkipLevels]);
    }
    JreStrongAssignAndConsume(&self->lastPayloadByteUpto_, [IOSIntArray newArrayWithLength:maxSkipLevels]);
  }
}

OrgApacheLuceneCodecsLucene50Lucene50SkipWriter *new_OrgApacheLuceneCodecsLucene50Lucene50SkipWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(jint maxSkipLevels, jint blockSize, jint docCount, OrgApacheLuceneStoreIndexOutput *docOut, OrgApacheLuceneStoreIndexOutput *posOut, OrgApacheLuceneStoreIndexOutput *payOut) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_, maxSkipLevels, blockSize, docCount, docOut, posOut, payOut)
}

OrgApacheLuceneCodecsLucene50Lucene50SkipWriter *create_OrgApacheLuceneCodecsLucene50Lucene50SkipWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(jint maxSkipLevels, jint blockSize, jint docCount, OrgApacheLuceneStoreIndexOutput *docOut, OrgApacheLuceneStoreIndexOutput *posOut, OrgApacheLuceneStoreIndexOutput *payOut) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter, initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_, maxSkipLevels, blockSize, docCount, docOut, posOut, payOut)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50SkipWriter)