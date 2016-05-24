//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/ContextQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentContextQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentContextQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentContextQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentContextQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentContextQuery

#if !defined (OrgApacheLuceneSearchSuggestDocumentContextQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentContextQuery || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentContextQuery))
#define OrgApacheLuceneSearchSuggestDocumentContextQuery_

#define RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionQuery 1
#define INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionQuery 1
#include "org/apache/lucene/search/suggest/document/CompletionQuery.h"

@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol JavaLangCharSequence;

/*!
 @brief A <code>CompletionQuery</code> that match documents specified by
 a wrapped <code>CompletionQuery</code> supporting boosting and/or filtering
 by specified contexts.
 <p>
 Use this query against <code>ContextSuggestField</code>
 <p>
 Example of using a <code>CompletionQuery</code> with boosted
 contexts:
 <pre class="prettyprint">
 CompletionQuery completionQuery = ...;
 ContextQuery query = new ContextQuery(completionQuery);
 query.addContext("context1", 2);
 query.addContext("context2", 1);
 
@endcode
 <p>
 NOTE:
 <ul>
 <li>
 This query can be constructed with
 <code>PrefixCompletionQuery</code>, <code>RegexCompletionQuery</code>
 or <code>FuzzyCompletionQuery</code> query.
 </li>
 <li>
 To suggest across all contexts, use <code>addAllContexts()</code>.
 When no context is added, the default behaviour is to suggest across
 all contexts.
 </li>
 <li>
 To apply the same boost to multiple contexts sharing the same prefix,
 Use <code>addContext(CharSequence,float,boolean)</code> with the common
 context prefix, boost and set <code>exact</code> to false.
 <li>
 Using this query against a <code>SuggestField</code> (not context enabled),
 would yield results ignoring any context filtering/boosting
 </li>
 </ul>
 */
@interface OrgApacheLuceneSearchSuggestDocumentContextQuery : OrgApacheLuceneSearchSuggestDocumentCompletionQuery {
 @public
  /*!
   @brief Inner completion query
   */
  OrgApacheLuceneSearchSuggestDocumentCompletionQuery *innerQuery_;
}

#pragma mark Public

/*!
 @brief Constructs a context completion query that matches
 documents specified by <code>query</code>.
 <p>
 Use <code>addContext(CharSequence,float,boolean)</code>
 to add context(s) with boost
 */
- (instancetype)initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery:(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *)query;

/*!
 @brief Add all contexts with a boost of 1f
 */
- (void)addAllContexts;

/*!
 @brief Adds an exact context with default boost of 1
 */
- (void)addContextWithJavaLangCharSequence:(id<JavaLangCharSequence>)context;

/*!
 @brief Adds an exact context with boost
 */
- (void)addContextWithJavaLangCharSequence:(id<JavaLangCharSequence>)context
                                 withFloat:(jfloat)boost;

/*!
 @brief Adds a context with boost, set <code>exact</code> to false
 if the context is a prefix of any indexed contexts
 */
- (void)addContextWithJavaLangCharSequence:(id<JavaLangCharSequence>)context
                                 withFloat:(jfloat)boost
                               withBoolean:(jboolean)exact;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentContextQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentContextQuery, innerQuery_, OrgApacheLuceneSearchSuggestDocumentCompletionQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentContextQuery_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_(OrgApacheLuceneSearchSuggestDocumentContextQuery *self, OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentContextQuery *new_OrgApacheLuceneSearchSuggestDocumentContextQuery_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentContextQuery *create_OrgApacheLuceneSearchSuggestDocumentContextQuery_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *query);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentContextQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentContextQuery")