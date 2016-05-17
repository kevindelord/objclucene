//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BytesRefArray.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilBytesRefArray")
#ifdef RESTRICT_OrgApacheLuceneUtilBytesRefArray
#define INCLUDE_ALL_OrgApacheLuceneUtilBytesRefArray 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilBytesRefArray 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilBytesRefArray

#if !defined (OrgApacheLuceneUtilBytesRefArray_) && (INCLUDE_ALL_OrgApacheLuceneUtilBytesRefArray || defined(INCLUDE_OrgApacheLuceneUtilBytesRefArray))
#define OrgApacheLuceneUtilBytesRefArray_

@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefBuilder;
@class OrgApacheLuceneUtilCounter;
@protocol JavaUtilComparator;
@protocol OrgApacheLuceneUtilBytesRefIterator;

/*!
 @brief A simple append only random-access <code>BytesRef</code> array that stores full
 copies of the appended bytes in a <code>ByteBlockPool</code>.
 <b>Note: This class is not Thread-Safe!</b>
 */
@interface OrgApacheLuceneUtilBytesRefArray : NSObject

#pragma mark Public

/*!
 @brief Creates a new <code>BytesRefArray</code> with a counter to track allocated bytes
 */
- (instancetype)initWithOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed;

/*!
 @brief Appends a copy of the given <code>BytesRef</code> to this <code>BytesRefArray</code>.
 @param bytes the bytes to append
 @return the index of the appended bytes
 */
- (jint)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

/*!
 @brief Clears this <code>BytesRefArray</code>
 */
- (void)clear;

/*!
 @brief Returns the <i>n'th</i> element of this <code>BytesRefArray</code>
 @param spare a spare <code>BytesRef</code> instance
 @param index the elements index to retrieve
 @return the <i>n'th</i> element of this <code>BytesRefArray</code>
 */
- (OrgApacheLuceneUtilBytesRef *)getWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)spare
                                                                   withInt:(jint)index;

/*!
 @brief sugar for <code>iterator(Comparator)</code> with a <code>null</code> comparator
 */
- (id<OrgApacheLuceneUtilBytesRefIterator>)iterator;

/*!
 @brief <p>
 Returns a <code>BytesRefIterator</code> with point in time semantics.
 The
 iterator provides access to all so far appended <code>BytesRef</code> instances.
 </p>
 <p>
 If a non <code>null</code> <code>Comparator</code> is provided the iterator will
 iterate the byte values in the order specified by the comparator. Otherwise
 the order is the same as the values were appended.
 </p>
 <p>
 This is a non-destructive operation.
 </p>
 */
- (id<OrgApacheLuceneUtilBytesRefIterator>)iteratorWithJavaUtilComparator:(id<JavaUtilComparator>)comp;

/*!
 @brief Returns the current size of this <code>BytesRefArray</code>
 @return the current size of this <code>BytesRefArray</code>
 */
- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefArray)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilBytesRefArray *self, OrgApacheLuceneUtilCounter *bytesUsed);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefArray *new_OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefArray *create_OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefArray)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilBytesRefArray")
