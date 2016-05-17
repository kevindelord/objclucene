//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/complexPhrase/ComplexPhraseQueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser")
#ifdef RESTRICT_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser
#define INCLUDE_ALL_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser

#if !defined (OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser || defined(INCLUDE_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser))
#define OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_

#define RESTRICT_OrgApacheLuceneQueryparserClassicQueryParser 1
#define INCLUDE_OrgApacheLuceneQueryparserClassicQueryParser 1
#include "org/apache/lucene/queryparser/classic/QueryParser.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief QueryParser which permits complex phrase query syntax eg "(john jon
 jonathan~) peters*".
 <p>
 Performs potentially multiple passes over Query text to parse any nested
 logic in PhraseQueries. - First pass takes any PhraseQuery content between
 quotes and stores for subsequent pass. All other query content is parsed as
 normal - Second pass parses any stored PhraseQuery content, checking all
 embedded clauses are referring to the same field and therefore can be
 rewritten as Span queries. All PhraseQuery clauses are expressed as
 ComplexPhraseQuery objects
 </p>
 <p>
 This could arguably be done in one pass using a new QueryParser but here I am
 working within the constraints of the existing parser as a base class. This
 currently simply feeds all phrase content through an analyzer to select
 phrase terms - any "special" syntax such as * ~ * etc are not given special
 status
 </p>
 */
@interface OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser : OrgApacheLuceneQueryparserClassicQueryParser

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)f
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a;

- (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query;

/*!
 @brief When <code>inOrder</code> is true, the search terms must
 exists in the documents as the same order as in query.
 @param inOrder parameter to choose between ordered or un-ordered proximity search
 */
- (void)setInOrderWithBoolean:(jboolean)inOrder;

#pragma mark Protected

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                                  withInt:(jint)slop;

- (OrgApacheLuceneSearchQuery *)getFuzzyQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)termStr
                                                withFloat:(jfloat)minSimilarity;

- (OrgApacheLuceneSearchQuery *)getRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive;

- (OrgApacheLuceneSearchQuery *)getWildcardQueryWithNSString:(NSString *)field
                                                withNSString:(NSString *)termStr;

- (OrgApacheLuceneSearchQuery *)newRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *self, NSString *f, OrgApacheLuceneAnalysisAnalyzer *a);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *new_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *create_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser)

#endif

#if !defined (OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser || defined(INCLUDE_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery))
#define OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser;

@interface OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery : OrgApacheLuceneSearchQuery {
 @public
  NSString *field_;
  NSString *phrasedQueryStringContents_;
  jint slopFactor_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)phrasedQueryStringContents
                         withInt:(jint)slopFactor
                     withBoolean:(jboolean)inOrder;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (void)parsePhraseElementsWithOrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser:(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *)qp;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery, phrasedQueryStringContents_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *self, NSString *field, NSString *phrasedQueryStringContents, jint slopFactor, jboolean inOrder);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *new_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(NSString *field, NSString *phrasedQueryStringContents, jint slopFactor, jboolean inOrder) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *create_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(NSString *field, NSString *phrasedQueryStringContents, jint slopFactor, jboolean inOrder);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser")
