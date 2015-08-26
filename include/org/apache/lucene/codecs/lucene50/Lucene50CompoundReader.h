//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50CompoundReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_INCLUDE_ALL")
#if OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_RESTRICT
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_RESTRICT

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_) && (OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_

#define OrgApacheLuceneStoreDirectory_RESTRICT 1
#define OrgApacheLuceneStoreDirectory_INCLUDE 1
#include "org/apache/lucene/store/Directory.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneStoreIndexOutput;
@class OrgApacheLuceneStoreLock;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneCodecsLucene50Lucene50CompoundReader : OrgApacheLuceneStoreDirectory

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)close;

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name
                            withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)deleteFileWithNSString:(NSString *)name;

- (jlong)fileLengthWithNSString:(NSString *)name;

- (IOSObjectArray *)listAll;

- (OrgApacheLuceneStoreLock *)obtainLockWithNSString:(NSString *)name;

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)renameFileWithNSString:(NSString *)from
                  withNSString:(NSString *)to;

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)names;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50CompoundReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneCodecsLucene50Lucene50CompoundReader *self, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfo *si, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50CompoundReader *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfo *si, OrgApacheLuceneStoreIOContext *context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50CompoundReader)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry_) && (OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry_

@interface OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry : NSObject {
 @public
  jlong offset_;
  jlong length_;
}

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry_init(OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_INCLUDE_ALL")