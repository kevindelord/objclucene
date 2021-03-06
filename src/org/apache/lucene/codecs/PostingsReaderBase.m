//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/PostingsReaderBase.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/BlockTermState.h"
#include "org/apache/lucene/codecs/PostingsReaderBase.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/IndexInput.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneCodecsPostingsReaderBase

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsPostingsReaderBase_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)termsIn
        withOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsBlockTermState *)newTermState {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)decodeTermWithLongArray:(IOSLongArray *)longs
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)state
                    withBoolean:(jboolean)absolute {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                        withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)state
                                           withOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                        withInt:(jint)flags {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)checkIntegrity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PostingsReaderBase", NULL, 0x4, NULL, NULL },
    { "init__WithOrgApacheLuceneStoreIndexInput:withOrgApacheLuceneIndexSegmentReadState:", "init", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "newTermState", NULL, "Lorg.apache.lucene.codecs.BlockTermState;", 0x401, "Ljava.io.IOException;", NULL },
    { "decodeTermWithLongArray:withOrgApacheLuceneStoreDataInput:withOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneCodecsBlockTermState:withBoolean:", "decodeTerm", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "postingsWithOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneCodecsBlockTermState:withOrgApacheLuceneIndexPostingsEnum:withInt:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x401, "Ljava.io.IOException;", NULL },
    { "checkIntegrity", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsPostingsReaderBase = { 2, "PostingsReaderBase", "org.apache.lucene.codecs", NULL, 0x401, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsPostingsReaderBase;
}

@end

void OrgApacheLuceneCodecsPostingsReaderBase_init(OrgApacheLuceneCodecsPostingsReaderBase *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsPostingsReaderBase)
