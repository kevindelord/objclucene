//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SegmentCoreReaders.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentCoreReaders")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentCoreReaders
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentCoreReaders 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentCoreReaders 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentCoreReaders

#if !defined (OrgApacheLuceneIndexSegmentCoreReaders_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentCoreReaders || defined(INCLUDE_OrgApacheLuceneIndexSegmentCoreReaders))
#define OrgApacheLuceneIndexSegmentCoreReaders_

@class OrgApacheLuceneCodecsFieldsProducer;
@class OrgApacheLuceneCodecsNormsProducer;
@class OrgApacheLuceneCodecsStoredFieldsReader;
@class OrgApacheLuceneCodecsTermVectorsReader;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@class OrgApacheLuceneIndexSegmentReader;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneUtilCloseableThreadLocal;
@protocol OrgApacheLuceneIndexLeafReader_CoreClosedListener;

/*!
 @brief Holds core readers that are shared (unchanged) when
 SegmentReader is cloned or reopened
 */
@interface OrgApacheLuceneIndexSegmentCoreReaders : NSObject {
 @public
  OrgApacheLuceneCodecsFieldsProducer *fields_;
  OrgApacheLuceneCodecsNormsProducer *normsProducer_;
  OrgApacheLuceneCodecsStoredFieldsReader *fieldsReaderOrig_;
  OrgApacheLuceneCodecsTermVectorsReader *termVectorsReaderOrig_;
  OrgApacheLuceneStoreDirectory *cfsReader_;
  /*!
   @brief fieldinfos for this core: means gen=-1.
   this is the exact fieldinfos these codec components saw at write.
 in the case of DV updates, SR may hold a newer version. 
   */
  OrgApacheLuceneIndexFieldInfos *coreFieldInfos_;
  OrgApacheLuceneUtilCloseableThreadLocal *fieldsReaderLocal_;
  OrgApacheLuceneUtilCloseableThreadLocal *termVectorsLocal_;
}

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)owner
                        withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)si
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

- (void)decRef;

- (jint)getRefCount;

- (void)incRef;

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentCoreReaders)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, fields_, OrgApacheLuceneCodecsFieldsProducer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, normsProducer_, OrgApacheLuceneCodecsNormsProducer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, fieldsReaderOrig_, OrgApacheLuceneCodecsStoredFieldsReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, termVectorsReaderOrig_, OrgApacheLuceneCodecsTermVectorsReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, cfsReader_, OrgApacheLuceneStoreDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, coreFieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, fieldsReaderLocal_, OrgApacheLuceneUtilCloseableThreadLocal *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, termVectorsLocal_, OrgApacheLuceneUtilCloseableThreadLocal *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneIndexSegmentCoreReaders *self, OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentCommitInfo *si, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentCoreReaders *new_OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentCommitInfo *si, OrgApacheLuceneStoreIOContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentCoreReaders *create_OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentCommitInfo *si, OrgApacheLuceneStoreIOContext *context);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentCoreReaders)

#endif

#if !defined (OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentCoreReaders || defined(INCLUDE_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal))
#define OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_

#define RESTRICT_OrgApacheLuceneUtilCloseableThreadLocal 1
#define INCLUDE_OrgApacheLuceneUtilCloseableThreadLocal 1
#include "org/apache/lucene/util/CloseableThreadLocal.h"

@class OrgApacheLuceneCodecsStoredFieldsReader;
@class OrgApacheLuceneIndexSegmentCoreReaders;

@interface OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal : OrgApacheLuceneUtilCloseableThreadLocal

#pragma mark Protected

- (OrgApacheLuceneCodecsStoredFieldsReader *)initialValue OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentCoreReaders:(OrgApacheLuceneIndexSegmentCoreReaders *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *self, OrgApacheLuceneIndexSegmentCoreReaders *outer$);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *new_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *create_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal)

#endif

#if !defined (OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentCoreReaders || defined(INCLUDE_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal))
#define OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_

#define RESTRICT_OrgApacheLuceneUtilCloseableThreadLocal 1
#define INCLUDE_OrgApacheLuceneUtilCloseableThreadLocal 1
#include "org/apache/lucene/util/CloseableThreadLocal.h"

@class OrgApacheLuceneCodecsTermVectorsReader;
@class OrgApacheLuceneIndexSegmentCoreReaders;

@interface OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal : OrgApacheLuceneUtilCloseableThreadLocal

#pragma mark Protected

- (OrgApacheLuceneCodecsTermVectorsReader *)initialValue OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentCoreReaders:(OrgApacheLuceneIndexSegmentCoreReaders *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *self, OrgApacheLuceneIndexSegmentCoreReaders *outer$);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *new_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *create_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentCoreReaders")