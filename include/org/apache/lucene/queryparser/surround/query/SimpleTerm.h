//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/SimpleTerm.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm

#if !defined (OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm))
#define OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_

#define RESTRICT_OrgApacheLuceneQueryparserSurroundQuerySrndQuery 1
#define INCLUDE_OrgApacheLuceneQueryparserSurroundQuerySrndQuery 1
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"

#define RESTRICT_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery 1
#define INCLUDE_OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery 1
#include "org/apache/lucene/queryparser/surround/query/DistanceSubQuery.h"

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class IOSObjectArray;
@class JavaLangStringBuilder;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@class OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory;
@class OrgApacheLuceneSearchQuery;
@protocol OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor;

/*!
 @brief Base class for queries that expand to sets of simple terms.
 */
@interface OrgApacheLuceneQueryparserSurroundQuerySimpleTerm : OrgApacheLuceneQueryparserSurroundQuerySrndQuery < OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery, JavaLangComparable >

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)q;

- (void)addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:(OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)sncf;

/*!
 */
- (jint)compareToWithId:(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *)ost;

- (NSString *)distanceSubQueryNotAllowed;

- (NSString *)getFieldOperator;

- (NSString *)getQuote;

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

- (NSString *)description;

- (NSString *)toStringUnquoted;

- (void)visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)fieldName
withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:(id<OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor>)mtv;

#pragma mark Protected

- (void)suffixToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r;

#pragma mark Package-Private

- (jboolean)isQuoted;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_initWithBoolean_(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm *self, jboolean q);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm)

#endif

#if !defined (OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor))
#define OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor_

@class OrgApacheLuceneIndexTerm;

/*!
 @brief Callback to visit each matching term during "rewrite"
 in <code>visitMatchingTerm(Term)</code>
 */
@protocol OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor < NSObject, JavaObject >

- (void)visitMatchingTermWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySimpleTerm")
