//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ArrayTimSorter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilArrayTimSorter")
#ifdef RESTRICT_OrgApacheLuceneUtilArrayTimSorter
#define INCLUDE_ALL_OrgApacheLuceneUtilArrayTimSorter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilArrayTimSorter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilArrayTimSorter

#if !defined (OrgApacheLuceneUtilArrayTimSorter_) && (INCLUDE_ALL_OrgApacheLuceneUtilArrayTimSorter || defined(INCLUDE_OrgApacheLuceneUtilArrayTimSorter))
#define OrgApacheLuceneUtilArrayTimSorter_

#define RESTRICT_OrgApacheLuceneUtilTimSorter 1
#define INCLUDE_OrgApacheLuceneUtilTimSorter 1
#include "org/apache/lucene/util/TimSorter.h"

@class IOSObjectArray;
@protocol JavaUtilComparator;

/*!
 @brief A <code>TimSorter</code> for object arrays.
 */
@interface OrgApacheLuceneUtilArrayTimSorter : OrgApacheLuceneUtilTimSorter

#pragma mark Public

/*!
 @brief Create a new <code>ArrayTimSorter</code>.
 */
- (instancetype)initWithNSObjectArray:(IOSObjectArray *)arr
               withJavaUtilComparator:(id<JavaUtilComparator>)comparator
                              withInt:(jint)maxTempSlots;

#pragma mark Protected

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (jint)compareSavedWithInt:(jint)i
                    withInt:(jint)j;

- (void)copy__WithInt:(jint)src
              withInt:(jint)dest OBJC_METHOD_FAMILY_NONE;

- (void)restoreWithInt:(jint)src
               withInt:(jint)dest;

- (void)saveWithInt:(jint)start
            withInt:(jint)len;

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilArrayTimSorter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilArrayTimSorter_initWithNSObjectArray_withJavaUtilComparator_withInt_(OrgApacheLuceneUtilArrayTimSorter *self, IOSObjectArray *arr, id<JavaUtilComparator> comparator, jint maxTempSlots);

FOUNDATION_EXPORT OrgApacheLuceneUtilArrayTimSorter *new_OrgApacheLuceneUtilArrayTimSorter_initWithNSObjectArray_withJavaUtilComparator_withInt_(IOSObjectArray *arr, id<JavaUtilComparator> comparator, jint maxTempSlots) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilArrayTimSorter *create_OrgApacheLuceneUtilArrayTimSorter_initWithNSObjectArray_withJavaUtilComparator_withInt_(IOSObjectArray *arr, id<JavaUtilComparator> comparator, jint maxTempSlots);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilArrayTimSorter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilArrayTimSorter")
