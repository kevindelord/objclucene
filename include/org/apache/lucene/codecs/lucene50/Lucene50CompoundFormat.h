//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_RESTRICT
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_) && (OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_

#define OrgApacheLuceneCodecsCompoundFormat_RESTRICT 1
#define OrgApacheLuceneCodecsCompoundFormat_INCLUDE 1
#include "org/apache/lucene/codecs/CompoundFormat.h"

@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

#define OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_START 0
#define OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT 0

@interface OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat : OrgApacheLuceneCodecsCompoundFormat

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneStoreDirectory *)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, DATA_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, ENTRIES_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, DATA_CODEC_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, ENTRY_CODEC_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, VERSION_START, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, VERSION_CURRENT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_INCLUDE_ALL")