//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/sandbox/queries/SlowFuzzyQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery")
#ifdef RESTRICT_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery
#define INCLUDE_ALL_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery

#if !defined (OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_) && (INCLUDE_ALL_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery || defined(INCLUDE_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery))
#define OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilAttributeSource;

/*!
 @brief Implements the classic fuzzy search query.
 The similarity measurement
 is based on the Levenshtein (edit distance) algorithm.
 <p>
 Note that, unlike <code>FuzzyQuery</code>, this query will silently allow
 for a (possibly huge) number of edit distances in comparisons, and may
 be extremely slow (comparing every term in the index).
 */
@interface OrgApacheLuceneSandboxQueriesSlowFuzzyQuery : OrgApacheLuceneSearchMultiTermQuery {
 @public
  OrgApacheLuceneIndexTerm *term_;
}

+ (jfloat)defaultMinSimilarity;

+ (jint)defaultPrefixLength;

+ (jint)defaultMaxExpansions;

#pragma mark Public

/*!
 @brief Calls <code>SlowFuzzyQuery(term, defaultMinSimilarity, 0, defaultMaxExpansions)</code>.
 */
- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

/*!
 @brief Calls <code>SlowFuzzyQuery(term, minimumSimilarity, 0, defaultMaxExpansions)</code>.
 */
- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                       withFloat:(jfloat)minimumSimilarity;

/*!
 @brief Calls <code>SlowFuzzyQuery(term, minimumSimilarity, prefixLength, defaultMaxExpansions)</code>.
 */
- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                       withFloat:(jfloat)minimumSimilarity
                                         withInt:(jint)prefixLength;

/*!
 @brief Create a new SlowFuzzyQuery that will match terms with a similarity 
 of at least <code>minimumSimilarity</code> to <code>term</code>.
 If a <code>prefixLength</code> &gt; 0 is specified, a common prefix
 of that length is also required.
 @param term the term to search for
 @param minimumSimilarity a value between 0 and 1 to set the required similarity
 between the query term and the matching terms. For example, for a
 <code>minimumSimilarity</code> of <code>0.5</code> a term of the same length
 as the query term is considered similar to the query term if the edit distance
 between both terms is less than <code>length(term)*0.5</code>
 <p>
 Alternatively, if <code>minimumSimilarity</code> is &gt;= 1f, it is interpreted 
 as a pure Levenshtein edit distance. For example, a value of <code>2f</code>
 will match all terms within an edit distance of <code>2</code> from the 
 query term. Edit distances specified in this way may not be fractional.
 @param prefixLength length of common (non-fuzzy) prefix
 @param maxExpansions the maximum number of terms to match. If this number is
 greater than <code>BooleanQuery.getMaxClauseCount</code> when the query is rewritten, 
 then the maxClauseCount will be used instead.
 @throws IllegalArgumentException if minimumSimilarity is &gt;= 1 or &lt; 0
 or if prefixLength &lt; 0
 */
- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                       withFloat:(jfloat)minimumSimilarity
                                         withInt:(jint)prefixLength
                                         withInt:(jint)maxExpansions;

- (jboolean)isEqual:(id)obj;

/*!
 @brief Returns the minimum similarity that is required for this query to match.
 @return float value between 0.0 and 1.0
 */
- (jfloat)getMinSimilarity;

/*!
 @brief Returns the non-fuzzy prefix length.
 This is the number of characters at the start
 of a term that must be identical (not fuzzy) to the query term if the query
 is to match that term. 
 */
- (jint)getPrefixLength;

/*!
 @brief Returns the pattern term.
 */
- (OrgApacheLuceneIndexTerm *)getTerm;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery, term_, OrgApacheLuceneIndexTerm *)

inline jfloat OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_get_defaultMinSimilarity();
#define OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_defaultMinSimilarity 2.0f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery, defaultMinSimilarity, jfloat)

inline jint OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_get_defaultPrefixLength();
#define OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_defaultPrefixLength 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery, defaultPrefixLength, jint)

inline jint OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_get_defaultMaxExpansions();
#define OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_defaultMaxExpansions 50
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery, defaultMaxExpansions, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_withInt_(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength, jint maxExpansions);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *new_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength, jint maxExpansions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *create_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength, jint maxExpansions);

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *new_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *create_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_withInt_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity, jint prefixLength);

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *new_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *create_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withFloat_(OrgApacheLuceneIndexTerm *term, jfloat minimumSimilarity);

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *self, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *new_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesSlowFuzzyQuery *create_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSandboxQueriesSlowFuzzyQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSandboxQueriesSlowFuzzyQuery")