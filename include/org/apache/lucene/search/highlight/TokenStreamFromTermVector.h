//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TokenStreamFromTermVector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_INCLUDE_ALL")
#if OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_RESTRICT
#define OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_RESTRICT

#if !defined (_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_) && (OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_INCLUDE_ALL || OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_INCLUDE)
#define _OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_

#define OrgApacheLuceneAnalysisTokenStream_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenStream_INCLUDE 1
#include "org/apache/lucene/analysis/TokenStream.h"

@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneUtilAttributeFactory;

@interface OrgApacheLuceneSearchHighlightTokenStreamFromTermVector : OrgApacheLuceneAnalysisTokenStream

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)vector
                                          withInt:(jint)maxStartOffset;

- (OrgApacheLuceneIndexTerms *)getTermVectorTerms;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector)

FOUNDATION_EXPORT OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_ATTRIBUTE_FACTORY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector, ATTRIBUTE_FACTORY_, OrgApacheLuceneUtilAttributeFactory *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *self, OrgApacheLuceneIndexTerms *vector, jint maxStartOffset);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightTokenStreamFromTermVector *new_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(OrgApacheLuceneIndexTerms *vector, jint maxStartOffset) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightTokenStreamFromTermVector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_INCLUDE_ALL")