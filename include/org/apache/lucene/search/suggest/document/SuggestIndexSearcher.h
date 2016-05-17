//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/SuggestIndexSearcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher

#if !defined (OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher))
#define OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher_

#define RESTRICT_OrgApacheLuceneSearchIndexSearcher 1
#define INCLUDE_OrgApacheLuceneSearchIndexSearcher 1
#include "org/apache/lucene/search/IndexSearcher.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchSuggestDocumentCompletionQuery;
@class OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs;
@class OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector;

/*!
 @brief Adds document suggest capabilities to IndexSearcher.
 Any <code>CompletionQuery</code> can be used to suggest documents.
 Use <code>PrefixCompletionQuery</code> for analyzed prefix queries,
 <code>RegexCompletionQuery</code> for regular expression prefix queries,
 <code>FuzzyCompletionQuery</code> for analyzed prefix with typo tolerance
 and <code>ContextQuery</code> to boost and/or filter suggestions by contexts
 */
@interface OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher : OrgApacheLuceneSearchIndexSearcher

#pragma mark Public

/*!
 @brief Creates a searcher with document suggest capabilities
 for <code>reader</code>.
 */
- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

/*!
 @brief Returns top <code>n</code> completion hits for
 <code>query</code>
 */
- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs *)suggestWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery:(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *)query
                                                                                                               withInt:(jint)n;

/*!
 @brief Lower-level suggest API.
 Collects completion hits through <code>collector</code> for <code>query</code>.
 <p><code>TopSuggestDocsCollector.collect(int,CharSequence,CharSequence,float)</code>
 is called for every matching completion hit.
 */
- (void)suggestWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery:(OrgApacheLuceneSearchSuggestDocumentCompletionQuery *)query
       withOrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector:(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *)collector;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher *self, OrgApacheLuceneIndexIndexReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher *new_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher *create_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *reader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestIndexSearcher")
