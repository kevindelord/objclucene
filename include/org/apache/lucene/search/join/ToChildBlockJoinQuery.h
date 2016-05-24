//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ToChildBlockJoinQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinToChildBlockJoinQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinToChildBlockJoinQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinToChildBlockJoinQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinToChildBlockJoinQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinToChildBlockJoinQuery

#if !defined (OrgApacheLuceneSearchJoinToChildBlockJoinQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinToChildBlockJoinQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinToChildBlockJoinQuery))
#define OrgApacheLuceneSearchJoinToChildBlockJoinQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol OrgApacheLuceneSearchJoinBitSetProducer;

/*!
 @brief Just like <code>ToParentBlockJoinQuery</code>, except this
 query joins in reverse: you provide a Query matching
 parent documents and it joins down to child
 documents.
 */
@interface OrgApacheLuceneSearchJoinToChildBlockJoinQuery : OrgApacheLuceneSearchQuery

+ (NSString *)INVALID_QUERY_MESSAGE;

+ (NSString *)ILLEGAL_ADVANCE_ON_PARENT;

#pragma mark Public

/*!
 @brief Create a ToChildBlockJoinQuery.
 @param parentQuery Query that matches parent documents
 @param parentsFilter Filter identifying the parent documents.
 */
- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)parentQuery
       withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentsFilter;

- (OrgApacheLuceneSearchJoinToChildBlockJoinQuery *)clone;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)_other;

/*!
 @brief Return our parent query.
 */
- (OrgApacheLuceneSearchQuery *)getParentQuery;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinToChildBlockJoinQuery)

/*!
 @brief Message thrown from <code>ToChildBlockJoinScorer.validateParentDoc</code>
  on mis-use,
 when the parent query incorrectly returns child docs.
 */
inline NSString *OrgApacheLuceneSearchJoinToChildBlockJoinQuery_get_INVALID_QUERY_MESSAGE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneSearchJoinToChildBlockJoinQuery_INVALID_QUERY_MESSAGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchJoinToChildBlockJoinQuery, INVALID_QUERY_MESSAGE, NSString *)

inline NSString *OrgApacheLuceneSearchJoinToChildBlockJoinQuery_get_ILLEGAL_ADVANCE_ON_PARENT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ILLEGAL_ADVANCE_ON_PARENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchJoinToChildBlockJoinQuery, ILLEGAL_ADVANCE_ON_PARENT, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery *self, OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToChildBlockJoinQuery *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToChildBlockJoinQuery *create_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchQuery *parentQuery, id<OrgApacheLuceneSearchJoinBitSetProducer> parentsFilter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery)

#endif

#if !defined (OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinToChildBlockJoinQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer))
#define OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_

#define RESTRICT_OrgApacheLuceneSearchScorer 1
#define INCLUDE_OrgApacheLuceneSearchScorer 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneSearchWeight;
@class OrgApacheLuceneUtilBitSet;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer : OrgApacheLuceneSearchScorer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                    withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)parentScorer
                      withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)parentBits
                                        withBoolean:(jboolean)doScores;

- (jint)advanceWithInt:(jint)childTarget;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (id<JavaUtilCollection>)getChildren;

- (jint)nextDoc;

- (jfloat)score;

#pragma mark Package-Private

- (jint)getParentDoc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *self, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchScorer *parentScorer, OrgApacheLuceneUtilBitSet *parentBits, jboolean doScores);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *new_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchScorer *parentScorer, OrgApacheLuceneUtilBitSet *parentBits, jboolean doScores) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer *create_OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneUtilBitSet_withBoolean_(OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchScorer *parentScorer, OrgApacheLuceneUtilBitSet *parentBits, jboolean doScores);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinToChildBlockJoinQuery_ToChildBlockJoinScorer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinToChildBlockJoinQuery")