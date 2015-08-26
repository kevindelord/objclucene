//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ArrayInPlaceMergeSorter.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Comparator.h"
#include "org/apache/lucene/util/ArrayInPlaceMergeSorter.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/InPlaceMergeSorter.h"

@interface OrgApacheLuceneUtilArrayInPlaceMergeSorter () {
 @public
  IOSObjectArray *arr_;
  id<JavaUtilComparator> comparator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilArrayInPlaceMergeSorter, arr_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilArrayInPlaceMergeSorter, comparator_, id<JavaUtilComparator>)

@implementation OrgApacheLuceneUtilArrayInPlaceMergeSorter

- (instancetype)initWithNSObjectArray:(IOSObjectArray *)arr
               withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  OrgApacheLuceneUtilArrayInPlaceMergeSorter_initWithNSObjectArray_withJavaUtilComparator_(self, arr, comparator);
  return self;
}

- (jint)compareWithInt:(jint)i
               withInt:(jint)j {
  return [((id<JavaUtilComparator>) nil_chk(comparator_)) compareWithId:IOSObjectArray_Get(nil_chk(arr_), i) withId:IOSObjectArray_Get(arr_, j)];
}

- (void)swapWithInt:(jint)i
            withInt:(jint)j {
  OrgApacheLuceneUtilArrayUtil_swapWithNSObjectArray_withInt_withInt_(arr_, i, j);
}

- (void)dealloc {
  RELEASE_(arr_);
  RELEASE_(comparator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSObjectArray:withJavaUtilComparator:", "ArrayInPlaceMergeSorter", NULL, 0x1, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x4, NULL, NULL },
    { "swapWithInt:withInt:", "swap", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "arr_", NULL, 0x12, "[Ljava.lang.Object;", NULL, "[TT;", .constantValue.asLong = 0 },
    { "comparator_", NULL, 0x12, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<-TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilArrayInPlaceMergeSorter = { 2, "ArrayInPlaceMergeSorter", "org.apache.lucene.util", NULL, 0x10, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lorg/apache/lucene/util/InPlaceMergeSorter;" };
  return &_OrgApacheLuceneUtilArrayInPlaceMergeSorter;
}

@end

void OrgApacheLuceneUtilArrayInPlaceMergeSorter_initWithNSObjectArray_withJavaUtilComparator_(OrgApacheLuceneUtilArrayInPlaceMergeSorter *self, IOSObjectArray *arr, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneUtilInPlaceMergeSorter_init(self);
  JreStrongAssign(&self->arr_, arr);
  JreStrongAssign(&self->comparator_, comparator);
}

OrgApacheLuceneUtilArrayInPlaceMergeSorter *new_OrgApacheLuceneUtilArrayInPlaceMergeSorter_initWithNSObjectArray_withJavaUtilComparator_(IOSObjectArray *arr, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneUtilArrayInPlaceMergeSorter *self = [OrgApacheLuceneUtilArrayInPlaceMergeSorter alloc];
  OrgApacheLuceneUtilArrayInPlaceMergeSorter_initWithNSObjectArray_withJavaUtilComparator_(self, arr, comparator);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilArrayInPlaceMergeSorter)