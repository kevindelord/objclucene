//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ReferenceManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchReferenceManager")
#ifdef RESTRICT_OrgApacheLuceneSearchReferenceManager
#define INCLUDE_ALL_OrgApacheLuceneSearchReferenceManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchReferenceManager 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchReferenceManager

#if !defined (OrgApacheLuceneSearchReferenceManager_) && (INCLUDE_ALL_OrgApacheLuceneSearchReferenceManager || defined(INCLUDE_OrgApacheLuceneSearchReferenceManager))
#define OrgApacheLuceneSearchReferenceManager_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@protocol OrgApacheLuceneSearchReferenceManager_RefreshListener;

/*!
 @brief Utility class to safely share instances of a certain type across multiple
 threads, while periodically refreshing them.
 This class ensures each
 reference is closed only once all threads have finished using it. It is
 recommended to consult the documentation of <code>ReferenceManager</code>
 implementations for their <code>maybeRefresh()</code> semantics.
 */
@interface OrgApacheLuceneSearchReferenceManager : NSObject < JavaIoCloseable > {
 @public
  volatile_id current_;
}

#pragma mark Public

- (instancetype)init;

/*!
 @brief Obtain the current reference.
 You must match every call to acquire with one
 call to <code>release</code>; it's best to do so in a finally clause, and set
 the reference to <code>null</code> to prevent accidental usage after it has been
 released.
 @throws AlreadyClosedException if the reference manager has been <code>closed</code>.
 */
- (id)acquire;

/*!
 @brief Adds a listener, to be notified when a reference is refreshed/swapped.
 */
- (void)addListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:(id<OrgApacheLuceneSearchReferenceManager_RefreshListener>)listener;

/*!
 @brief <p>
 Closes this ReferenceManager to prevent future <code>acquiring</code>.
 A
 reference manager should be closed if the reference to the managed resource
 should be disposed or the application using the <code>ReferenceManager</code>
 is shutting down. The managed resource might not be released immediately,
 if the <code>ReferenceManager</code> user is holding on to a previously
 <code>acquired</code> reference. The resource will be released once
 when the last reference is <code>released</code>. Those
 references can still be used as if the manager was still active.
 </p>
 <p>
 Applications should not <code>acquire</code> new references from this
 manager once this method has been called. <code>Acquiring</code> a
 resource on a closed <code>ReferenceManager</code> will throw an
 <code>AlreadyClosedException</code>.
 </p>
 @throws IOException
 if the underlying reader of the current reference could not be closed
 */
- (void)close;

/*!
 @brief You must call this (or <code>maybeRefreshBlocking()</code>), periodically, if
 you want that <code>acquire()</code> will return refreshed instances.
 <p>
 <b>Threads</b>: it's fine for more than one thread to call this at once.
 Only the first thread will attempt the refresh; subsequent threads will see
 that another thread is already handling refresh and will return
 immediately. Note that this means if another thread is already refreshing
 then subsequent threads will return right away without waiting for the
 refresh to complete.
 <p>
 If this method returns true it means the calling thread either refreshed or
 that there were no changes to refresh. If it returns false it means another
 thread is currently refreshing.
 </p>
 @throws IOException if refreshing the resource causes an <code>IOException</code>
 @throws AlreadyClosedException if the reference manager has been <code>closed</code>.
 */
- (jboolean)maybeRefresh;

/*!
 @brief You must call this (or <code>maybeRefresh()</code>), periodically, if you want
 that <code>acquire()</code> will return refreshed instances.
 <p>
 <b>Threads</b>: unlike <code>maybeRefresh()</code>, if another thread is
 currently refreshing, this method blocks until that thread completes. It is
 useful if you want to guarantee that the next call to <code>acquire()</code>
 will return a refreshed instance. Otherwise, consider using the
 non-blocking <code>maybeRefresh()</code>.
 @throws IOException if refreshing the resource causes an <code>IOException</code>
 @throws AlreadyClosedException if the reference manager has been <code>closed</code>.
 */
- (void)maybeRefreshBlocking;

/*!
 @brief Release the reference previously obtained via <code>acquire()</code>.
 <p>
 <b>NOTE:</b> it's safe to call this after <code>close()</code>.
 @throws IOException if the release operation on the given resource throws an <code>IOException</code>
 */
- (void)release__WithId:(id)reference;

/*!
 @brief Remove a listener added with <code>addListener(RefreshListener)</code>.
 */
- (void)removeListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:(id<OrgApacheLuceneSearchReferenceManager_RefreshListener>)listener;

#pragma mark Protected

/*!
 @brief Called after close(), so subclass can free any resources.
 @throws IOException if the after close operation in a sub-class throws an <code>IOException</code>
 */
- (void)afterClose;

/*!
 @brief Called after a refresh was attempted, regardless of
 whether a new reference was in fact created.
 @throws IOException if a low level I/O exception occurs
 */
- (void)afterMaybeRefresh;

/*!
 @brief Decrement reference counting on the given reference.
 @throws IOException if reference decrement on the given resource failed.
 */
- (void)decRefWithId:(id)reference;

/*!
 @brief Returns the current reference count of the given reference.
 */
- (jint)getRefCountWithId:(id)reference;

/*!
 @brief Refresh the given reference if needed.
 Returns <code>null</code> if no refresh
 was needed, otherwise a new refreshed reference.
 @throws AlreadyClosedException if the reference manager has been <code>closed</code>.
 @throws IOException if the refresh operation failed
 */
- (id)refreshIfNeededWithId:(id)referenceToRefresh;

/*!
 @brief Try to increment reference counting on the given reference.
 Return true if
 the operation was successful.
 @throws AlreadyClosedException if the reference manager has been <code>closed</code>.
 */
- (jboolean)tryIncRefWithId:(id)reference;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchReferenceManager)

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneSearchReferenceManager, current_, id)

FOUNDATION_EXPORT void OrgApacheLuceneSearchReferenceManager_init(OrgApacheLuceneSearchReferenceManager *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchReferenceManager)

#endif

#if !defined (OrgApacheLuceneSearchReferenceManager_RefreshListener_) && (INCLUDE_ALL_OrgApacheLuceneSearchReferenceManager || defined(INCLUDE_OrgApacheLuceneSearchReferenceManager_RefreshListener))
#define OrgApacheLuceneSearchReferenceManager_RefreshListener_

/*!
 @brief Use to receive notification when a refresh has
 finished.
 See <code>addListener</code>. 
 */
@protocol OrgApacheLuceneSearchReferenceManager_RefreshListener < NSObject, JavaObject >

/*!
 @brief Called right before a refresh attempt starts.
 */
- (void)beforeRefresh;

/*!
 @brief Called after the attempted refresh; if the refresh
 did open a new reference then didRefresh will be true
 and <code>acquire()</code> is guaranteed to return the new
 reference.
 */
- (void)afterRefreshWithBoolean:(jboolean)didRefresh;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchReferenceManager_RefreshListener)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchReferenceManager_RefreshListener)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchReferenceManager")