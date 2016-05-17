//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/fst/FSTCompletion.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletion")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestFstFSTCompletion
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletion 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletion 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestFstFSTCompletion

#if !defined (OrgApacheLuceneSearchSuggestFstFSTCompletion_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletion || defined(INCLUDE_OrgApacheLuceneSearchSuggestFstFSTCompletion))
#define OrgApacheLuceneSearchSuggestFstFSTCompletion_

@class OrgApacheLuceneUtilFstFST;
@protocol JavaLangCharSequence;
@protocol JavaUtilList;

/*!
 @brief Finite state automata based implementation of "autocomplete" functionality.
 - seealso: FSTCompletionBuilder
 */
@interface OrgApacheLuceneSearchSuggestFstFSTCompletion : NSObject

+ (jint)DEFAULT_BUCKETS;

#pragma mark Public

/*!
 @brief Defaults to higher weights first and exact first.
 - seealso: #FSTCompletion(FST,boolean,boolean)
 */
- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)automaton;

/*!
 @brief Constructs an FSTCompletion, specifying higherWeightsFirst and exactFirst.
 @param automaton
 Automaton with completions. See <code>FSTCompletionBuilder</code>.
 @param higherWeightsFirst
 Return most popular suggestions first. This is the default
 behavior for this implementation. Setting it to <code>false</code>
 has no effect (use constant term weights to sort alphabetically
 only).
 @param exactFirst
 Find and push an exact match to the first position of the result
 list if found.
 */
- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)automaton
                                      withBoolean:(jboolean)higherWeightsFirst
                                      withBoolean:(jboolean)exactFirst;

/*!
 @brief Returns the bucket assigned to a given key (if found) or <code>-1</code> if
 no exact match exists.
 */
- (jint)getBucketWithJavaLangCharSequence:(id<JavaLangCharSequence>)key;

/*!
 @brief Returns the bucket count (discretization thresholds).
 */
- (jint)getBucketCount;

/*!
 @brief Returns the internal automaton.
 */
- (OrgApacheLuceneUtilFstFST *)getFST;

/*!
 @brief Lookup suggestions to <code>key</code>.
 @param key
 The prefix to which suggestions should be sought.
 @param num
 At most this number of suggestions will be returned.
 @return Returns the suggestions, sorted by their approximated weight first
 (decreasing) and then alphabetically (UTF-8 codepoint order).
 */
- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                           withInt:(jint)num;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSuggestFstFSTCompletion)

/*!
 @brief Default number of buckets.
 */
inline jint OrgApacheLuceneSearchSuggestFstFSTCompletion_get_DEFAULT_BUCKETS();
#define OrgApacheLuceneSearchSuggestFstFSTCompletion_DEFAULT_BUCKETS 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestFstFSTCompletion, DEFAULT_BUCKETS, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestFstFSTCompletion *self, OrgApacheLuceneUtilFstFST *automaton, jboolean higherWeightsFirst, jboolean exactFirst);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletion *new_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_withBoolean_withBoolean_(OrgApacheLuceneUtilFstFST *automaton, jboolean higherWeightsFirst, jboolean exactFirst) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletion *create_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_withBoolean_withBoolean_(OrgApacheLuceneUtilFstFST *automaton, jboolean higherWeightsFirst, jboolean exactFirst);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneSearchSuggestFstFSTCompletion *self, OrgApacheLuceneUtilFstFST *automaton);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletion *new_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *automaton) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletion *create_OrgApacheLuceneSearchSuggestFstFSTCompletion_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *automaton);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestFstFSTCompletion)

#endif

#if !defined (OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletion || defined(INCLUDE_OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion))
#define OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief A single completion for a given key.
 */
@interface OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion : NSObject < JavaLangComparable > {
 @public
  /*!
   @brief UTF-8 bytes of the suggestion
   */
  OrgApacheLuceneUtilBytesRef *utf8_;
  /*!
   @brief source bucket (weight) of the suggestion
   */
  jint bucket_;
}

#pragma mark Public

/*!
 - seealso: BytesRef#compareTo(BytesRef)
 */
- (jint)compareToWithId:(OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion *)o;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key
                                            withInt:(jint)bucket;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion, utf8_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion_initWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion *self, OrgApacheLuceneUtilBytesRef *key, jint bucket);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion *new_OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion_initWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUtilBytesRef *key, jint bucket) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion *create_OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion_initWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUtilBytesRef *key, jint bucket);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestFstFSTCompletion_Completion)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstFSTCompletion")
