//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MergedPrefixCodedTermsIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator")
#ifdef RESTRICT_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator
#define INCLUDE_ALL_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator

#if !defined (OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_) && (INCLUDE_ALL_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator || defined(INCLUDE_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator))
#define OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_

#define RESTRICT_OrgApacheLuceneIndexFieldTermIterator 1
#define INCLUDE_OrgApacheLuceneIndexFieldTermIterator 1
#include "org/apache/lucene/index/FieldTermIterator.h"

@class OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue;
@class OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilList;

/*!
 @brief Merges multiple <code>FieldTermIterator</code>s
 */
@interface OrgApacheLuceneIndexMergedPrefixCodedTermsIterator : OrgApacheLuceneIndexFieldTermIterator {
 @public
  OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue *termQueue_;
  OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue *fieldQueue_;
  NSString *field_;
}

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)termsList;

- (jlong)delGen;

- (NSString *)field;

- (OrgApacheLuceneUtilBytesRef *)next;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator, termQueue_, OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator, fieldQueue_, OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_initWithJavaUtilList_(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator *self, id<JavaUtilList> termsList);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergedPrefixCodedTermsIterator *new_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_initWithJavaUtilList_(id<JavaUtilList> termsList) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMergedPrefixCodedTermsIterator *create_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_initWithJavaUtilList_(id<JavaUtilList> termsList);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator)

#endif

#if !defined (OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue_) && (INCLUDE_ALL_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator || defined(INCLUDE_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue))
#define OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneIndexPrefixCodedTerms_TermIterator;

@interface OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator *)a
                    withId:(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator *)b;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue_initWithInt_(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue *new_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue *create_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_TermMergeQueue)

#endif

#if !defined (OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue_) && (INCLUDE_ALL_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator || defined(INCLUDE_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue))
#define OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneIndexPrefixCodedTerms_TermIterator;

@interface OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator *)a
                    withId:(OrgApacheLuceneIndexPrefixCodedTerms_TermIterator *)b;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue_initWithInt_(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue *new_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue *create_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_FieldMergeQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator")
