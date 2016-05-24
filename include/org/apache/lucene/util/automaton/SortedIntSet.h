//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/SortedIntSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonSortedIntSet")
#ifdef RESTRICT_OrgApacheLuceneUtilAutomatonSortedIntSet
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonSortedIntSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonSortedIntSet 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAutomatonSortedIntSet

#if !defined (OrgApacheLuceneUtilAutomatonSortedIntSet_) && (INCLUDE_ALL_OrgApacheLuceneUtilAutomatonSortedIntSet || defined(INCLUDE_OrgApacheLuceneUtilAutomatonSortedIntSet))
#define OrgApacheLuceneUtilAutomatonSortedIntSet_

@class IOSIntArray;
@class OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet;

@interface OrgApacheLuceneUtilAutomatonSortedIntSet : NSObject {
 @public
  IOSIntArray *values_;
  IOSIntArray *counts_;
  jint upto_;
  jint state_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

- (void)computeHash;

- (void)decrWithInt:(jint)num;

- (jboolean)isEqual:(id)_other;

- (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *)freezeWithInt:(jint)state;

- (NSUInteger)hash;

- (void)incrWithInt:(jint)num;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonSortedIntSet)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonSortedIntSet, values_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonSortedIntSet, counts_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(OrgApacheLuceneUtilAutomatonSortedIntSet *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet *create_OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonSortedIntSet)

#endif

#if !defined (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_) && (INCLUDE_ALL_OrgApacheLuceneUtilAutomatonSortedIntSet || defined(INCLUDE_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet))
#define OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_

@class IOSIntArray;

@interface OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet : NSObject {
 @public
  IOSIntArray *values_;
  jint hashCode_;
  jint state_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)num
                    withInt:(jint)state;

- (instancetype)initWithIntArray:(IOSIntArray *)values
                         withInt:(jint)hashCode
                         withInt:(jint)state;

- (jboolean)isEqual:(id)_other;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet, values_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *self, IOSIntArray *values, jint hashCode, jint state);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(IOSIntArray *values, jint hashCode, jint state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *create_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(IOSIntArray *values, jint hashCode, jint state);

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *self, jint num, jint state);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(jint num, jint state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *create_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(jint num, jint state);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonSortedIntSet")