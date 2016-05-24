//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/NoLockFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreNoLockFactory")
#ifdef RESTRICT_OrgApacheLuceneStoreNoLockFactory
#define INCLUDE_ALL_OrgApacheLuceneStoreNoLockFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreNoLockFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreNoLockFactory

#if !defined (OrgApacheLuceneStoreNoLockFactory_) && (INCLUDE_ALL_OrgApacheLuceneStoreNoLockFactory || defined(INCLUDE_OrgApacheLuceneStoreNoLockFactory))
#define OrgApacheLuceneStoreNoLockFactory_

#define RESTRICT_OrgApacheLuceneStoreLockFactory 1
#define INCLUDE_OrgApacheLuceneStoreLockFactory 1
#include "org/apache/lucene/store/LockFactory.h"

@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreLock;
@class OrgApacheLuceneStoreNoLockFactory_NoLock;

/*!
 @brief Use this <code>LockFactory</code> to disable locking entirely.
 This is a singleton, you have to use <code>INSTANCE</code>.
 - seealso: LockFactory
 */
@interface OrgApacheLuceneStoreNoLockFactory : OrgApacheLuceneStoreLockFactory

+ (OrgApacheLuceneStoreNoLockFactory *)INSTANCE;

+ (OrgApacheLuceneStoreNoLockFactory_NoLock *)SINGLETON_LOCK;

#pragma mark Public

- (OrgApacheLuceneStoreLock *)obtainLockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                             withNSString:(NSString *)lockName;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneStoreNoLockFactory)

/*!
 @brief The singleton
 */
inline OrgApacheLuceneStoreNoLockFactory *OrgApacheLuceneStoreNoLockFactory_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneStoreNoLockFactory *OrgApacheLuceneStoreNoLockFactory_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneStoreNoLockFactory, INSTANCE, OrgApacheLuceneStoreNoLockFactory *)

inline OrgApacheLuceneStoreNoLockFactory_NoLock *OrgApacheLuceneStoreNoLockFactory_get_SINGLETON_LOCK();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneStoreNoLockFactory_NoLock *OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneStoreNoLockFactory, SINGLETON_LOCK, OrgApacheLuceneStoreNoLockFactory_NoLock *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreNoLockFactory)

#endif

#if !defined (OrgApacheLuceneStoreNoLockFactory_NoLock_) && (INCLUDE_ALL_OrgApacheLuceneStoreNoLockFactory || defined(INCLUDE_OrgApacheLuceneStoreNoLockFactory_NoLock))
#define OrgApacheLuceneStoreNoLockFactory_NoLock_

#define RESTRICT_OrgApacheLuceneStoreLock 1
#define INCLUDE_OrgApacheLuceneStoreLock 1
#include "org/apache/lucene/store/Lock.h"

@interface OrgApacheLuceneStoreNoLockFactory_NoLock : OrgApacheLuceneStoreLock

#pragma mark Public

- (void)close;

- (void)ensureValid;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreNoLockFactory_NoLock)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreNoLockFactory_NoLock)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreNoLockFactory")