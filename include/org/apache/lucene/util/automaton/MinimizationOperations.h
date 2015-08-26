//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/MinimizationOperations.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonMinimizationOperations_RESTRICT
#define OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonMinimizationOperations_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonMinimizationOperations_) && (OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonMinimizationOperations_

@class OrgApacheLuceneUtilAutomatonAutomaton;

@interface OrgApacheLuceneUtilAutomatonMinimizationOperations : NSObject

#pragma mark Public

+ (OrgApacheLuceneUtilAutomatonAutomaton *)minimizeWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                                     withInt:(jint)maxDeterminizedStates;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonMinimizationOperations)

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonMinimizationOperations_minimizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonMinimizationOperations)

#endif

#if !defined (_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_) && (OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_

@interface OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair : NSObject {
 @public
  jint n1_, n2_;
}

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)n1
                    withInt:(jint)n2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair *self, jint n1, jint n2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(jint n1, jint n2) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair)

#endif

#if !defined (_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_) && (OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_

@class OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;

@interface OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList : NSObject {
 @public
  jint size_;
  OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *first_, *last_;
}

#pragma mark Package-Private

- (instancetype)init;

- (OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *)addWithInt:(jint)q;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList, first_, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList, last_, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_init(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList)

#endif

#if !defined (_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_) && (OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_

@class OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList;

@interface OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode : NSObject {
 @public
  jint q_;
  OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *next_, *prev_;
  OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *sl_;
}

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)q
withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList:(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *)sl;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode, next_, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode, prev_, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode, sl_, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *self, jint q, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *sl);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_(jint q, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *sl) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonMinimizationOperations_INCLUDE_ALL")