//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestWordQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordQueue")
#ifdef RESTRICT_OrgApacheLuceneSearchSpellSuggestWordQueue
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordQueue 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordQueue 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpellSuggestWordQueue

#if !defined (OrgApacheLuceneSearchSpellSuggestWordQueue_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordQueue || defined(INCLUDE_OrgApacheLuceneSearchSpellSuggestWordQueue))
#define OrgApacheLuceneSearchSpellSuggestWordQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneSearchSpellSuggestWord;
@protocol JavaUtilComparator;

/*!
 @brief Sorts SuggestWord instances
 - seealso: org.apache.lucene.search.spell.SuggestWordScoreComparator
 - seealso: org.apache.lucene.search.spell.SuggestWordFrequencyComparator
 */
@interface OrgApacheLuceneSearchSpellSuggestWordQueue : OrgApacheLuceneUtilPriorityQueue

+ (id<JavaUtilComparator>)DEFAULT_COMPARATOR;

#pragma mark Public

/*!
 @brief Use the <code>DEFAULT_COMPARATOR</code>
 @param size The size of the queue
 */
- (instancetype)initWithInt:(jint)size;

/*!
 @brief Specify the size of the queue and the comparator to use for sorting.
 @param size The size
 @param comparator The comparator.
 */
- (instancetype)initWithInt:(jint)size
     withJavaUtilComparator:(id<JavaUtilComparator>)comparator;

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchSpellSuggestWord *)wa
                    withId:(OrgApacheLuceneSearchSpellSuggestWord *)wb;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSpellSuggestWordQueue)

/*!
 @brief Default comparator: score then frequency.
 - seealso: SuggestWordScoreComparator
 */
inline id<JavaUtilComparator> OrgApacheLuceneSearchSpellSuggestWordQueue_get_DEFAULT_COMPARATOR();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneSearchSpellSuggestWordQueue_DEFAULT_COMPARATOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSpellSuggestWordQueue, DEFAULT_COMPARATOR, id<JavaUtilComparator>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_(OrgApacheLuceneSearchSpellSuggestWordQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordQueue *new_OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordQueue *create_OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_(jint size);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_withJavaUtilComparator_(OrgApacheLuceneSearchSpellSuggestWordQueue *self, jint size, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordQueue *new_OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_withJavaUtilComparator_(jint size, id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordQueue *create_OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_withJavaUtilComparator_(jint size, id<JavaUtilComparator> comparator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellSuggestWordQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpellSuggestWordQueue")
