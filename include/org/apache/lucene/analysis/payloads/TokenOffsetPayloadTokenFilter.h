//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/TokenOffsetPayloadTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter

#if !defined (OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter || defined(INCLUDE_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter))
#define OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Adds the <code>OffsetAttribute.startOffset()</code>
 and <code>OffsetAttribute.endOffset()</code>
 First 4 bytes are the start
 */
@interface OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter *new_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter *create_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsTokenOffsetPayloadTokenFilter")