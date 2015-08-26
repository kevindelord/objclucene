//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sinks/TeeSinkTokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_RESTRICT
#define OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_) && (OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter;
@class OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream;
@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)addSinkTokenStreamWithOrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream:(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream *)sink;

- (void)consumeAllTokens;

- (void)end;

- (jboolean)incrementToken;

- (OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream *)newSinkTokenStream OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream *)newSinkTokenStreamWithOrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter:(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter *)filter OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter *new_OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter)

#endif

#if !defined (_OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter_) && (OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter_

@class OrgApacheLuceneUtilAttributeSource;

@interface OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter : NSObject

#pragma mark Public

- (instancetype)init;

- (jboolean)acceptWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter_init(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter)

#endif

#if !defined (_OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream_) && (OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream_INCLUDE)
#define _OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream_

#define OrgApacheLuceneAnalysisTokenStream_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenStream_INCLUDE 1
#include "org/apache/lucene/analysis/TokenStream.h"

@interface OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream : OrgApacheLuceneAnalysisTokenStream

#pragma mark Public

- (void)end;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkTokenStream)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_INCLUDE_ALL")