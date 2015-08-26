//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanPositionRangeQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpansSpanPositionRangeQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpansSpanPositionRangeQuery_RESTRICT
#define OrgApacheLuceneSearchSpansSpanPositionRangeQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpansSpanPositionRangeQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpansSpanPositionRangeQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_) && (OrgApacheLuceneSearchSpansSpanPositionRangeQuery_INCLUDE_ALL || OrgApacheLuceneSearchSpansSpanPositionRangeQuery_INCLUDE)
#define _OrgApacheLuceneSearchSpansSpanPositionRangeQuery_

#define OrgApacheLuceneSearchSpansSpanPositionCheckQuery_RESTRICT 1
#define OrgApacheLuceneSearchSpansSpanPositionCheckQuery_INCLUDE 1
#include "org/apache/lucene/search/spans/SpanPositionCheckQuery.h"

@class OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum;
@class OrgApacheLuceneSearchSpansSpanQuery;
@class OrgApacheLuceneSearchSpansSpans;

@interface OrgApacheLuceneSearchSpansSpanPositionRangeQuery : OrgApacheLuceneSearchSpansSpanPositionCheckQuery {
 @public
  jint start_;
  jint end_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match
                                                    withInt:(jint)start
                                                    withInt:(jint)end;

- (OrgApacheLuceneSearchSpansSpanPositionRangeQuery *)clone;

- (jboolean)isEqual:(id)o;

- (jint)getEnd;

- (jint)getStart;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchSpansFilterSpans_AcceptStatusEnum *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanPositionRangeQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanPositionRangeQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionRangeQuery *new_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanPositionRangeQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpansSpanPositionRangeQuery_INCLUDE_ALL")