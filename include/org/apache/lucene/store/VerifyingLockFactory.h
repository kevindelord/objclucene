//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/VerifyingLockFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreVerifyingLockFactory")
#ifdef RESTRICT_OrgApacheLuceneStoreVerifyingLockFactory
#define INCLUDE_ALL_OrgApacheLuceneStoreVerifyingLockFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreVerifyingLockFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreVerifyingLockFactory

#if !defined (OrgApacheLuceneStoreVerifyingLockFactory_) && (INCLUDE_ALL_OrgApacheLuceneStoreVerifyingLockFactory || defined(INCLUDE_OrgApacheLuceneStoreVerifyingLockFactory))
#define OrgApacheLuceneStoreVerifyingLockFactory_

#define RESTRICT_OrgApacheLuceneStoreLockFactory 1
#define INCLUDE_OrgApacheLuceneStoreLockFactory 1
#include "org/apache/lucene/store/LockFactory.h"

@class JavaIoInputStream;
@class JavaIoOutputStream;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreLock;

/*!
 @brief A <code>LockFactory</code> that wraps another <code>LockFactory</code>
  and verifies that each lock obtain/release
 is "correct" (never results in two processes holding the
 lock at the same time).
 It does this by contacting an
 external server (<code>LockVerifyServer</code>) to assert that
 at most one process holds the lock at a time.  To use
 this, you should also run <code>LockVerifyServer</code> on the
 host and port matching what you pass to the constructor.
 - seealso: LockVerifyServer
 - seealso: LockStressTest
 */
@interface OrgApacheLuceneStoreVerifyingLockFactory : OrgApacheLuceneStoreLockFactory {
 @public
  OrgApacheLuceneStoreLockFactory *lf_;
  JavaIoInputStream *in_;
  JavaIoOutputStream *out_;
}

#pragma mark Public

/*!
 @param lf the LockFactory that we are testing
 @param inArg the socket's input to <code>LockVerifyServer</code>
 @param outArg the socket's output to <code>LockVerifyServer</code>
 */
- (instancetype)initWithOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lf
                                  withJavaIoInputStream:(JavaIoInputStream *)inArg
                                 withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (OrgApacheLuceneStoreLock *)obtainLockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                             withNSString:(NSString *)lockName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreVerifyingLockFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreVerifyingLockFactory, lf_, OrgApacheLuceneStoreLockFactory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreVerifyingLockFactory, in_, JavaIoInputStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreVerifyingLockFactory, out_, JavaIoOutputStream *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreVerifyingLockFactory_initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_(OrgApacheLuceneStoreVerifyingLockFactory *self, OrgApacheLuceneStoreLockFactory *lf, JavaIoInputStream *inArg, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT OrgApacheLuceneStoreVerifyingLockFactory *new_OrgApacheLuceneStoreVerifyingLockFactory_initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_(OrgApacheLuceneStoreLockFactory *lf, JavaIoInputStream *inArg, JavaIoOutputStream *outArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreVerifyingLockFactory *create_OrgApacheLuceneStoreVerifyingLockFactory_initWithOrgApacheLuceneStoreLockFactory_withJavaIoInputStream_withJavaIoOutputStream_(OrgApacheLuceneStoreLockFactory *lf, JavaIoInputStream *inArg, JavaIoOutputStream *outArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreVerifyingLockFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreVerifyingLockFactory")