//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SimpleCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimpleCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimpleCollector_RESTRICT
#define OrgApacheLuceneSearchSimpleCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimpleCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimpleCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimpleCollector_) && (OrgApacheLuceneSearchSimpleCollector_INCLUDE_ALL || OrgApacheLuceneSearchSimpleCollector_INCLUDE)
#define _OrgApacheLuceneSearchSimpleCollector_

#define OrgApacheLuceneSearchCollector_RESTRICT 1
#define OrgApacheLuceneSearchCollector_INCLUDE 1
#include "org/apache/lucene/search/Collector.h"

#define OrgApacheLuceneSearchLeafCollector_RESTRICT 1
#define OrgApacheLuceneSearchLeafCollector_INCLUDE 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchSimpleCollector : NSObject < OrgApacheLuceneSearchCollector, OrgApacheLuceneSearchLeafCollector >

#pragma mark Public

- (instancetype)init;

- (void)collectWithInt:(jint)doc;

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimpleCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimpleCollector_init(OrgApacheLuceneSearchSimpleCollector *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimpleCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimpleCollector_INCLUDE_ALL")