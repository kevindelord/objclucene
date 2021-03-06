//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/PostingsWriterBase.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/BlockTermState.h"
#include "org/apache/lucene/codecs/PostingsWriterBase.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/FixedBitSet.h"

@implementation OrgApacheLuceneCodecsPostingsWriterBase

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsPostingsWriterBase_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)termsOut
        withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsBlockTermState *)writeTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                                withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum
                                               withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)docsSeen {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)encodeTermWithLongArray:(IOSLongArray *)longs
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)state
                    withBoolean:(jboolean)absolute {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jint)setFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PostingsWriterBase", NULL, 0x4, NULL, NULL },
    { "init__WithOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneIndexSegmentWriteState:", "init", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "writeTermWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermsEnum:withOrgApacheLuceneUtilFixedBitSet:", "writeTerm", "Lorg.apache.lucene.codecs.BlockTermState;", 0x401, "Ljava.io.IOException;", NULL },
    { "encodeTermWithLongArray:withOrgApacheLuceneStoreDataOutput:withOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneCodecsBlockTermState:withBoolean:", "encodeTerm", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "setFieldWithOrgApacheLuceneIndexFieldInfo:", "setField", "I", 0x401, NULL, NULL },
    { "close", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsPostingsWriterBase = { 2, "PostingsWriterBase", "org.apache.lucene.codecs", NULL, 0x401, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsPostingsWriterBase;
}

@end

void OrgApacheLuceneCodecsPostingsWriterBase_init(OrgApacheLuceneCodecsPostingsWriterBase *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsPostingsWriterBase)
