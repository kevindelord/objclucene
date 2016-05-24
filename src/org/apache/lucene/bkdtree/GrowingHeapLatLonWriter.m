//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/GrowingHeapLatLonWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/bkdtree/GrowingHeapLatLonWriter.h"
#include "org/apache/lucene/bkdtree/HeapLatLonReader.h"
#include "org/apache/lucene/bkdtree/LatLonReader.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter () {
 @public
  jint nextWrite_;
}

- (IOSIntArray *)growExactWithIntArray:(IOSIntArray *)arr
                               withInt:(jint)size;

- (IOSLongArray *)growExactWithLongArray:(IOSLongArray *)arr
                                 withInt:(jint)size;

@end

__attribute__((unused)) static IOSIntArray *OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithIntArray_withInt_(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *self, IOSIntArray *arr, jint size);

__attribute__((unused)) static IOSLongArray *OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithLongArray_withInt_(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *self, IOSLongArray *arr, jint size);

@implementation OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter

- (instancetype)initWithInt:(jint)maxSize {
  OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(self, maxSize);
  return self;
}

- (IOSIntArray *)growExactWithIntArray:(IOSIntArray *)arr
                               withInt:(jint)size {
  return OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithIntArray_withInt_(self, arr, size);
}

- (IOSLongArray *)growExactWithLongArray:(IOSLongArray *)arr
                                 withInt:(jint)size {
  return OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithLongArray_withInt_(self, arr, size);
}

- (void)appendWithInt:(jint)latEnc
              withInt:(jint)lonEnc
             withLong:(jlong)ord
              withInt:(jint)docID {
  JreAssert((ord == nextWrite_), (@"org/apache/lucene/bkdtree/GrowingHeapLatLonWriter.java:55 condition failed: assert ord == nextWrite;"));
  if (((IOSIntArray *) nil_chk(latEncs_))->size_ == nextWrite_) {
    jint nextSize = JavaLangMath_minWithInt_withInt_(maxSize_, OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(nextWrite_ + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT));
    JreAssert((nextSize > nextWrite_), (JreStrcat("$I$I", @"nextSize=", nextSize, @" vs nextWrite=", nextWrite_)));
    JreStrongAssign(&latEncs_, OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithIntArray_withInt_(self, latEncs_, nextSize));
    JreStrongAssign(&lonEncs_, OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithIntArray_withInt_(self, lonEncs_, nextSize));
    JreStrongAssign(&ords_, OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithLongArray_withInt_(self, ords_, nextSize));
    JreStrongAssign(&docIDs_, OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithIntArray_withInt_(self, docIDs_, nextSize));
  }
  *IOSIntArray_GetRef(nil_chk(latEncs_), nextWrite_) = latEnc;
  *IOSIntArray_GetRef(nil_chk(lonEncs_), nextWrite_) = lonEnc;
  *IOSLongArray_GetRef(nil_chk(ords_), nextWrite_) = ord;
  *IOSIntArray_GetRef(nil_chk(docIDs_), nextWrite_) = docID;
  nextWrite_++;
}

- (id<OrgApacheLuceneBkdtreeLatLonReader>)getReaderWithLong:(jlong)start {
  return create_OrgApacheLuceneBkdtreeHeapLatLonReader_initWithIntArray_withIntArray_withLongArray_withIntArray_withInt_withInt_(latEncs_, lonEncs_, ords_, docIDs_, (jint) start, nextWrite_);
}

- (void)close {
}

- (void)destroy {
}

- (NSString *)description {
  return JreStrcat("$I$IC", @"GrowingHeapLatLonWriter(count=", nextWrite_, @" alloc=", ((IOSIntArray *) nil_chk(latEncs_))->size_, ')');
}

- (void)dealloc {
  RELEASE_(latEncs_);
  RELEASE_(lonEncs_);
  RELEASE_(docIDs_);
  RELEASE_(ords_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "GrowingHeapLatLonWriter", NULL, 0x1, NULL, NULL },
    { "growExactWithIntArray:withInt:", "growExact", "[I", 0x2, NULL, NULL },
    { "growExactWithLongArray:withInt:", "growExact", "[J", 0x2, NULL, NULL },
    { "appendWithInt:withInt:withLong:withInt:", "append", "V", 0x1, NULL, NULL },
    { "getReaderWithLong:", "getReader", "Lorg.apache.lucene.bkdtree.LatLonReader;", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "destroy", NULL, "V", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "latEncs_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "lonEncs_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "docIDs_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "ords_", NULL, 0x0, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "nextWrite_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxSize_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter = { 2, "GrowingHeapLatLonWriter", "org.apache.lucene.bkdtree", NULL, 0x10, 8, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter;
}

@end

void OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *self, jint maxSize) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->latEncs_, [IOSIntArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->lonEncs_, [IOSIntArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->docIDs_, [IOSIntArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->ords_, [IOSLongArray newArrayWithLength:16]);
  self->maxSize_ = maxSize;
}

OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *new_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(jint maxSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, initWithInt_, maxSize)
}

OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *create_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, initWithInt_, maxSize)
}

IOSIntArray *OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithIntArray_withInt_(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *self, IOSIntArray *arr, jint size) {
  JreAssert((size > ((IOSIntArray *) nil_chk(arr))->size_), (@"org/apache/lucene/bkdtree/GrowingHeapLatLonWriter.java:40 condition failed: assert size > arr.length;"));
  IOSIntArray *newArr = [IOSIntArray arrayWithLength:size];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(arr, 0, newArr, 0, arr->size_);
  return newArr;
}

IOSLongArray *OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_growExactWithLongArray_withInt_(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *self, IOSLongArray *arr, jint size) {
  JreAssert((size > ((IOSLongArray *) nil_chk(arr))->size_), (@"org/apache/lucene/bkdtree/GrowingHeapLatLonWriter.java:47 condition failed: assert size > arr.length;"));
  IOSLongArray *newArr = [IOSLongArray arrayWithLength:size];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(arr, 0, newArr, 0, arr->size_);
  return newArr;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter)