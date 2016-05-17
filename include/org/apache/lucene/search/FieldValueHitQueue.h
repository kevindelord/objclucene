//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldValueHitQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldValueHitQueue
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldValueHitQueue

#if !defined (OrgApacheLuceneSearchFieldValueHitQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue || defined(INCLUDE_OrgApacheLuceneSearchFieldValueHitQueue))
#define OrgApacheLuceneSearchFieldValueHitQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchFieldDoc;
@class OrgApacheLuceneSearchFieldValueHitQueue_Entry;

/*!
 @brief Expert: A hit queue for sorting by hits by terms in more than one field.
 @since 2.9
 - seealso: IndexSearcher#search(Query,int,Sort)
 */
@interface OrgApacheLuceneSearchFieldValueHitQueue : OrgApacheLuceneUtilPriorityQueue {
 @public
  /*!
   @brief Stores the sort criteria being used.
   */
  IOSObjectArray *fields_;
  IOSObjectArray *comparators_;
  IOSIntArray *reverseMul_;
}

#pragma mark Public

/*!
 @brief Creates a hit queue sorted by the given list of fields.
 <p><b>NOTE</b>: The instances returned by this method
 pre-allocate a full array of length <code>numHits</code>.
 @param fields
 SortField array we are sorting by in priority order (highest
 priority first); cannot be <code>null</code> or empty
 @param size
 The number of hits to retain. Must be greater than zero.
 @throws IOException if there is a low-level IO error
 */
+ (OrgApacheLuceneSearchFieldValueHitQueue *)createWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                                                   withInt:(jint)size;

- (IOSObjectArray *)getComparators;

- (IOSObjectArray *)getComparatorsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (IOSIntArray *)getReverseMul;

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)a
                    withId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)b;

#pragma mark Package-Private

/*!
 @brief Given a queue Entry, creates a corresponding FieldDoc
 that contains the values used to sort the given document.
 These values are not the raw values out of the index, but the internal
 representation of them. This is so the given search hit can be collated by
 a MultiSearcher with other search hits.
 @param entry_ The Entry used to create a FieldDoc
 @return The newly created FieldDoc
 - seealso: IndexSearcher#search(Query,int,Sort)
 */
- (OrgApacheLuceneSearchFieldDoc *)fillFieldsWithOrgApacheLuceneSearchFieldValueHitQueue_Entry:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)entry_;

/*!
 @brief Returns the SortFields being used by this hit queue.
 */
- (IOSObjectArray *)getFields;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueHitQueue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueHitQueue, fields_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueHitQueue, comparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueHitQueue, reverseMul_, IOSIntArray *)

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueHitQueue *OrgApacheLuceneSearchFieldValueHitQueue_createWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueHitQueue)

#endif

#if !defined (OrgApacheLuceneSearchFieldValueHitQueue_Entry_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue || defined(INCLUDE_OrgApacheLuceneSearchFieldValueHitQueue_Entry))
#define OrgApacheLuceneSearchFieldValueHitQueue_Entry_

#define RESTRICT_OrgApacheLuceneSearchScoreDoc 1
#define INCLUDE_OrgApacheLuceneSearchScoreDoc 1
#include "org/apache/lucene/search/ScoreDoc.h"

/*!
 @brief Extension of ScoreDoc to also store the 
 <code>FieldComparator</code> slot.
 */
@interface OrgApacheLuceneSearchFieldValueHitQueue_Entry : OrgApacheLuceneSearchScoreDoc {
 @public
  jint slot_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)slot
                    withInt:(jint)doc
                  withFloat:(jfloat)score;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueHitQueue_Entry)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(OrgApacheLuceneSearchFieldValueHitQueue_Entry *self, jint slot, jint doc, jfloat score);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueHitQueue_Entry *new_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(jint slot, jint doc, jfloat score) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldValueHitQueue_Entry *create_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(jint slot, jint doc, jfloat score);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueHitQueue_Entry)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldValueHitQueue")
