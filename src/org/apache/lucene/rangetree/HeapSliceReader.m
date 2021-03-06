//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/HeapSliceReader.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/rangetree/HeapSliceReader.h"

@interface OrgApacheLuceneRangetreeHeapSliceReader () {
 @public
  jint curRead_;
}

@end

@implementation OrgApacheLuceneRangetreeHeapSliceReader

- (instancetype)initWithLongArray:(IOSLongArray *)values
                    withLongArray:(IOSLongArray *)ords
                     withIntArray:(IOSIntArray *)docIDs
                          withInt:(jint)start
                          withInt:(jint)end {
  OrgApacheLuceneRangetreeHeapSliceReader_initWithLongArray_withLongArray_withIntArray_withInt_withInt_(self, values, ords, docIDs, start, end);
  return self;
}

- (jboolean)next {
  curRead_++;
  return curRead_ < end_;
}

- (jlong)value {
  return IOSLongArray_Get(nil_chk(values_), curRead_);
}

- (jint)docID {
  return IOSIntArray_Get(nil_chk(docIDs_), curRead_);
}

- (jlong)ord {
  return IOSLongArray_Get(nil_chk(ords_), curRead_);
}

- (void)close {
}

- (void)dealloc {
  RELEASE_(values_);
  RELEASE_(ords_);
  RELEASE_(docIDs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLongArray:withLongArray:withIntArray:withInt:withInt:", "HeapSliceReader", NULL, 0x0, NULL, NULL },
    { "next", NULL, "Z", 0x1, NULL, NULL },
    { "value", NULL, "J", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "ord", NULL, "J", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "curRead_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "values_", NULL, 0x10, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "ords_", NULL, 0x10, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "docIDs_", NULL, 0x10, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "end_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeHeapSliceReader = { 2, "HeapSliceReader", "org.apache.lucene.rangetree", NULL, 0x10, 6, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneRangetreeHeapSliceReader;
}

@end

void OrgApacheLuceneRangetreeHeapSliceReader_initWithLongArray_withLongArray_withIntArray_withInt_withInt_(OrgApacheLuceneRangetreeHeapSliceReader *self, IOSLongArray *values, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) {
  NSObject_init(self);
  JreStrongAssign(&self->values_, values);
  JreStrongAssign(&self->ords_, ords);
  JreStrongAssign(&self->docIDs_, docIDs);
  self->curRead_ = start - 1;
  self->end_ = end;
}

OrgApacheLuceneRangetreeHeapSliceReader *new_OrgApacheLuceneRangetreeHeapSliceReader_initWithLongArray_withLongArray_withIntArray_withInt_withInt_(IOSLongArray *values, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeHeapSliceReader, initWithLongArray_withLongArray_withIntArray_withInt_withInt_, values, ords, docIDs, start, end)
}

OrgApacheLuceneRangetreeHeapSliceReader *create_OrgApacheLuceneRangetreeHeapSliceReader_initWithLongArray_withLongArray_withIntArray_withInt_withInt_(IOSLongArray *values, IOSLongArray *ords, IOSIntArray *docIDs, jint start, jint end) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeHeapSliceReader, initWithLongArray_withLongArray_withIntArray_withInt_withInt_, values, ords, docIDs, start, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeHeapSliceReader)
