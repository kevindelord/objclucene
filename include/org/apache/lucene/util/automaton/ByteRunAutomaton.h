//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/ByteRunAutomaton.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonByteRunAutomaton")
#ifdef RESTRICT_OrgApacheLuceneUtilAutomatonByteRunAutomaton
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonByteRunAutomaton 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAutomatonByteRunAutomaton 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAutomatonByteRunAutomaton

#if !defined (OrgApacheLuceneUtilAutomatonByteRunAutomaton_) && (INCLUDE_ALL_OrgApacheLuceneUtilAutomatonByteRunAutomaton || defined(INCLUDE_OrgApacheLuceneUtilAutomatonByteRunAutomaton))
#define OrgApacheLuceneUtilAutomatonByteRunAutomaton_

#define RESTRICT_OrgApacheLuceneUtilAutomatonRunAutomaton 1
#define INCLUDE_OrgApacheLuceneUtilAutomatonRunAutomaton 1
#include "org/apache/lucene/util/automaton/RunAutomaton.h"

@class IOSByteArray;
@class OrgApacheLuceneUtilAutomatonAutomaton;

/*!
 @brief Automaton representation for matching UTF-8 byte[].
 */
@interface OrgApacheLuceneUtilAutomatonByteRunAutomaton : OrgApacheLuceneUtilAutomatonRunAutomaton

#pragma mark Public

/*!
 @brief Converts incoming automaton to byte-based (UTF32ToUTF8) first
 */
- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a;

/*!
 @brief expert: if utf8 is true, the input is already byte-based
 */
- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                  withBoolean:(jboolean)isBinary
                                                      withInt:(jint)maxDeterminizedStates;

/*!
 @brief Returns true if the given byte array is accepted by this automaton
 */
- (jboolean)runWithByteArray:(IOSByteArray *)s
                     withInt:(jint)offset
                     withInt:(jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonByteRunAutomaton)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonByteRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonByteRunAutomaton *new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonByteRunAutomaton *create_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *a);

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(OrgApacheLuceneUtilAutomatonByteRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a, jboolean isBinary, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonByteRunAutomaton *new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jboolean isBinary, jint maxDeterminizedStates) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonByteRunAutomaton *create_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jboolean isBinary, jint maxDeterminizedStates);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonByteRunAutomaton)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAutomatonByteRunAutomaton")
