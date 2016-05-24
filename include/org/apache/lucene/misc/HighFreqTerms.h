//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/HighFreqTerms.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms")
#ifdef RESTRICT_OrgApacheLuceneMiscHighFreqTerms
#define INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms 0
#else
#define INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms 1
#endif
#undef RESTRICT_OrgApacheLuceneMiscHighFreqTerms

#if !defined (OrgApacheLuceneMiscHighFreqTerms_) && (INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms || defined(INCLUDE_OrgApacheLuceneMiscHighFreqTerms))
#define OrgApacheLuceneMiscHighFreqTerms_

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@protocol JavaUtilComparator;

/*!
 @brief <code>HighFreqTerms</code> class extracts the top n most frequent terms
 (by document frequency) from an existing Lucene index and reports their
 document frequency.
 <p>
 If the -t flag is given, both document frequency and total tf (total
 number of occurrences) are reported, ordered by descending total tf.
 */
@interface OrgApacheLuceneMiscHighFreqTerms : NSObject

+ (jint)DEFAULT_NUMTERMS;

#pragma mark Public

- (instancetype)init;

/*!
 @brief Returns TermStats[] ordered by the specified comparator
 */
+ (IOSObjectArray *)getHighFreqTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                withInt:(jint)numTerms
                                                           withNSString:(NSString *)field
                                                 withJavaUtilComparator:(id<JavaUtilComparator>)comparator;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMiscHighFreqTerms)

inline jint OrgApacheLuceneMiscHighFreqTerms_get_DEFAULT_NUMTERMS();
#define OrgApacheLuceneMiscHighFreqTerms_DEFAULT_NUMTERMS 100
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneMiscHighFreqTerms, DEFAULT_NUMTERMS, jint)

FOUNDATION_EXPORT void OrgApacheLuceneMiscHighFreqTerms_mainWithNSStringArray_(IOSObjectArray *args);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneMiscHighFreqTerms_getHighFreqTermsWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withJavaUtilComparator_(OrgApacheLuceneIndexIndexReader *reader, jint numTerms, NSString *field, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT void OrgApacheLuceneMiscHighFreqTerms_init(OrgApacheLuceneMiscHighFreqTerms *self);

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms *new_OrgApacheLuceneMiscHighFreqTerms_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms *create_OrgApacheLuceneMiscHighFreqTerms_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneMiscHighFreqTerms)

#endif

#if !defined (OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_) && (INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms || defined(INCLUDE_OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator))
#define OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_

#define RESTRICT_JavaUtilComparator 1
#define INCLUDE_JavaUtilComparator 1
#include "java/util/Comparator.h"

@class OrgApacheLuceneMiscTermStats;

/*!
 @brief Compares terms by docTermFreq
 */
@interface OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator : NSObject < JavaUtilComparator >

#pragma mark Public

- (instancetype)init;

- (jint)compareWithId:(OrgApacheLuceneMiscTermStats *)a
               withId:(OrgApacheLuceneMiscTermStats *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator)

FOUNDATION_EXPORT void OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init(OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator *self);

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator *new_OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator *create_OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator)

#endif

#if !defined (OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_) && (INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms || defined(INCLUDE_OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator))
#define OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_

#define RESTRICT_JavaUtilComparator 1
#define INCLUDE_JavaUtilComparator 1
#include "java/util/Comparator.h"

@class OrgApacheLuceneMiscTermStats;

/*!
 @brief Compares terms by totalTermFreq
 */
@interface OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator : NSObject < JavaUtilComparator >

#pragma mark Public

- (instancetype)init;

- (jint)compareWithId:(OrgApacheLuceneMiscTermStats *)a
               withId:(OrgApacheLuceneMiscTermStats *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator)

FOUNDATION_EXPORT void OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init(OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator *self);

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator *new_OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator *create_OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator)

#endif

#if !defined (OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_) && (INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms || defined(INCLUDE_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue))
#define OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneMiscTermStats;
@protocol JavaUtilComparator;

/*!
 @brief Priority queue for TermStats objects
 */
@interface OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue : OrgApacheLuceneUtilPriorityQueue {
 @public
  id<JavaUtilComparator> comparator_;
}

#pragma mark Protected

- (void)fillWithNSString:(NSString *)field
withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

- (jboolean)lessThanWithId:(OrgApacheLuceneMiscTermStats *)termInfoA
                    withId:(OrgApacheLuceneMiscTermStats *)termInfoB;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)size
     withJavaUtilComparator:(id<JavaUtilComparator>)comparator;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue, comparator_, id<JavaUtilComparator>)

FOUNDATION_EXPORT void OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue *self, jint size, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue *new_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(jint size, id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue *create_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(jint size, id<JavaUtilComparator> comparator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneMiscHighFreqTerms")