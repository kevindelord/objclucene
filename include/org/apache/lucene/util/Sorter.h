//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Sorter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilSorter_INCLUDE_ALL")
#if OrgApacheLuceneUtilSorter_RESTRICT
#define OrgApacheLuceneUtilSorter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilSorter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilSorter_RESTRICT

#if !defined (_OrgApacheLuceneUtilSorter_) && (OrgApacheLuceneUtilSorter_INCLUDE_ALL || OrgApacheLuceneUtilSorter_INCLUDE)
#define _OrgApacheLuceneUtilSorter_

#define OrgApacheLuceneUtilSorter_THRESHOLD 20

@interface OrgApacheLuceneUtilSorter : NSObject

#pragma mark Public

- (void)sortWithInt:(jint)from
            withInt:(jint)to;

#pragma mark Protected

- (instancetype)init;

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

#pragma mark Package-Private

- (void)binarySortWithInt:(jint)from
                  withInt:(jint)to;

- (void)binarySortWithInt:(jint)from
                  withInt:(jint)to
                  withInt:(jint)i;

- (void)checkRangeWithInt:(jint)from
                  withInt:(jint)to;

- (void)doRotateWithInt:(jint)lo
                withInt:(jint)mid
                withInt:(jint)hi;

+ (jint)heapChildWithInt:(jint)from
                 withInt:(jint)i;

- (void)heapifyWithInt:(jint)from
               withInt:(jint)to;

+ (jint)heapParentWithInt:(jint)from
                  withInt:(jint)i;

- (void)heapSortWithInt:(jint)from
                withInt:(jint)to;

- (void)insertionSortWithInt:(jint)from
                     withInt:(jint)to;

- (jint)lowerWithInt:(jint)from
             withInt:(jint)to
             withInt:(jint)val;

- (jint)lower2WithInt:(jint)from
              withInt:(jint)to
              withInt:(jint)val;

- (void)mergeInPlaceWithInt:(jint)from
                    withInt:(jint)mid
                    withInt:(jint)to;

- (void)reverseWithInt:(jint)from
               withInt:(jint)to;

- (void)rotateWithInt:(jint)lo
              withInt:(jint)mid
              withInt:(jint)hi;

- (void)siftDownWithInt:(jint)i
                withInt:(jint)from
                withInt:(jint)to;

- (jint)upperWithInt:(jint)from
             withInt:(jint)to
             withInt:(jint)val;

- (jint)upper2WithInt:(jint)from
              withInt:(jint)to
              withInt:(jint)val;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilSorter)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilSorter, THRESHOLD, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilSorter_init(OrgApacheLuceneUtilSorter *self);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilSorter_heapParentWithInt_withInt_(jint from, jint i);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilSorter_heapChildWithInt_withInt_(jint from, jint i);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSorter)

#endif

#pragma pop_macro("OrgApacheLuceneUtilSorter_INCLUDE_ALL")