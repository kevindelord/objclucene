//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/NoLockFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreNoLockFactory_INCLUDE_ALL")
#if OrgApacheLuceneStoreNoLockFactory_RESTRICT
#define OrgApacheLuceneStoreNoLockFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreNoLockFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreNoLockFactory_RESTRICT

#if !defined (_OrgApacheLuceneStoreNoLockFactory_) && (OrgApacheLuceneStoreNoLockFactory_INCLUDE_ALL || OrgApacheLuceneStoreNoLockFactory_INCLUDE)
#define _OrgApacheLuceneStoreNoLockFactory_

#define OrgApacheLuceneStoreLockFactory_RESTRICT 1
#define OrgApacheLuceneStoreLockFactory_INCLUDE 1
#include "org/apache/lucene/store/LockFactory.h"

@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreLock;
@class OrgApacheLuceneStoreNoLockFactory_NoLock;

@interface OrgApacheLuceneStoreNoLockFactory : OrgApacheLuceneStoreLockFactory

#pragma mark Public

- (OrgApacheLuceneStoreLock *)obtainLockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                             withNSString:(NSString *)lockName;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneStoreNoLockFactory)

FOUNDATION_EXPORT OrgApacheLuceneStoreNoLockFactory *OrgApacheLuceneStoreNoLockFactory_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreNoLockFactory, INSTANCE_, OrgApacheLuceneStoreNoLockFactory *)

FOUNDATION_EXPORT OrgApacheLuceneStoreNoLockFactory_NoLock *OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreNoLockFactory, SINGLETON_LOCK_, OrgApacheLuceneStoreNoLockFactory_NoLock *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreNoLockFactory)

#endif

#if !defined (_OrgApacheLuceneStoreNoLockFactory_NoLock_) && (OrgApacheLuceneStoreNoLockFactory_INCLUDE_ALL || OrgApacheLuceneStoreNoLockFactory_NoLock_INCLUDE)
#define _OrgApacheLuceneStoreNoLockFactory_NoLock_

#define OrgApacheLuceneStoreLock_RESTRICT 1
#define OrgApacheLuceneStoreLock_INCLUDE 1
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

#pragma pop_macro("OrgApacheLuceneStoreNoLockFactory_INCLUDE_ALL")