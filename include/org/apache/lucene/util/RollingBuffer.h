//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/RollingBuffer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilRollingBuffer")
#ifdef RESTRICT_OrgApacheLuceneUtilRollingBuffer
#define INCLUDE_ALL_OrgApacheLuceneUtilRollingBuffer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilRollingBuffer 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilRollingBuffer

#if !defined (OrgApacheLuceneUtilRollingBuffer_) && (INCLUDE_ALL_OrgApacheLuceneUtilRollingBuffer || defined(INCLUDE_OrgApacheLuceneUtilRollingBuffer))
#define OrgApacheLuceneUtilRollingBuffer_

@protocol OrgApacheLuceneUtilRollingBuffer_Resettable;

/*!
 @brief Acts like forever growing T[], but internally uses a
 circular buffer to reuse instances of T.
  
 */
@interface OrgApacheLuceneUtilRollingBuffer : NSObject

#pragma mark Public

- (instancetype)init;

- (void)freeBeforeWithInt:(jint)pos;

/*!
 @brief Get T instance for this absolute position;
 this is allowed to be arbitrarily far "in the
 future" but cannot be before the last freeBefore.
 */
- (id)getWithInt:(jint)pos;

/*!
 @brief Returns the maximum position looked up, or -1 if no
 position has been looked up sinc reset/init.
 */
- (jint)getMaxPos;

- (void)reset;

#pragma mark Protected

- (id)newInstance OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilRollingBuffer)

FOUNDATION_EXPORT void OrgApacheLuceneUtilRollingBuffer_init(OrgApacheLuceneUtilRollingBuffer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRollingBuffer)

#endif

#if !defined (OrgApacheLuceneUtilRollingBuffer_Resettable_) && (INCLUDE_ALL_OrgApacheLuceneUtilRollingBuffer || defined(INCLUDE_OrgApacheLuceneUtilRollingBuffer_Resettable))
#define OrgApacheLuceneUtilRollingBuffer_Resettable_

/*!
 @brief Implement to reset an instance
 */
@protocol OrgApacheLuceneUtilRollingBuffer_Resettable < NSObject, JavaObject >

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilRollingBuffer_Resettable)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRollingBuffer_Resettable)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilRollingBuffer")