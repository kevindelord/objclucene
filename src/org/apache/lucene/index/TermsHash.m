//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TermsHash.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/DocumentsWriterPerThread.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermsHash.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/util/ByteBlockPool.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/IntBlockPool.h"

@implementation OrgApacheLuceneIndexTermsHash

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)docWriter
                                                         withBoolean:(jboolean)trackAllocations
                                   withOrgApacheLuceneIndexTermsHash:(OrgApacheLuceneIndexTermsHash *)nextTermsHash {
  OrgApacheLuceneIndexTermsHash_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withBoolean_withOrgApacheLuceneIndexTermsHash_(self, docWriter, trackAllocations, nextTermsHash);
  return self;
}

- (void)abort {
  @try {
    [self reset];
  }
  @finally {
    if (nextTermsHash_ != nil) {
      [nextTermsHash_ abort];
    }
  }
}

- (void)reset {
  [((OrgApacheLuceneUtilIntBlockPool *) nil_chk(intPool_)) resetWithBoolean:false withBoolean:false];
  [((OrgApacheLuceneUtilByteBlockPool *) nil_chk(bytePool_)) resetWithBoolean:false withBoolean:false];
}

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)fieldsToFlush
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  if (nextTermsHash_ != nil) {
    id<JavaUtilMap> nextChildFields = create_JavaUtilHashMap_init();
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(fieldsToFlush)) entrySet])) {
      [nextChildFields putWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey] withId:((OrgApacheLuceneIndexTermsHashPerField *) nil_chk([entry_ getValue]))->nextPerField_];
    }
    [nextTermsHash_ flushWithJavaUtilMap:nextChildFields withOrgApacheLuceneIndexSegmentWriteState:state];
  }
}

- (OrgApacheLuceneIndexTermsHashPerField *)addFieldWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)fieldInvertState
                                                          withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)finishDocument {
  if (nextTermsHash_ != nil) {
    [nextTermsHash_ finishDocument];
  }
}

- (void)startDocument {
  if (nextTermsHash_ != nil) {
    [nextTermsHash_ startDocument];
  }
}

- (void)dealloc {
  RELEASE_(nextTermsHash_);
  RELEASE_(intPool_);
  RELEASE_(bytePool_);
  RELEASE_(termBytePool_);
  RELEASE_(bytesUsed_);
  RELEASE_(docState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexDocumentsWriterPerThread:withBoolean:withOrgApacheLuceneIndexTermsHash:", "TermsHash", NULL, 0x0, NULL, NULL },
    { "abort", NULL, "V", 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x0, NULL, NULL },
    { "flushWithJavaUtilMap:withOrgApacheLuceneIndexSegmentWriteState:", "flush", "V", 0x0, "Ljava.io.IOException;", "(Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/TermsHashPerField;>;Lorg/apache/lucene/index/SegmentWriteState;)V" },
    { "addFieldWithOrgApacheLuceneIndexFieldInvertState:withOrgApacheLuceneIndexFieldInfo:", "addField", "Lorg.apache.lucene.index.TermsHashPerField;", 0x400, NULL, NULL },
    { "finishDocument", NULL, "V", 0x0, "Ljava.io.IOException;", NULL },
    { "startDocument", NULL, "V", 0x0, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "nextTermsHash_", NULL, 0x10, "Lorg.apache.lucene.index.TermsHash;", NULL, NULL, .constantValue.asLong = 0 },
    { "intPool_", NULL, 0x10, "Lorg.apache.lucene.util.IntBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytePool_", NULL, 0x10, "Lorg.apache.lucene.util.ByteBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "termBytePool_", NULL, 0x0, "Lorg.apache.lucene.util.ByteBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsed_", NULL, 0x10, "Lorg.apache.lucene.util.Counter;", NULL, NULL, .constantValue.asLong = 0 },
    { "docState_", NULL, 0x10, "Lorg.apache.lucene.index.DocumentsWriterPerThread$DocState;", NULL, NULL, .constantValue.asLong = 0 },
    { "trackAllocations_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsHash = { 2, "TermsHash", "org.apache.lucene.index", NULL, 0x400, 7, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexTermsHash;
}

@end

void OrgApacheLuceneIndexTermsHash_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withBoolean_withOrgApacheLuceneIndexTermsHash_(OrgApacheLuceneIndexTermsHash *self, OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter, jboolean trackAllocations, OrgApacheLuceneIndexTermsHash *nextTermsHash) {
  NSObject_init(self);
  JreStrongAssign(&self->docState_, ((OrgApacheLuceneIndexDocumentsWriterPerThread *) nil_chk(docWriter))->docState_);
  self->trackAllocations_ = trackAllocations;
  JreStrongAssign(&self->nextTermsHash_, nextTermsHash);
  JreStrongAssign(&self->bytesUsed_, trackAllocations ? docWriter->bytesUsed_ : OrgApacheLuceneUtilCounter_newCounter());
  JreStrongAssignAndConsume(&self->intPool_, new_OrgApacheLuceneUtilIntBlockPool_initWithOrgApacheLuceneUtilIntBlockPool_Allocator_(docWriter->intBlockAllocator_));
  JreStrongAssignAndConsume(&self->bytePool_, new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(docWriter->byteBlockAllocator_));
  if (nextTermsHash != nil) {
    JreStrongAssign(&self->termBytePool_, self->bytePool_);
    JreStrongAssign(&nextTermsHash->termBytePool_, self->bytePool_);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsHash)
