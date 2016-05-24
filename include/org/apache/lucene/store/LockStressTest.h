//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockStressTest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockStressTest")
#ifdef RESTRICT_OrgApacheLuceneStoreLockStressTest
#define INCLUDE_ALL_OrgApacheLuceneStoreLockStressTest 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreLockStressTest 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreLockStressTest

#if !defined (OrgApacheLuceneStoreLockStressTest_) && (INCLUDE_ALL_OrgApacheLuceneStoreLockStressTest || defined(INCLUDE_OrgApacheLuceneStoreLockStressTest))
#define OrgApacheLuceneStoreLockStressTest_

@class IOSObjectArray;

/*!
 @brief Simple standalone tool that forever acquires and releases a
 lock using a specific LockFactory.
 Run without any args
 to see usage.
 - seealso: VerifyingLockFactory
 - seealso: LockVerifyServer
 */
@interface OrgApacheLuceneStoreLockStressTest : NSObject

+ (NSString *)LOCK_FILE_NAME;

#pragma mark Public

- (instancetype)init;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockStressTest)

inline NSString *OrgApacheLuceneStoreLockStressTest_get_LOCK_FILE_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneStoreLockStressTest_LOCK_FILE_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneStoreLockStressTest, LOCK_FILE_NAME, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockStressTest_mainWithNSStringArray_(IOSObjectArray *args);

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockStressTest_init(OrgApacheLuceneStoreLockStressTest *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreLockStressTest *new_OrgApacheLuceneStoreLockStressTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreLockStressTest *create_OrgApacheLuceneStoreLockStressTest_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLockStressTest)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockStressTest")