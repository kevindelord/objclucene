//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/TermsQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesTermsQuery")
#ifdef RESTRICT_OrgApacheLuceneQueriesTermsQuery
#define INCLUDE_ALL_OrgApacheLuceneQueriesTermsQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesTermsQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesTermsQuery

#if !defined (OrgApacheLuceneQueriesTermsQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueriesTermsQuery || defined(INCLUDE_OrgApacheLuceneQueriesTermsQuery))
#define OrgApacheLuceneQueriesTermsQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilCollection;
@protocol JavaUtilList;

/*!
 @brief Specialization for a disjunction over many terms that behaves like a
 <code>ConstantScoreQuery</code> over a <code>BooleanQuery</code> containing only
 <code>org.apache.lucene.search.BooleanClause.Occur.SHOULD</code> clauses.
 <p>For instance in the following example, both @@{code q1} and <code>q2</code>
 would yield the same scores:
 <pre class="prettyprint">
 Query q1 = new TermsQuery(new Term("field", "foo"), new Term("field", "bar"));
 BooleanQuery bq = new BooleanQuery();
 bq.add(new TermQuery(new Term("field", "foo")), Occur.SHOULD);
 bq.add(new TermQuery(new Term("field", "bar")), Occur.SHOULD);
 Query q2 = new ConstantScoreQuery(bq);
 
@endcode
 <p>When there are few terms, this query executes like a regular disjunction.
 However, when there are many terms, instead of merging iterators on the fly,
 it will populate a bit set with matching docs and return a <code>Scorer</code>
 over this bit set.
 <p>NOTE: This query produces scores that are equal to its boost
 */
@interface OrgApacheLuceneQueriesTermsQuery : OrgApacheLuceneSearchQuery < OrgApacheLuceneUtilAccountable >

+ (jint)BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD;

#pragma mark Public

/*!
 @brief Creates a new <code>TermsQuery</code> from the given list.
 The list
 can contain duplicate terms and multiple fields.
 */
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)terms;

/*!
 @brief Creates a new <code>TermsQuery</code> from the given <code>BytesRef</code> array for
 a single field.
 */
- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneUtilBytesRefArray:(IOSObjectArray *)terms;

/*!
 @brief Creates a new <code>TermsQuery</code> from the given <code>BytesRef</code> list for
 a single field.
 */
- (instancetype)initWithNSString:(NSString *)field
                withJavaUtilList:(id<JavaUtilList>)terms;

/*!
 @brief Creates a new <code>TermsQuery</code> from the given array.
 The array can
 contain duplicate terms and multiple fields.
 */
- (instancetype)initWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)obj;

- (id<JavaUtilCollection>)getChildResources;

- (NSUInteger)hash;

- (jlong)ramBytesUsed;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)defaultField;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueriesTermsQuery)

inline jint OrgApacheLuceneQueriesTermsQuery_get_BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD();
#define OrgApacheLuceneQueriesTermsQuery_BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueriesTermsQuery, BOOLEAN_REWRITE_TERM_COUNT_THRESHOLD, jint)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsQuery_initWithJavaUtilList_(OrgApacheLuceneQueriesTermsQuery *self, id<JavaUtilList> terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *new_OrgApacheLuceneQueriesTermsQuery_initWithJavaUtilList_(id<JavaUtilList> terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *create_OrgApacheLuceneQueriesTermsQuery_initWithJavaUtilList_(id<JavaUtilList> terms);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsQuery_initWithNSString_withJavaUtilList_(OrgApacheLuceneQueriesTermsQuery *self, NSString *field, id<JavaUtilList> terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *new_OrgApacheLuceneQueriesTermsQuery_initWithNSString_withJavaUtilList_(NSString *field, id<JavaUtilList> terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *create_OrgApacheLuceneQueriesTermsQuery_initWithNSString_withJavaUtilList_(NSString *field, id<JavaUtilList> terms);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(OrgApacheLuceneQueriesTermsQuery *self, NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *new_OrgApacheLuceneQueriesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *create_OrgApacheLuceneQueriesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsQuery_initWithOrgApacheLuceneIndexTermArray_(OrgApacheLuceneQueriesTermsQuery *self, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *new_OrgApacheLuceneQueriesTermsQuery_initWithOrgApacheLuceneIndexTermArray_(IOSObjectArray *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsQuery *create_OrgApacheLuceneQueriesTermsQuery_initWithOrgApacheLuceneIndexTermArray_(IOSObjectArray *terms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesTermsQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesTermsQuery")