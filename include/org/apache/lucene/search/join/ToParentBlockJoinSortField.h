//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ToParentBlockJoinSortField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinToParentBlockJoinSortField")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinToParentBlockJoinSortField
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinToParentBlockJoinSortField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinToParentBlockJoinSortField 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinToParentBlockJoinSortField

#if !defined (OrgApacheLuceneSearchJoinToParentBlockJoinSortField_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinToParentBlockJoinSortField || defined(INCLUDE_OrgApacheLuceneSearchJoinToParentBlockJoinSortField))
#define OrgApacheLuceneSearchJoinToParentBlockJoinSortField_

#define RESTRICT_OrgApacheLuceneSearchSortField 1
#define INCLUDE_OrgApacheLuceneSearchSortField 1
#include "org/apache/lucene/search/SortField.h"

@class OrgApacheLuceneSearchFieldComparator;
@class OrgApacheLuceneSearchSortField_Type;
@protocol OrgApacheLuceneSearchJoinBitSetProducer;

/*!
 @brief A special sort field that allows sorting parent docs based on nested / child level fields.
 Based on the sort order it either takes the document with the lowest or highest field value into account.
 */
@interface OrgApacheLuceneSearchJoinToParentBlockJoinSortField : OrgApacheLuceneSearchSortField

#pragma mark Public

/*!
 @brief Create ToParentBlockJoinSortField.
 The parent document ordering is based on child document ordering (reverse).
 @param field The sort field on the nested / child level.
 @param type The sort type on the nested / child level.
 @param reverse Whether natural order should be reversed on the nested / child level.
 @param parentFilter Filter that identifies the parent documents.
 @param childFilter Filter that defines which child documents participates in sorting.
 */
- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type
                     withBoolean:(jboolean)reverse
withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentFilter
withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)childFilter;

/*!
 @brief Create ToParentBlockJoinSortField.
 @param field The sort field on the nested / child level.
 @param type The sort type on the nested / child level.
 @param reverse Whether natural order should be reversed on the nested / child document level.
 @param order Whether natural order should be reversed on the parent level.
 @param parentFilter Filter that identifies the parent documents.
 @param childFilter Filter that defines which child documents participates in sorting.
 */
- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_Type:(OrgApacheLuceneSearchSortField_Type *)type
                     withBoolean:(jboolean)reverse
                     withBoolean:(jboolean)order
withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)parentFilter
withOrgApacheLuceneSearchJoinBitSetProducer:(id<OrgApacheLuceneSearchJoinBitSetProducer>)childFilter;

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinToParentBlockJoinSortField)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinToParentBlockJoinSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchJoinBitSetProducer_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchJoinToParentBlockJoinSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, id<OrgApacheLuceneSearchJoinBitSetProducer> parentFilter, id<OrgApacheLuceneSearchJoinBitSetProducer> childFilter);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToParentBlockJoinSortField *new_OrgApacheLuceneSearchJoinToParentBlockJoinSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchJoinBitSetProducer_withOrgApacheLuceneSearchJoinBitSetProducer_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, id<OrgApacheLuceneSearchJoinBitSetProducer> parentFilter, id<OrgApacheLuceneSearchJoinBitSetProducer> childFilter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToParentBlockJoinSortField *create_OrgApacheLuceneSearchJoinToParentBlockJoinSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withOrgApacheLuceneSearchJoinBitSetProducer_withOrgApacheLuceneSearchJoinBitSetProducer_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, id<OrgApacheLuceneSearchJoinBitSetProducer> parentFilter, id<OrgApacheLuceneSearchJoinBitSetProducer> childFilter);

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinToParentBlockJoinSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withBoolean_withOrgApacheLuceneSearchJoinBitSetProducer_withOrgApacheLuceneSearchJoinBitSetProducer_(OrgApacheLuceneSearchJoinToParentBlockJoinSortField *self, NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, jboolean order, id<OrgApacheLuceneSearchJoinBitSetProducer> parentFilter, id<OrgApacheLuceneSearchJoinBitSetProducer> childFilter);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToParentBlockJoinSortField *new_OrgApacheLuceneSearchJoinToParentBlockJoinSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withBoolean_withOrgApacheLuceneSearchJoinBitSetProducer_withOrgApacheLuceneSearchJoinBitSetProducer_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, jboolean order, id<OrgApacheLuceneSearchJoinBitSetProducer> parentFilter, id<OrgApacheLuceneSearchJoinBitSetProducer> childFilter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinToParentBlockJoinSortField *create_OrgApacheLuceneSearchJoinToParentBlockJoinSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_withBoolean_withOrgApacheLuceneSearchJoinBitSetProducer_withOrgApacheLuceneSearchJoinBitSetProducer_(NSString *field, OrgApacheLuceneSearchSortField_Type *type, jboolean reverse, jboolean order, id<OrgApacheLuceneSearchJoinBitSetProducer> parentFilter, id<OrgApacheLuceneSearchJoinBitSetProducer> childFilter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinToParentBlockJoinSortField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinToParentBlockJoinSortField")