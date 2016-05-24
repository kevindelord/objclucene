//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SleepingLockWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper")
#ifdef RESTRICT_OrgApacheLuceneStoreSleepingLockWrapper
#define INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreSleepingLockWrapper

#if !defined (OrgApacheLuceneStoreSleepingLockWrapper_) && (INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper || defined(INCLUDE_OrgApacheLuceneStoreSleepingLockWrapper))
#define OrgApacheLuceneStoreSleepingLockWrapper_

#define RESTRICT_OrgApacheLuceneStoreFilterDirectory 1
#define INCLUDE_OrgApacheLuceneStoreFilterDirectory 1
#include "org/apache/lucene/store/FilterDirectory.h"

@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreLock;

/*!
 @brief Directory that wraps another, and that sleeps and retries
 if obtaining the lock fails.
 <p>
 This is not a good idea.
 */
@interface OrgApacheLuceneStoreSleepingLockWrapper : OrgApacheLuceneStoreFilterDirectory

+ (jlong)LOCK_OBTAIN_WAIT_FOREVER;

+ (jlong)DEFAULT_POLL_INTERVAL;

+ (void)setDEFAULT_POLL_INTERVAL:(jlong)value;

#pragma mark Public

/*!
 @brief Create a new SleepingLockFactory
 @param delegate        underlying directory to wrap
 @param lockWaitTimeout length of time to wait in milliseconds 
 or <code>LOCK_OBTAIN_WAIT_FOREVER</code> to retry forever.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)delegate
                                             withLong:(jlong)lockWaitTimeout;

/*!
 @brief Create a new SleepingLockFactory
 @param delegate        underlying directory to wrap
 @param lockWaitTimeout length of time to wait in milliseconds 
 or <code>LOCK_OBTAIN_WAIT_FOREVER</code> to retry forever.
 @param pollInterval    poll once per this interval in milliseconds until
 <code>lockWaitTimeout</code> is exceeded.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)delegate
                                             withLong:(jlong)lockWaitTimeout
                                             withLong:(jlong)pollInterval;

- (OrgApacheLuceneStoreLock *)obtainLockWithNSString:(NSString *)lockName;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSleepingLockWrapper)

/*!
 @brief Pass this lockWaitTimeout to try forever to obtain the lock.
 */
inline jlong OrgApacheLuceneStoreSleepingLockWrapper_get_LOCK_OBTAIN_WAIT_FOREVER();
#define OrgApacheLuceneStoreSleepingLockWrapper_LOCK_OBTAIN_WAIT_FOREVER -1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreSleepingLockWrapper, LOCK_OBTAIN_WAIT_FOREVER, jlong)

/*!
 @brief How long <code>obtainLock</code> waits, in milliseconds,
 in between attempts to acquire the lock.
 */
inline jlong OrgApacheLuceneStoreSleepingLockWrapper_get_DEFAULT_POLL_INTERVAL();
inline jlong OrgApacheLuceneStoreSleepingLockWrapper_set_DEFAULT_POLL_INTERVAL(jlong value);
inline jlong *OrgApacheLuceneStoreSleepingLockWrapper_getRef_DEFAULT_POLL_INTERVAL();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneStoreSleepingLockWrapper_DEFAULT_POLL_INTERVAL;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneStoreSleepingLockWrapper, DEFAULT_POLL_INTERVAL, jlong)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreSleepingLockWrapper *self, OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout);

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *new_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *create_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout);

FOUNDATION_EXPORT void OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreSleepingLockWrapper *self, OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval);

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *new_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSleepingLockWrapper *create_OrgApacheLuceneStoreSleepingLockWrapper_initWithOrgApacheLuceneStoreDirectory_withLong_withLong_(OrgApacheLuceneStoreDirectory *delegate, jlong lockWaitTimeout, jlong pollInterval);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSleepingLockWrapper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreSleepingLockWrapper")