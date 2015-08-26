//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/Operations.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonOperations_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonOperations_RESTRICT
#define OrgApacheLuceneUtilAutomatonOperations_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonOperations_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonOperations_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonOperations_) && (OrgApacheLuceneUtilAutomatonOperations_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonOperations_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonOperations_

@class IOSIntArray;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilIntsRef;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol JavaUtilSet;

#define OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES 10000

@interface OrgApacheLuceneUtilAutomatonOperations : NSObject

#pragma mark Public

+ (OrgApacheLuceneUtilAutomatonAutomaton *)complementWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                                       withInt:(jint)maxDeterminizedStates;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)concatenateWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a1
                                                      withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a2;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)concatenateWithJavaUtilList:(id<JavaUtilList>)l;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)determinizeWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                                        withInt:(jint)maxDeterminizedStates;

+ (NSString *)getCommonPrefixWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (OrgApacheLuceneUtilBytesRef *)getCommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (OrgApacheLuceneUtilBytesRef *)getCommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                                          withInt:(jint)maxDeterminizedStates;

+ (OrgApacheLuceneUtilIntsRef *)getSingletonWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (jboolean)hasDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (jboolean)hasDeadStatesFromInitialWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (jboolean)hasDeadStatesToAcceptWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)intersectionWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a1
                                                       withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a2;

+ (jboolean)isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (jboolean)isFiniteWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (jboolean)isTotalWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (jboolean)isTotalWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                     withInt:(jint)minAlphabet
                                                     withInt:(jint)maxAlphabet;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)minusWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a1
                                                withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a2
                                                                                  withInt:(jint)maxDeterminizedStates;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)optionalWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)repeatWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)repeatWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                                   withInt:(jint)count;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)repeatWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                                   withInt:(jint)min
                                                                                   withInt:(jint)max;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)reverseWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (jboolean)runWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                          withOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)s;

+ (jboolean)runWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                            withNSString:(NSString *)s;

+ (jboolean)sameLanguageWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a1
                        withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a2;

+ (jboolean)subsetOfWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a1
                    withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a2;

+ (IOSIntArray *)topoSortStatesWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)union__WithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a1
                                                  withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a2;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)union__WithJavaUtilCollection:(id<JavaUtilCollection>)l;

#pragma mark Package-Private

+ (jint)findIndexWithInt:(jint)c
            withIntArray:(IOSIntArray *)points;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)reverseWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                            withJavaUtilSet:(id<JavaUtilSet>)initialStates;

+ (OrgApacheLuceneUtilAutomatonAutomaton *)totalizeWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonOperations)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonOperations, DEFAULT_MAX_DETERMINIZED_STATES, jint)

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_concatenateWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a1, OrgApacheLuceneUtilAutomatonAutomaton *a2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_concatenateWithJavaUtilList_(id<JavaUtilList> l);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_optionalWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint count);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_complementWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_minusWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a1, OrgApacheLuceneUtilAutomatonAutomaton *a2, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_intersectionWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a1, OrgApacheLuceneUtilAutomatonAutomaton *a2);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_sameLanguageWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a1, OrgApacheLuceneUtilAutomatonAutomaton *a2);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesFromInitialWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesToAcceptWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_subsetOfWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a1, OrgApacheLuceneUtilAutomatonAutomaton *a2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_union__WithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a1, OrgApacheLuceneUtilAutomatonAutomaton *a2);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_union__WithJavaUtilCollection_(id<JavaUtilCollection> l);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_isTotalWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_isTotalWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint minAlphabet, jint maxAlphabet);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_runWithOrgApacheLuceneUtilAutomatonAutomaton_withNSString_(OrgApacheLuceneUtilAutomatonAutomaton *a, NSString *s);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_runWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilIntsRef_(OrgApacheLuceneUtilAutomatonAutomaton *a, OrgApacheLuceneUtilIntsRef *s);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilAutomatonOperations_findIndexWithInt_withIntArray_(jint c, IOSIntArray *points);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilAutomatonOperations_isFiniteWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilAutomatonOperations_getCommonPrefixWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilAutomatonOperations_getCommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *OrgApacheLuceneUtilAutomatonOperations_getSingletonWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilAutomatonOperations_getCommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_reverseWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_reverseWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(OrgApacheLuceneUtilAutomatonAutomaton *a, id<JavaUtilSet> initialStates);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_totalizeWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneUtilAutomatonOperations_topoSortStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonOperations)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonOperations_INCLUDE_ALL")