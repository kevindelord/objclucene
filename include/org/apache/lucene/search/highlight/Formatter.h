//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/Formatter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightFormatter")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightFormatter
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightFormatter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightFormatter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightFormatter

#if !defined (OrgApacheLuceneSearchHighlightFormatter_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightFormatter || defined(INCLUDE_OrgApacheLuceneSearchHighlightFormatter))
#define OrgApacheLuceneSearchHighlightFormatter_

@class OrgApacheLuceneSearchHighlightTokenGroup;

/*!
 @brief Processes terms found in the original text, typically by applying some form 
 of mark-up to highlight terms in HTML search results pages.
 */
@protocol OrgApacheLuceneSearchHighlightFormatter < NSObject, JavaObject >

/*!
 @param originalText The section of text being considered for markup
 @param tokenGroup contains one or several overlapping Tokens along with
 their scores and positions.
 */
- (NSString *)highlightTermWithNSString:(NSString *)originalText
withOrgApacheLuceneSearchHighlightTokenGroup:(OrgApacheLuceneSearchHighlightTokenGroup *)tokenGroup;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightFormatter)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightFormatter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightFormatter")