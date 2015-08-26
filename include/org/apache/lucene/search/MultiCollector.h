//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/MultiCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchMultiCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchMultiCollector_RESTRICT
#define OrgApacheLuceneSearchMultiCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchMultiCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchMultiCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchMultiCollector_) && (OrgApacheLuceneSearchMultiCollector_INCLUDE_ALL || OrgApacheLuceneSearchMultiCollector_INCLUDE)
#define _OrgApacheLuceneSearchMultiCollector_

#define OrgApacheLuceneSearchCollector_RESTRICT 1
#define OrgApacheLuceneSearchCollector_INCLUDE 1
#include "org/apache/lucene/search/Collector.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@protocol JavaLangIterable;
@protocol OrgApacheLuceneSearchLeafCollector;

@interface OrgApacheLuceneSearchMultiCollector : NSObject < OrgApacheLuceneSearchCollector >

#pragma mark Public

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (jboolean)needsScores;

+ (id<OrgApacheLuceneSearchCollector>)wrapWithOrgApacheLuceneSearchCollectorArray:(IOSObjectArray *)collectors;

+ (id<OrgApacheLuceneSearchCollector>)wrapWithJavaLangIterable:(id<JavaLangIterable>)collectors;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiCollector)

FOUNDATION_EXPORT id<OrgApacheLuceneSearchCollector> OrgApacheLuceneSearchMultiCollector_wrapWithOrgApacheLuceneSearchCollectorArray_(IOSObjectArray *collectors);

FOUNDATION_EXPORT id<OrgApacheLuceneSearchCollector> OrgApacheLuceneSearchMultiCollector_wrapWithJavaLangIterable_(id<JavaLangIterable> collectors);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMultiCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchMultiCollector_INCLUDE_ALL")