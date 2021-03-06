//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/FilterIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFilterIterator")
#ifdef RESTRICT_OrgApacheLuceneUtilFilterIterator
#define INCLUDE_ALL_OrgApacheLuceneUtilFilterIterator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFilterIterator 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFilterIterator

#if !defined (OrgApacheLuceneUtilFilterIterator_) && (INCLUDE_ALL_OrgApacheLuceneUtilFilterIterator || defined(INCLUDE_OrgApacheLuceneUtilFilterIterator))
#define OrgApacheLuceneUtilFilterIterator_

#define RESTRICT_JavaUtilIterator 1
#define INCLUDE_JavaUtilIterator 1
#include "java/util/Iterator.h"

/*!
 @brief An <code>Iterator</code> implementation that filters elements with a boolean predicate.
 - seealso: #predicateFunction
 */
@interface OrgApacheLuceneUtilFilterIterator : NSObject < JavaUtilIterator >

#pragma mark Public

- (instancetype)initWithJavaUtilIterator:(id<JavaUtilIterator>)baseIterator;

- (jboolean)hasNext;

- (id)next;

- (void)remove;

#pragma mark Protected

/*!
 @brief returns true, if this element should be returned by <code>next()</code>.
 */
- (jboolean)predicateFunctionWithId:(id)object;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFilterIterator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFilterIterator_initWithJavaUtilIterator_(OrgApacheLuceneUtilFilterIterator *self, id<JavaUtilIterator> baseIterator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFilterIterator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFilterIterator")
