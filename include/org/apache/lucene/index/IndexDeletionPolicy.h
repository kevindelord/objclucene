//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexDeletionPolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE_ALL")
#if OrgApacheLuceneIndexIndexDeletionPolicy_RESTRICT
#define OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexIndexDeletionPolicy_RESTRICT

#if !defined (_OrgApacheLuceneIndexIndexDeletionPolicy_) && (OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE_ALL || OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE)
#define _OrgApacheLuceneIndexIndexDeletionPolicy_

@protocol JavaUtilList;

@interface OrgApacheLuceneIndexIndexDeletionPolicy : NSObject

#pragma mark Public

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits;

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexDeletionPolicy)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexDeletionPolicy_init(OrgApacheLuceneIndexIndexDeletionPolicy *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexDeletionPolicy)

#endif

#pragma pop_macro("OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE_ALL")