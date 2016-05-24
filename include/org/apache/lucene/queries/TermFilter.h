//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/TermFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesTermFilter")
#ifdef RESTRICT_OrgApacheLuceneQueriesTermFilter
#define INCLUDE_ALL_OrgApacheLuceneQueriesTermFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesTermFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesTermFilter

#if !defined (OrgApacheLuceneQueriesTermFilter_) && (INCLUDE_ALL_OrgApacheLuceneQueriesTermFilter || defined(INCLUDE_OrgApacheLuceneQueriesTermFilter))
#define OrgApacheLuceneQueriesTermFilter_

#define RESTRICT_OrgApacheLuceneSearchQueryWrapperFilter 1
#define INCLUDE_OrgApacheLuceneSearchQueryWrapperFilter 1
#include "org/apache/lucene/search/QueryWrapperFilter.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexTerm;

/*!
 @brief A filter that includes documents that match with a specific term.
 */
@interface OrgApacheLuceneQueriesTermFilter : OrgApacheLuceneSearchQueryWrapperFilter

#pragma mark Public

/*!
 @brief Create a new TermFilter
 @param term The term documents need to have in order to be a match for this filter.
 */
- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesTermFilter)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneQueriesTermFilter *self, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermFilter *new_OrgApacheLuceneQueriesTermFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermFilter *create_OrgApacheLuceneQueriesTermFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesTermFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesTermFilter")