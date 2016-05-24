//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TermsHashPerField.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Comparator.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/index/ByteSliceReader.h"
#include "org/apache/lucene/index/DocumentsWriterPerThread.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/IndexableField.h"
#include "org/apache/lucene/index/ParallelPostingsArray.h"
#include "org/apache/lucene/index/TermsHash.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/util/ByteBlockPool.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefHash.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/IntBlockPool.h"

@interface OrgApacheLuceneIndexTermsHashPerField () {
 @public
  OrgApacheLuceneUtilCounter *bytesUsed_;
  jboolean doNextCall_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermsHashPerField, bytesUsed_, OrgApacheLuceneUtilCounter *)

inline jint OrgApacheLuceneIndexTermsHashPerField_get_HASH_INIT_SIZE();
#define OrgApacheLuceneIndexTermsHashPerField_HASH_INIT_SIZE 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexTermsHashPerField, HASH_INIT_SIZE, jint)

@interface OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray : OrgApacheLuceneUtilBytesRefHash_BytesStartArray {
 @public
  OrgApacheLuceneIndexTermsHashPerField *perField_;
  OrgApacheLuceneUtilCounter *bytesUsed_;
}

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)perField
                               withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed;

- (IOSIntArray *)init__ OBJC_METHOD_FAMILY_NONE;

- (IOSIntArray *)grow;

- (IOSIntArray *)clear;

- (OrgApacheLuceneUtilCounter *)bytesUsed;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray, perField_, OrgApacheLuceneIndexTermsHashPerField *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray, bytesUsed_, OrgApacheLuceneUtilCounter *)

__attribute__((unused)) static void OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray *self, OrgApacheLuceneIndexTermsHashPerField *perField, OrgApacheLuceneUtilCounter *bytesUsed);

__attribute__((unused)) static OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray *new_OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexTermsHashPerField *perField, OrgApacheLuceneUtilCounter *bytesUsed) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray *create_OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexTermsHashPerField *perField, OrgApacheLuceneUtilCounter *bytesUsed);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray)

@implementation OrgApacheLuceneIndexTermsHashPerField

- (instancetype)initWithInt:(jint)streamCount
withOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)fieldState
withOrgApacheLuceneIndexTermsHash:(OrgApacheLuceneIndexTermsHash *)termsHash
withOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)nextPerField
withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  OrgApacheLuceneIndexTermsHashPerField_initWithInt_withOrgApacheLuceneIndexFieldInvertState_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFieldInfo_(self, streamCount, fieldState, termsHash, nextPerField, fieldInfo);
  return self;
}

- (void)reset {
  [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(bytesHash_)) clearWithBoolean:false];
  if (nextPerField_ != nil) {
    [nextPerField_ reset];
  }
}

- (void)initReaderWithOrgApacheLuceneIndexByteSliceReader:(OrgApacheLuceneIndexByteSliceReader *)reader
                                                  withInt:(jint)termID
                                                  withInt:(jint)stream {
  JreAssert((stream < streamCount_), (@"org/apache/lucene/index/TermsHashPerField.java:82 condition failed: assert stream < streamCount;"));
  jint intStart = IOSIntArray_Get(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->intStarts_), termID);
  IOSIntArray *ints = IOSObjectArray_Get(nil_chk(((OrgApacheLuceneUtilIntBlockPool *) nil_chk(intPool_))->buffers_), JreRShift32(intStart, OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SHIFT));
  jint upto = intStart & OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK;
  [((OrgApacheLuceneIndexByteSliceReader *) nil_chk(reader)) init__WithOrgApacheLuceneUtilByteBlockPool:bytePool_ withInt:IOSIntArray_Get(nil_chk(postingsArray_->byteStarts_), termID) + stream * JreLoadStatic(OrgApacheLuceneUtilByteBlockPool, FIRST_LEVEL_SIZE) withInt:IOSIntArray_Get(nil_chk(ints), upto + stream)];
}

- (IOSIntArray *)sortPostings {
  JreStrongAssign(&sortedTermIDs_, [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(bytesHash_)) sortWithJavaUtilComparator:OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator()]);
  return sortedTermIDs_;
}

- (void)addWithInt:(jint)textStart {
  jint termID = [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(bytesHash_)) addByPoolOffsetWithInt:textStart];
  if (termID >= 0) {
    if (numPostingInt_ + ((OrgApacheLuceneUtilIntBlockPool *) nil_chk(intPool_))->intUpto_ > OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE) {
      [intPool_ nextBuffer];
    }
    if (OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE - ((OrgApacheLuceneUtilByteBlockPool *) nil_chk(bytePool_))->byteUpto_ < numPostingInt_ * JreLoadStatic(OrgApacheLuceneUtilByteBlockPool, FIRST_LEVEL_SIZE)) {
      [bytePool_ nextBuffer];
    }
    JreStrongAssign(&intUptos_, intPool_->buffer_);
    intUptoStart_ = intPool_->intUpto_;
    intPool_->intUpto_ += streamCount_;
    *IOSIntArray_GetRef(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->intStarts_), termID) = intUptoStart_ + intPool_->intOffset_;
    for (jint i = 0; i < streamCount_; i++) {
      jint upto = [bytePool_ newSliceWithInt:JreLoadStatic(OrgApacheLuceneUtilByteBlockPool, FIRST_LEVEL_SIZE)];
      *IOSIntArray_GetRef(nil_chk(intUptos_), intUptoStart_ + i) = upto + bytePool_->byteOffset_;
    }
    *IOSIntArray_GetRef(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->byteStarts_), termID) = IOSIntArray_Get(nil_chk(intUptos_), intUptoStart_);
    [self newTermWithInt:termID];
  }
  else {
    termID = (-termID) - 1;
    jint intStart = IOSIntArray_Get(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->intStarts_), termID);
    JreStrongAssign(&intUptos_, IOSObjectArray_Get(nil_chk(((OrgApacheLuceneUtilIntBlockPool *) nil_chk(intPool_))->buffers_), JreRShift32(intStart, OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SHIFT)));
    intUptoStart_ = intStart & OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK;
    [self addTermWithInt:termID];
  }
}

- (void)add {
  jint termID = [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(bytesHash_)) addWithOrgApacheLuceneUtilBytesRef:[((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termAtt_)) getBytesRef]];
  if (termID >= 0) {
    [bytesHash_ byteStartWithInt:termID];
    if (numPostingInt_ + ((OrgApacheLuceneUtilIntBlockPool *) nil_chk(intPool_))->intUpto_ > OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SIZE) {
      [intPool_ nextBuffer];
    }
    if (OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE - ((OrgApacheLuceneUtilByteBlockPool *) nil_chk(bytePool_))->byteUpto_ < numPostingInt_ * JreLoadStatic(OrgApacheLuceneUtilByteBlockPool, FIRST_LEVEL_SIZE)) {
      [bytePool_ nextBuffer];
    }
    JreStrongAssign(&intUptos_, intPool_->buffer_);
    intUptoStart_ = intPool_->intUpto_;
    intPool_->intUpto_ += streamCount_;
    *IOSIntArray_GetRef(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->intStarts_), termID) = intUptoStart_ + intPool_->intOffset_;
    for (jint i = 0; i < streamCount_; i++) {
      jint upto = [bytePool_ newSliceWithInt:JreLoadStatic(OrgApacheLuceneUtilByteBlockPool, FIRST_LEVEL_SIZE)];
      *IOSIntArray_GetRef(nil_chk(intUptos_), intUptoStart_ + i) = upto + bytePool_->byteOffset_;
    }
    *IOSIntArray_GetRef(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->byteStarts_), termID) = IOSIntArray_Get(nil_chk(intUptos_), intUptoStart_);
    [self newTermWithInt:termID];
  }
  else {
    termID = (-termID) - 1;
    jint intStart = IOSIntArray_Get(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->intStarts_), termID);
    JreStrongAssign(&intUptos_, IOSObjectArray_Get(nil_chk(((OrgApacheLuceneUtilIntBlockPool *) nil_chk(intPool_))->buffers_), JreRShift32(intStart, OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_SHIFT)));
    intUptoStart_ = intStart & OrgApacheLuceneUtilIntBlockPool_INT_BLOCK_MASK;
    [self addTermWithInt:termID];
  }
  if (doNextCall_) {
    [((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(nextPerField_)) addWithInt:IOSIntArray_Get(nil_chk(((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray_))->textStarts_), termID)];
  }
}

- (void)writeByteWithInt:(jint)stream
                withByte:(jbyte)b {
  jint upto = IOSIntArray_Get(nil_chk(intUptos_), intUptoStart_ + stream);
  IOSByteArray *bytes = IOSObjectArray_Get(nil_chk(((OrgApacheLuceneUtilByteBlockPool *) nil_chk(bytePool_))->buffers_), JreRShift32(upto, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT));
  JreAssert((bytes != nil), (@"org/apache/lucene/index/TermsHashPerField.java:198 condition failed: assert bytes != null;"));
  jint offset = upto & OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK;
  if (IOSByteArray_Get(nil_chk(bytes), offset) != 0) {
    offset = [bytePool_ allocSliceWithByteArray:bytes withInt:offset];
    bytes = bytePool_->buffer_;
    *IOSIntArray_GetRef(nil_chk(intUptos_), intUptoStart_ + stream) = offset + bytePool_->byteOffset_;
  }
  *IOSByteArray_GetRef(nil_chk(bytes), offset) = b;
  (*IOSIntArray_GetRef(intUptos_, intUptoStart_ + stream))++;
}

- (void)writeBytesWithInt:(jint)stream
            withByteArray:(IOSByteArray *)b
                  withInt:(jint)offset
                  withInt:(jint)len {
  jint end = offset + len;
  for (jint i = offset; i < end; i++) [self writeByteWithInt:stream withByte:IOSByteArray_Get(nil_chk(b), i)];
}

- (void)writeVIntWithInt:(jint)stream
                 withInt:(jint)i {
  JreAssert((stream < streamCount_), (@"org/apache/lucene/index/TermsHashPerField.java:218 condition failed: assert stream < streamCount;"));
  while ((i & ~(jint) 0x7F) != 0) {
    [self writeByteWithInt:stream withByte:(jbyte) ((i & (jint) 0x7f) | (jint) 0x80)];
    JreURShiftAssignInt(&i, 7);
  }
  [self writeByteWithInt:stream withByte:(jbyte) i];
}

- (jint)compareToWithId:(OrgApacheLuceneIndexTermsHashPerField *)other {
  cast_chk(other, [OrgApacheLuceneIndexTermsHashPerField class]);
  return [((NSString *) nil_chk(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_)) compareToWithId:((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(other))->fieldInfo_->name_];
}

- (void)finish {
  if (nextPerField_ != nil) {
    [nextPerField_ finish];
  }
}

- (jboolean)startWithOrgApacheLuceneIndexIndexableField:(id<OrgApacheLuceneIndexIndexableField>)field
                                            withBoolean:(jboolean)first {
  JreStrongAssign(&termAtt_, ((OrgApacheLuceneIndexFieldInvertState *) nil_chk(fieldState_))->termAttribute_);
  if (nextPerField_ != nil) {
    doNextCall_ = [nextPerField_ startWithOrgApacheLuceneIndexIndexableField:field withBoolean:first];
  }
  return true;
}

- (void)newTermWithInt:(jint)termID {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)addTermWithInt:(jint)termID {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)newPostingsArray {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneIndexParallelPostingsArray *)createPostingsArrayWithInt:(jint)size {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(termsHash_);
  RELEASE_(nextPerField_);
  RELEASE_(docState_);
  RELEASE_(fieldState_);
  RELEASE_(termAtt_);
  RELEASE_(intPool_);
  RELEASE_(bytePool_);
  RELEASE_(termBytePool_);
  RELEASE_(fieldInfo_);
  RELEASE_(bytesHash_);
  RELEASE_(postingsArray_);
  RELEASE_(bytesUsed_);
  RELEASE_(sortedTermIDs_);
  RELEASE_(intUptos_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withOrgApacheLuceneIndexFieldInvertState:withOrgApacheLuceneIndexTermsHash:withOrgApacheLuceneIndexTermsHashPerField:withOrgApacheLuceneIndexFieldInfo:", "TermsHashPerField", NULL, 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x0, NULL, NULL },
    { "initReaderWithOrgApacheLuceneIndexByteSliceReader:withInt:withInt:", "initReader", "V", 0x1, NULL, NULL },
    { "sortPostings", NULL, "[I", 0x1, NULL, NULL },
    { "addWithInt:", "add", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "add", NULL, "V", 0x0, "Ljava.io.IOException;", NULL },
    { "writeByteWithInt:withByte:", "writeByte", "V", 0x0, NULL, NULL },
    { "writeBytesWithInt:withByteArray:withInt:withInt:", "writeBytes", "V", 0x1, NULL, NULL },
    { "writeVIntWithInt:withInt:", "writeVInt", "V", 0x0, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "finish", NULL, "V", 0x0, "Ljava.io.IOException;", NULL },
    { "startWithOrgApacheLuceneIndexIndexableField:withBoolean:", "start", "Z", 0x0, NULL, NULL },
    { "newTermWithInt:", "newTerm", "V", 0x400, "Ljava.io.IOException;", NULL },
    { "addTermWithInt:", "addTerm", "V", 0x400, "Ljava.io.IOException;", NULL },
    { "newPostingsArray", NULL, "V", 0x400, NULL, NULL },
    { "createPostingsArrayWithInt:", "createPostingsArray", "Lorg.apache.lucene.index.ParallelPostingsArray;", 0x400, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HASH_INIT_SIZE", "HASH_INIT_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexTermsHashPerField_HASH_INIT_SIZE },
    { "termsHash_", NULL, 0x10, "Lorg.apache.lucene.index.TermsHash;", NULL, NULL, .constantValue.asLong = 0 },
    { "nextPerField_", NULL, 0x10, "Lorg.apache.lucene.index.TermsHashPerField;", NULL, NULL, .constantValue.asLong = 0 },
    { "docState_", NULL, 0x14, "Lorg.apache.lucene.index.DocumentsWriterPerThread$DocState;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldState_", NULL, 0x14, "Lorg.apache.lucene.index.FieldInvertState;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x0, "Lorg.apache.lucene.analysis.tokenattributes.TermToBytesRefAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "intPool_", NULL, 0x10, "Lorg.apache.lucene.util.IntBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytePool_", NULL, 0x10, "Lorg.apache.lucene.util.ByteBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "termBytePool_", NULL, 0x10, "Lorg.apache.lucene.util.ByteBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "streamCount_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "numPostingInt_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldInfo_", NULL, 0x14, "Lorg.apache.lucene.index.FieldInfo;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesHash_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRefHash;", NULL, NULL, .constantValue.asLong = 0 },
    { "postingsArray_", NULL, 0x0, "Lorg.apache.lucene.index.ParallelPostingsArray;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsed_", NULL, 0x12, "Lorg.apache.lucene.util.Counter;", NULL, NULL, .constantValue.asLong = 0 },
    { "sortedTermIDs_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "doNextCall_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "intUptos_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "intUptoStart_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.TermsHashPerField$PostingsBytesStartArray;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsHashPerField = { 2, "TermsHashPerField", "org.apache.lucene.index", NULL, 0x400, 16, methods, 19, fields, 0, NULL, 1, inner_classes, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/index/TermsHashPerField;>;" };
  return &_OrgApacheLuceneIndexTermsHashPerField;
}

@end

void OrgApacheLuceneIndexTermsHashPerField_initWithInt_withOrgApacheLuceneIndexFieldInvertState_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexTermsHashPerField *self, jint streamCount, OrgApacheLuceneIndexFieldInvertState *fieldState, OrgApacheLuceneIndexTermsHash *termsHash, OrgApacheLuceneIndexTermsHashPerField *nextPerField, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  NSObject_init(self);
  JreStrongAssign(&self->intPool_, ((OrgApacheLuceneIndexTermsHash *) nil_chk(termsHash))->intPool_);
  JreStrongAssign(&self->bytePool_, termsHash->bytePool_);
  JreStrongAssign(&self->termBytePool_, termsHash->termBytePool_);
  JreStrongAssign(&self->docState_, termsHash->docState_);
  JreStrongAssign(&self->termsHash_, termsHash);
  JreStrongAssign(&self->bytesUsed_, termsHash->bytesUsed_);
  JreStrongAssign(&self->fieldState_, fieldState);
  self->streamCount_ = streamCount;
  self->numPostingInt_ = 2 * streamCount;
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  JreStrongAssign(&self->nextPerField_, nextPerField);
  OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray *byteStarts = create_OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(self, self->bytesUsed_);
  JreStrongAssignAndConsume(&self->bytesHash_, new_OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(self->termBytePool_, OrgApacheLuceneIndexTermsHashPerField_HASH_INIT_SIZE, byteStarts));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsHashPerField)

@implementation OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)perField
                               withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed {
  OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(self, perField, bytesUsed);
  return self;
}

- (IOSIntArray *)init__ {
  if (((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(perField_))->postingsArray_ == nil) {
    JreStrongAssign(&perField_->postingsArray_, [perField_ createPostingsArrayWithInt:2]);
    [perField_ newPostingsArray];
    [((OrgApacheLuceneUtilCounter *) nil_chk(bytesUsed_)) addAndGetWithLong:((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(perField_->postingsArray_))->size_ * [perField_->postingsArray_ bytesPerPosting]];
  }
  return ((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(perField_->postingsArray_))->textStarts_;
}

- (IOSIntArray *)grow {
  OrgApacheLuceneIndexParallelPostingsArray *postingsArray = ((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(perField_))->postingsArray_;
  jint oldSize = ((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(perField_->postingsArray_))->size_;
  postingsArray = JreStrongAssign(&perField_->postingsArray_, [((OrgApacheLuceneIndexParallelPostingsArray *) nil_chk(postingsArray)) grow]);
  [perField_ newPostingsArray];
  [((OrgApacheLuceneUtilCounter *) nil_chk(bytesUsed_)) addAndGetWithLong:([postingsArray bytesPerPosting] * (postingsArray->size_ - oldSize))];
  return postingsArray->textStarts_;
}

- (IOSIntArray *)clear {
  if (((OrgApacheLuceneIndexTermsHashPerField *) nil_chk(perField_))->postingsArray_ != nil) {
    [((OrgApacheLuceneUtilCounter *) nil_chk(bytesUsed_)) addAndGetWithLong:-(perField_->postingsArray_->size_ * [perField_->postingsArray_ bytesPerPosting])];
    JreStrongAssign(&perField_->postingsArray_, nil);
    [perField_ newPostingsArray];
  }
  return nil;
}

- (OrgApacheLuceneUtilCounter *)bytesUsed {
  return bytesUsed_;
}

- (void)dealloc {
  RELEASE_(perField_);
  RELEASE_(bytesUsed_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTermsHashPerField:withOrgApacheLuceneUtilCounter:", "PostingsBytesStartArray", NULL, 0x2, NULL, NULL },
    { "init__", "init", "[I", 0x1, NULL, NULL },
    { "grow", NULL, "[I", 0x1, NULL, NULL },
    { "clear", NULL, "[I", 0x1, NULL, NULL },
    { "bytesUsed", NULL, "Lorg.apache.lucene.util.Counter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "perField_", NULL, 0x12, "Lorg.apache.lucene.index.TermsHashPerField;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsed_", NULL, 0x12, "Lorg.apache.lucene.util.Counter;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray = { 2, "PostingsBytesStartArray", "org.apache.lucene.index", "TermsHashPerField", 0x1a, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray;
}

@end

void OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray *self, OrgApacheLuceneIndexTermsHashPerField *perField, OrgApacheLuceneUtilCounter *bytesUsed) {
  OrgApacheLuceneUtilBytesRefHash_BytesStartArray_init(self);
  JreStrongAssign(&self->perField_, perField);
  JreStrongAssign(&self->bytesUsed_, bytesUsed);
}

OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray *new_OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexTermsHashPerField *perField, OrgApacheLuceneUtilCounter *bytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray, initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_, perField, bytesUsed)
}

OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray *create_OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneIndexTermsHashPerField *perField, OrgApacheLuceneUtilCounter *bytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray, initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneUtilCounter_, perField, bytesUsed)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsHashPerField_PostingsBytesStartArray)