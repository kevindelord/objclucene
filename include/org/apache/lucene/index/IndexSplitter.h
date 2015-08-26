//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/index/IndexSplitter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexIndexSplitter_INCLUDE_ALL")
#if OrgApacheLuceneIndexIndexSplitter_RESTRICT
#define OrgApacheLuceneIndexIndexSplitter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexIndexSplitter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexIndexSplitter_RESTRICT

#if !defined (_OrgApacheLuceneIndexIndexSplitter_) && (OrgApacheLuceneIndexIndexSplitter_INCLUDE_ALL || OrgApacheLuceneIndexIndexSplitter_INCLUDE)
#define _OrgApacheLuceneIndexIndexSplitter_

@class IOSObjectArray;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneStoreFSDirectory;
@class OrgLukhnosPortmobileFilePath;

@interface OrgApacheLuceneIndexIndexSplitter : NSObject {
 @public
  OrgApacheLuceneIndexSegmentInfos *infos_;
  OrgApacheLuceneStoreFSDirectory *fsDir_;
  OrgLukhnosPortmobileFilePath *dir_;
}

#pragma mark Public

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)dir;

- (void)listSegments;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (void)removeWithNSStringArray:(IOSObjectArray *)segs;

- (void)splitWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)destDir
                            withNSStringArray:(IOSObjectArray *)segs;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexSplitter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexSplitter, infos_, OrgApacheLuceneIndexSegmentInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexSplitter, fsDir_, OrgApacheLuceneStoreFSDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexSplitter, dir_, OrgLukhnosPortmobileFilePath *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexSplitter_mainWithNSStringArray_(IOSObjectArray *args);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneIndexIndexSplitter *self, OrgLukhnosPortmobileFilePath *dir);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexSplitter *new_OrgApacheLuceneIndexIndexSplitter_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *dir) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexSplitter)

#endif

#pragma pop_macro("OrgApacheLuceneIndexIndexSplitter_INCLUDE_ALL")