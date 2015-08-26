//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/SetOnce.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilSetOnce_INCLUDE_ALL")
#if OrgApacheLuceneUtilSetOnce_RESTRICT
#define OrgApacheLuceneUtilSetOnce_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilSetOnce_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilSetOnce_RESTRICT

#if !defined (_OrgApacheLuceneUtilSetOnce_) && (OrgApacheLuceneUtilSetOnce_INCLUDE_ALL || OrgApacheLuceneUtilSetOnce_INCLUDE)
#define _OrgApacheLuceneUtilSetOnce_

@interface OrgApacheLuceneUtilSetOnce : NSObject < NSCopying >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithId:(id)obj;

- (id)get;

- (void)setWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilSetOnce)

FOUNDATION_EXPORT void OrgApacheLuceneUtilSetOnce_init(OrgApacheLuceneUtilSetOnce *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce *new_OrgApacheLuceneUtilSetOnce_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilSetOnce_initWithId_(OrgApacheLuceneUtilSetOnce *self, id obj);

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce *new_OrgApacheLuceneUtilSetOnce_initWithId_(id obj) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSetOnce)

#endif

#if !defined (_OrgApacheLuceneUtilSetOnce_AlreadySetException_) && (OrgApacheLuceneUtilSetOnce_INCLUDE_ALL || OrgApacheLuceneUtilSetOnce_AlreadySetException_INCLUDE)
#define _OrgApacheLuceneUtilSetOnce_AlreadySetException_

#define JavaLangIllegalStateException_RESTRICT 1
#define JavaLangIllegalStateException_INCLUDE 1
#include "java/lang/IllegalStateException.h"

@interface OrgApacheLuceneUtilSetOnce_AlreadySetException : JavaLangIllegalStateException

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilSetOnce_AlreadySetException)

FOUNDATION_EXPORT void OrgApacheLuceneUtilSetOnce_AlreadySetException_init(OrgApacheLuceneUtilSetOnce_AlreadySetException *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce_AlreadySetException *new_OrgApacheLuceneUtilSetOnce_AlreadySetException_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSetOnce_AlreadySetException)

#endif

#pragma pop_macro("OrgApacheLuceneUtilSetOnce_INCLUDE_ALL")