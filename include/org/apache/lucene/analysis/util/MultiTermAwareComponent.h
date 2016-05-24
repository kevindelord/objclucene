//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/MultiTermAwareComponent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent")
#ifdef RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent

#if !defined (OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent || defined(INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent))
#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_

@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;

/*!
 @brief Add to any analysis factory component to allow returning an
 analysis component factory for use with partial terms in prefix queries,
 wildcard queries, range query endpoints, regex queries, etc.
 */
@protocol OrgApacheLuceneAnalysisUtilMultiTermAwareComponent < NSObject, JavaObject >

/*!
 @brief Returns an analysis component to handle analysis if multi-term queries.
 The returned component must be a TokenizerFactory, TokenFilterFactory or CharFilterFactory.
 */
- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilMultiTermAwareComponent)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilMultiTermAwareComponent)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent")