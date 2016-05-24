//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/Lucene43KeepWordFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter

#if !defined (OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter))
#define OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_

#define RESTRICT_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter 1
#include "org/apache/lucene/analysis/util/Lucene43FilteringTokenFilter.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief Backcompat for KeepWordFilter for versions 4.3 and before.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter : OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter

#pragma mark Public

/*!
 @brief The words set passed to this constructor will be directly used by this filter
 and should not be modified,
 */
- (instancetype)initWithBoolean:(jboolean)enablePositionIncrements
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)words;

- (jboolean)accept;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *words);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter *new_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *words) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter *create_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *words);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene43KeepWordFilter")