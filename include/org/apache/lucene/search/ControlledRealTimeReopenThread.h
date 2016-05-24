//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ControlledRealTimeReopenThread.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchControlledRealTimeReopenThread")
#ifdef RESTRICT_OrgApacheLuceneSearchControlledRealTimeReopenThread
#define INCLUDE_ALL_OrgApacheLuceneSearchControlledRealTimeReopenThread 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchControlledRealTimeReopenThread 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchControlledRealTimeReopenThread

#if !defined (OrgApacheLuceneSearchControlledRealTimeReopenThread_) && (INCLUDE_ALL_OrgApacheLuceneSearchControlledRealTimeReopenThread || defined(INCLUDE_OrgApacheLuceneSearchControlledRealTimeReopenThread))
#define OrgApacheLuceneSearchControlledRealTimeReopenThread_

#define RESTRICT_JavaLangThread 1
#define INCLUDE_JavaLangThread 1
#include "java/lang/Thread.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneIndexTrackingIndexWriter;
@class OrgApacheLuceneSearchReferenceManager;

/*!
 @brief Utility class that runs a thread to manage periodicc
 reopens of a <code>ReferenceManager</code>, with methods to wait for a specific
 index changes to become visible.
 To use this class you
 must first wrap your <code>IndexWriter</code> with a <code>TrackingIndexWriter</code>
  and always use it to make changes
 to the index, saving the returned generation.  Then,
 when a given search request needs to see a specific
 index change, call the {#waitForGeneration} to wait for
 that change to be visible.  Note that this will only
 scale well if most searches do not need to wait for a
 specific index generation.
  
 */
@interface OrgApacheLuceneSearchControlledRealTimeReopenThread : JavaLangThread < JavaIoCloseable >

#pragma mark Public

/*!
 @brief Create ControlledRealTimeReopenThread, to periodically
 reopen the a <code>ReferenceManager</code>.
 @param targetMaxStaleSec Maximum time until a new
 reader must be opened; this sets the upper bound
 on how slowly reopens may occur, when no
 caller is waiting for a specific generation to
 become visible.
 @param targetMinStaleSec Mininum time until a new
 reader can be opened; this sets the lower bound
 on how quickly reopens may occur, when a caller
 is waiting for a specific generation to
 become visible.
 */
- (instancetype)initWithOrgApacheLuceneIndexTrackingIndexWriter:(OrgApacheLuceneIndexTrackingIndexWriter *)writer
                      withOrgApacheLuceneSearchReferenceManager:(OrgApacheLuceneSearchReferenceManager *)manager
                                                     withDouble:(jdouble)targetMaxStaleSec
                                                     withDouble:(jdouble)targetMinStaleSec;

- (void)close;

- (void)run;

/*!
 @brief Waits for the target generation to become visible in
 the searcher.
 If the current searcher is older than the
 target generation, this method will block
 until the searcher is reopened, by another via
 <code>ReferenceManager.maybeRefresh</code> or until the <code>ReferenceManager</code> is closed.
 @param targetGen the generation to wait for
 */
- (void)waitForGenerationWithLong:(jlong)targetGen;

/*!
 @brief Waits for the target generation to become visible in
 the searcher, up to a maximum specified milli-seconds.
 If the current searcher is older than the target
 generation, this method will block until the
 searcher has been reopened by another thread via
 <code>ReferenceManager.maybeRefresh</code>, the given waiting time has elapsed, or until
 the <code>ReferenceManager</code> is closed.
 <p>
 NOTE: if the waiting time elapses before the requested target generation is
 available the current <code>SearcherManager</code> is returned instead.
 @param targetGen
 the generation to wait for
 @param maxMS
 maximum milliseconds to wait, or -1 to wait indefinitely
 @return true if the targetGeneration is now available,
 or false if maxMS wait time was exceeded
 */
- (jboolean)waitForGenerationWithLong:(jlong)targetGen
                              withInt:(jint)maxMS;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchControlledRealTimeReopenThread)

FOUNDATION_EXPORT void OrgApacheLuceneSearchControlledRealTimeReopenThread_initWithOrgApacheLuceneIndexTrackingIndexWriter_withOrgApacheLuceneSearchReferenceManager_withDouble_withDouble_(OrgApacheLuceneSearchControlledRealTimeReopenThread *self, OrgApacheLuceneIndexTrackingIndexWriter *writer, OrgApacheLuceneSearchReferenceManager *manager, jdouble targetMaxStaleSec, jdouble targetMinStaleSec);

FOUNDATION_EXPORT OrgApacheLuceneSearchControlledRealTimeReopenThread *new_OrgApacheLuceneSearchControlledRealTimeReopenThread_initWithOrgApacheLuceneIndexTrackingIndexWriter_withOrgApacheLuceneSearchReferenceManager_withDouble_withDouble_(OrgApacheLuceneIndexTrackingIndexWriter *writer, OrgApacheLuceneSearchReferenceManager *manager, jdouble targetMaxStaleSec, jdouble targetMinStaleSec) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchControlledRealTimeReopenThread *create_OrgApacheLuceneSearchControlledRealTimeReopenThread_initWithOrgApacheLuceneIndexTrackingIndexWriter_withOrgApacheLuceneSearchReferenceManager_withDouble_withDouble_(OrgApacheLuceneIndexTrackingIndexWriter *writer, OrgApacheLuceneSearchReferenceManager *manager, jdouble targetMaxStaleSec, jdouble targetMinStaleSec);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchControlledRealTimeReopenThread)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchControlledRealTimeReopenThread")