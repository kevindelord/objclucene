//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressingTermVectorsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader

#if !defined (OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader || defined(INCLUDE_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader))
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_

#define RESTRICT_OrgApacheLuceneCodecsTermVectorsReader 1
#define INCLUDE_OrgApacheLuceneCodecsTermVectorsReader 1
#include "org/apache/lucene/codecs/TermVectorsReader.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader;
@class OrgApacheLuceneCodecsCompressingCompressionMode;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaUtilCollection;

/*!
 @brief <code>TermVectorsReader</code> for <code>CompressingTermVectorsFormat</code>.
 */
@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader : OrgApacheLuceneCodecsTermVectorsReader < JavaIoCloseable > {
 @public
  OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *indexReader_;
  OrgApacheLuceneStoreIndexInput *vectorsStream_;
}

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                         withNSString:(NSString *)segmentSuffix
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fn
                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context
                                         withNSString:(NSString *)formatName
  withOrgApacheLuceneCodecsCompressingCompressionMode:(OrgApacheLuceneCodecsCompressingCompressionMode *)compressionMode;

- (void)checkIntegrity;

- (OrgApacheLuceneCodecsTermVectorsReader *)clone;

- (void)close;

- (OrgApacheLuceneIndexFields *)getWithInt:(jint)doc;

- (id<JavaUtilCollection>)getChildResources;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (jint)getChunkSize;

- (OrgApacheLuceneCodecsCompressingCompressionMode *)getCompressionMode;

- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)getIndexReader;

- (jlong)getMaxPointer;

- (jlong)getNumChunks;

- (jlong)getNumDirtyChunks;

- (jint)getPackedIntsVersion;

- (OrgApacheLuceneStoreIndexInput *)getVectorsStream;

- (jint)getVersion;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader, indexReader_, OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader, vectorsStream_, OrgApacheLuceneStoreIndexInput *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode);

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *create_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneIndexFieldInfos *fn, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader")