//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RateLimitedIndexOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreRateLimitedIndexOutput")
#ifdef RESTRICT_OrgApacheLuceneStoreRateLimitedIndexOutput
#define INCLUDE_ALL_OrgApacheLuceneStoreRateLimitedIndexOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreRateLimitedIndexOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreRateLimitedIndexOutput

#if !defined (OrgApacheLuceneStoreRateLimitedIndexOutput_) && (INCLUDE_ALL_OrgApacheLuceneStoreRateLimitedIndexOutput || defined(INCLUDE_OrgApacheLuceneStoreRateLimitedIndexOutput))
#define OrgApacheLuceneStoreRateLimitedIndexOutput_

#define RESTRICT_OrgApacheLuceneStoreIndexOutput 1
#define INCLUDE_OrgApacheLuceneStoreIndexOutput 1
#include "org/apache/lucene/store/IndexOutput.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreRateLimiter;

/*!
 @brief A <code>rate limiting</code> <code>IndexOutput</code>
 */
@interface OrgApacheLuceneStoreRateLimitedIndexOutput : OrgApacheLuceneStoreIndexOutput

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreRateLimiter:(OrgApacheLuceneStoreRateLimiter *)rateLimiter
                    withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)delegate;

- (void)close;

- (jlong)getChecksum;

- (jlong)getFilePointer;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreRateLimitedIndexOutput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreRateLimitedIndexOutput_initWithOrgApacheLuceneStoreRateLimiter_withOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreRateLimitedIndexOutput *self, OrgApacheLuceneStoreRateLimiter *rateLimiter, OrgApacheLuceneStoreIndexOutput *delegate);

FOUNDATION_EXPORT OrgApacheLuceneStoreRateLimitedIndexOutput *new_OrgApacheLuceneStoreRateLimitedIndexOutput_initWithOrgApacheLuceneStoreRateLimiter_withOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreRateLimiter *rateLimiter, OrgApacheLuceneStoreIndexOutput *delegate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRateLimitedIndexOutput *create_OrgApacheLuceneStoreRateLimitedIndexOutput_initWithOrgApacheLuceneStoreRateLimiter_withOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreRateLimiter *rateLimiter, OrgApacheLuceneStoreIndexOutput *delegate);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreRateLimitedIndexOutput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreRateLimitedIndexOutput")