//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ByteBlockPool.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/ByteBlockPool.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneUtilByteBlockPool () {
 @public
  /*!
   @brief index into the buffers array pointing to the current buffer used as the head
   */
  jint bufferUpto_;
  OrgApacheLuceneUtilByteBlockPool_Allocator *allocator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool, allocator_, OrgApacheLuceneUtilByteBlockPool_Allocator *)

@interface OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator () {
 @public
  OrgApacheLuceneUtilCounter *bytesUsed_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, bytesUsed_, OrgApacheLuceneUtilCounter *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilByteBlockPool)

IOSIntArray *OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY;
IOSIntArray *OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY;
jint OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE;

@implementation OrgApacheLuceneUtilByteBlockPool

+ (jint)BYTE_BLOCK_SHIFT {
  return OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT;
}

+ (jint)BYTE_BLOCK_SIZE {
  return OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
}

+ (jint)BYTE_BLOCK_MASK {
  return OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK;
}

+ (IOSIntArray *)NEXT_LEVEL_ARRAY {
  return OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY;
}

+ (IOSIntArray *)LEVEL_SIZE_ARRAY {
  return OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY;
}

+ (jint)FIRST_LEVEL_SIZE {
  return OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE;
}

- (instancetype)initWithOrgApacheLuceneUtilByteBlockPool_Allocator:(OrgApacheLuceneUtilByteBlockPool_Allocator *)allocator {
  OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(self, allocator);
  return self;
}

- (void)reset {
  [self resetWithBoolean:true withBoolean:true];
}

- (void)resetWithBoolean:(jboolean)zeroFillBuffers
             withBoolean:(jboolean)reuseFirst {
  if (bufferUpto_ != -1) {
    if (zeroFillBuffers) {
      for (jint i = 0; i < bufferUpto_; i++) {
        JavaUtilArrays_fillWithByteArray_withByte_(IOSObjectArray_Get(nil_chk(buffers_), i), (jbyte) 0);
      }
      JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(IOSObjectArray_Get(nil_chk(buffers_), bufferUpto_), 0, byteUpto_, (jbyte) 0);
    }
    if (bufferUpto_ > 0 || !reuseFirst) {
      jint offset = reuseFirst ? 1 : 0;
      [((OrgApacheLuceneUtilByteBlockPool_Allocator *) nil_chk(allocator_)) recycleByteBlocksWithByteArray2:buffers_ withInt:offset withInt:1 + bufferUpto_];
      JavaUtilArrays_fillWithNSObjectArray_withInt_withInt_withId_(buffers_, offset, 1 + bufferUpto_, nil);
    }
    if (reuseFirst) {
      bufferUpto_ = 0;
      byteUpto_ = 0;
      byteOffset_ = 0;
      JreStrongAssign(&buffer_, IOSObjectArray_Get(nil_chk(buffers_), 0));
    }
    else {
      bufferUpto_ = -1;
      byteUpto_ = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
      byteOffset_ = -OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
      JreStrongAssign(&buffer_, nil);
    }
  }
}

- (void)nextBuffer {
  if (1 + bufferUpto_ == ((IOSObjectArray *) nil_chk(buffers_))->size_) {
    IOSObjectArray *newBuffers = [IOSObjectArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(buffers_->size_ + 1, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:IOSClass_byteArray(1)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffers_, 0, newBuffers, 0, ((IOSObjectArray *) nil_chk(buffers_))->size_);
    JreStrongAssign(&buffers_, newBuffers);
  }
  JreStrongAssign(&buffer_, IOSObjectArray_Set(buffers_, 1 + bufferUpto_, [((OrgApacheLuceneUtilByteBlockPool_Allocator *) nil_chk(allocator_)) getByteBlock]));
  bufferUpto_++;
  byteUpto_ = 0;
  byteOffset_ += OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
}

- (jint)newSliceWithInt:(jint)size {
  if (byteUpto_ > OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE - size) [self nextBuffer];
  jint upto = byteUpto_;
  byteUpto_ += size;
  *IOSByteArray_GetRef(nil_chk(buffer_), byteUpto_ - 1) = 16;
  return upto;
}

- (jint)allocSliceWithByteArray:(IOSByteArray *)slice
                        withInt:(jint)upto {
  jint level = IOSByteArray_Get(nil_chk(slice), upto) & 15;
  jint newLevel = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY), level);
  jint newSize = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY), newLevel);
  if (byteUpto_ > OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE - newSize) {
    [self nextBuffer];
  }
  jint newUpto = byteUpto_;
  jint offset = newUpto + byteOffset_;
  byteUpto_ += newSize;
  *IOSByteArray_GetRef(nil_chk(buffer_), newUpto) = IOSByteArray_Get(slice, upto - 3);
  *IOSByteArray_GetRef(buffer_, newUpto + 1) = IOSByteArray_Get(slice, upto - 2);
  *IOSByteArray_GetRef(buffer_, newUpto + 2) = IOSByteArray_Get(slice, upto - 1);
  *IOSByteArray_GetRef(slice, upto - 3) = (jbyte) (JreURShift32(offset, 24));
  *IOSByteArray_GetRef(slice, upto - 2) = (jbyte) (JreURShift32(offset, 16));
  *IOSByteArray_GetRef(slice, upto - 1) = (jbyte) (JreURShift32(offset, 8));
  *IOSByteArray_GetRef(slice, upto) = (jbyte) offset;
  *IOSByteArray_GetRef(buffer_, byteUpto_ - 1) = (jbyte) (16 | newLevel);
  return newUpto + 3;
}

- (void)setBytesRefWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                           withInt:(jint)textStart {
  IOSByteArray *bytes = JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(term))->bytes_, IOSObjectArray_Get(nil_chk(buffers_), JreRShift32(textStart, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT)));
  jint pos = textStart & OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK;
  if ((IOSByteArray_Get(bytes, pos) & (jint) 0x80) == 0) {
    term->length_ = IOSByteArray_Get(bytes, pos);
    term->offset_ = pos + 1;
  }
  else {
    term->length_ = (IOSByteArray_Get(bytes, pos) & (jint) 0x7f) + (JreLShift32((IOSByteArray_Get(bytes, pos + 1) & (jint) 0xff), 7));
    term->offset_ = pos + 2;
  }
  JreAssert((term->length_ >= 0), (@"org/apache/lucene/util/ByteBlockPool.java:296 condition failed: assert term.length >= 0;"));
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  jint length = ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_;
  if (length == 0) {
    return;
  }
  jint offset = bytes->offset_;
  jint overflow = (length + byteUpto_) - OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  do {
    if (overflow <= 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, offset, buffer_, byteUpto_, length);
      byteUpto_ += length;
      break;
    }
    else {
      jint bytesToCopy = length - overflow;
      if (bytesToCopy > 0) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, offset, buffer_, byteUpto_, bytesToCopy);
        offset += bytesToCopy;
        length -= bytesToCopy;
      }
      [self nextBuffer];
      overflow = overflow - OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
    }
  }
  while (true);
}

- (void)readBytesWithLong:(jlong)offset
            withByteArray:(IOSByteArray *)bytes
                  withInt:(jint)off
                  withInt:(jint)length {
  if (length == 0) {
    return;
  }
  jint bytesOffset = off;
  jint bytesLength = length;
  jint bufferIndex = (jint) (JreRShift64(offset, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT));
  IOSByteArray *buffer = IOSObjectArray_Get(nil_chk(buffers_), bufferIndex);
  jint pos = (jint) (offset & OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK);
  jint overflow = (pos + length) - OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  do {
    if (overflow <= 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, pos, bytes, bytesOffset, bytesLength);
      break;
    }
    else {
      jint bytesToCopy = length - overflow;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, pos, bytes, bytesOffset, bytesToCopy);
      pos = 0;
      bytesLength -= bytesToCopy;
      bytesOffset += bytesToCopy;
      buffer = IOSObjectArray_Get(nil_chk(buffers_), ++bufferIndex);
      overflow = overflow - OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
    }
  }
  while (true);
}

- (void)dealloc {
  RELEASE_(buffers_);
  RELEASE_(buffer_);
  RELEASE_(allocator_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilByteBlockPool class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY, [IOSIntArray newArrayWithInts:(jint[]){ 1, 2, 3, 4, 5, 6, 7, 8, 9, 9 } count:10]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY, [IOSIntArray newArrayWithInts:(jint[]){ 5, 14, 20, 30, 40, 40, 80, 80, 120, 200 } count:10]);
    OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE = IOSIntArray_Get(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY, 0);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilByteBlockPool)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilByteBlockPool_Allocator:", "ByteBlockPool", NULL, 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "resetWithBoolean:withBoolean:", "reset", "V", 0x1, NULL, NULL },
    { "nextBuffer", NULL, "V", 0x1, NULL, NULL },
    { "newSliceWithInt:", "newSlice", "I", 0x1, NULL, NULL },
    { "allocSliceWithByteArray:withInt:", "allocSlice", "I", 0x1, NULL, NULL },
    { "setBytesRefWithOrgApacheLuceneUtilBytesRef:withInt:", "setBytesRef", "V", 0x1, NULL, NULL },
    { "appendWithOrgApacheLuceneUtilBytesRef:", "append", "V", 0x1, NULL, NULL },
    { "readBytesWithLong:withByteArray:withInt:withInt:", "readBytes", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BYTE_BLOCK_SHIFT", "BYTE_BLOCK_SHIFT", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT },
    { "BYTE_BLOCK_SIZE", "BYTE_BLOCK_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE },
    { "BYTE_BLOCK_MASK", "BYTE_BLOCK_MASK", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK },
    { "buffers_", NULL, 0x1, "[[B", NULL, NULL, .constantValue.asLong = 0 },
    { "bufferUpto_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "byteUpto_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x1, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "byteOffset_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "allocator_", NULL, 0x12, "Lorg.apache.lucene.util.ByteBlockPool$Allocator;", NULL, NULL, .constantValue.asLong = 0 },
    { "NEXT_LEVEL_ARRAY", "NEXT_LEVEL_ARRAY", 0x19, "[I", &OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY, NULL, .constantValue.asLong = 0 },
    { "LEVEL_SIZE_ARRAY", "LEVEL_SIZE_ARRAY", 0x19, "[I", &OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY, NULL, .constantValue.asLong = 0 },
    { "FIRST_LEVEL_SIZE", "FIRST_LEVEL_SIZE", 0x19, "I", &OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.ByteBlockPool$Allocator;", "Lorg.apache.lucene.util.ByteBlockPool$DirectAllocator;", "Lorg.apache.lucene.util.ByteBlockPool$DirectTrackingAllocator;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool = { 2, "ByteBlockPool", "org.apache.lucene.util", NULL, 0x11, 9, methods, 12, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilByteBlockPool;
}

@end

void OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool *self, OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, [IOSObjectArray newArrayWithLength:10 type:IOSClass_byteArray(1)]);
  self->bufferUpto_ = -1;
  self->byteUpto_ = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  self->byteOffset_ = -OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  JreStrongAssign(&self->allocator_, allocator);
}

OrgApacheLuceneUtilByteBlockPool *new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool, initWithOrgApacheLuceneUtilByteBlockPool_Allocator_, allocator)
}

OrgApacheLuceneUtilByteBlockPool *create_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool, initWithOrgApacheLuceneUtilByteBlockPool_Allocator_, allocator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool)

@implementation OrgApacheLuceneUtilByteBlockPool_Allocator

- (instancetype)initWithInt:(jint)blockSize {
  OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(self, blockSize);
  return self;
}

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)recycleByteBlocksWithJavaUtilList:(id<JavaUtilList>)blocks {
  IOSObjectArray *b = [((id<JavaUtilList>) nil_chk(blocks)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[blocks size] type:IOSClass_byteArray(1)]];
  [self recycleByteBlocksWithByteArray2:b withInt:0 withInt:((IOSObjectArray *) nil_chk(b))->size_];
}

- (IOSByteArray *)getByteBlock {
  return [IOSByteArray arrayWithLength:blockSize_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "Allocator", NULL, 0x1, NULL, NULL },
    { "recycleByteBlocksWithByteArray2:withInt:withInt:", "recycleByteBlocks", "V", 0x401, NULL, NULL },
    { "recycleByteBlocksWithJavaUtilList:", "recycleByteBlocks", "V", 0x1, NULL, "(Ljava/util/List<[LB;>;)V" },
    { "getByteBlock", NULL, "[B", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "blockSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool_Allocator = { 2, "Allocator", "org.apache.lucene.util", "ByteBlockPool", 0x409, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilByteBlockPool_Allocator;
}

@end

void OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_Allocator *self, jint blockSize) {
  NSObject_init(self);
  self->blockSize_ = blockSize;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool_Allocator)

@implementation OrgApacheLuceneUtilByteBlockPool_DirectAllocator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)blockSize {
  OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(self, blockSize);
  return self;
}

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DirectAllocator", NULL, 0x1, NULL, NULL },
    { "initWithInt:", "DirectAllocator", NULL, 0x1, NULL, NULL },
    { "recycleByteBlocksWithByteArray2:withInt:withInt:", "recycleByteBlocks", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool_DirectAllocator = { 2, "DirectAllocator", "org.apache.lucene.util", "ByteBlockPool", 0x19, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilByteBlockPool_DirectAllocator;
}

@end

void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self) {
  OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(self, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE);
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, init)
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, init)
}

void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self, jint blockSize) {
  OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(self, blockSize);
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(jint blockSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, initWithInt_, blockSize)
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(jint blockSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, initWithInt_, blockSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool_DirectAllocator)

@implementation OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator

- (instancetype)initWithOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed {
  OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(self, bytesUsed);
  return self;
}

- (instancetype)initWithInt:(jint)blockSize
withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed {
  OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(self, blockSize, bytesUsed);
  return self;
}

- (IOSByteArray *)getByteBlock {
  [((OrgApacheLuceneUtilCounter *) nil_chk(bytesUsed_)) addAndGetWithLong:blockSize_];
  return [IOSByteArray arrayWithLength:blockSize_];
}

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end {
  [((OrgApacheLuceneUtilCounter *) nil_chk(bytesUsed_)) addAndGetWithLong:-((end - start) * blockSize_)];
  for (jint i = start; i < end; i++) {
    IOSObjectArray_Set(nil_chk(blocks), i, nil);
  }
}

- (void)dealloc {
  RELEASE_(bytesUsed_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilCounter:", "DirectTrackingAllocator", NULL, 0x1, NULL, NULL },
    { "initWithInt:withOrgApacheLuceneUtilCounter:", "DirectTrackingAllocator", NULL, 0x1, NULL, NULL },
    { "getByteBlock", NULL, "[B", 0x1, NULL, NULL },
    { "recycleByteBlocksWithByteArray2:withInt:withInt:", "recycleByteBlocks", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bytesUsed_", NULL, 0x12, "Lorg.apache.lucene.util.Counter;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator = { 2, "DirectTrackingAllocator", "org.apache.lucene.util", "ByteBlockPool", 0x9, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator;
}

@end

void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, OrgApacheLuceneUtilCounter *bytesUsed) {
  OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(self, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE, bytesUsed);
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithOrgApacheLuceneUtilCounter_, bytesUsed)
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithOrgApacheLuceneUtilCounter_, bytesUsed)
}

void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed) {
  OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(self, blockSize);
  JreStrongAssign(&self->bytesUsed_, bytesUsed);
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithInt_withOrgApacheLuceneUtilCounter_, blockSize, bytesUsed)
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithInt_withOrgApacheLuceneUtilCounter_, blockSize, bytesUsed)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)