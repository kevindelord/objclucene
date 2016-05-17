//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterPerThread.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread")
#ifdef RESTRICT_OrgApacheLuceneIndexDocumentsWriterPerThread
#define INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocumentsWriterPerThread

#if !defined (OrgApacheLuceneIndexDocumentsWriterPerThread_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterPerThread))
#define OrgApacheLuceneIndexDocumentsWriterPerThread_

@class JavaUtilConcurrentAtomicAtomicLong;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneCodecsCodec;
@class OrgApacheLuceneIndexBufferedUpdates;
@class OrgApacheLuceneIndexDocConsumer;
@class OrgApacheLuceneIndexDocumentsWriterDeleteQueue;
@class OrgApacheLuceneIndexDocumentsWriterPerThread_DocState;
@class OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment;
@class OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain;
@class OrgApacheLuceneIndexFieldInfos_Builder;
@class OrgApacheLuceneIndexFrozenBufferedUpdates;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexLiveIndexWriterConfig;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreTrackingDirectoryWrapper;
@class OrgApacheLuceneUtilByteBlockPool_Allocator;
@class OrgApacheLuceneUtilCounter;
@class OrgApacheLuceneUtilInfoStream;
@class OrgApacheLuceneUtilIntBlockPool_Allocator;
@protocol JavaLangIterable;
@protocol JavaUtilSet;

@interface OrgApacheLuceneIndexDocumentsWriterPerThread : NSObject {
 @public
  OrgApacheLuceneCodecsCodec *codec_;
  OrgApacheLuceneStoreTrackingDirectoryWrapper *directory_;
  OrgApacheLuceneStoreDirectory *directoryOrig_;
  OrgApacheLuceneIndexDocumentsWriterPerThread_DocState *docState_;
  OrgApacheLuceneIndexDocConsumer *consumer_;
  OrgApacheLuceneUtilCounter *bytesUsed_;
  OrgApacheLuceneIndexSegmentWriteState *flushState_;
  OrgApacheLuceneIndexBufferedUpdates *pendingUpdates_;
  jboolean aborted_;
  OrgApacheLuceneIndexDocumentsWriterDeleteQueue *deleteQueue_;
  OrgApacheLuceneUtilByteBlockPool_Allocator *byteBlockAllocator_;
  OrgApacheLuceneUtilIntBlockPool_Allocator *intBlockAllocator_;
}

+ (OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *)defaultIndexingChain;

+ (jint)BYTE_BLOCK_NOT_MASK;

+ (jint)MAX_TERM_LENGTH_UTF8;

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                           withNSString:(NSString *)segmentName
                      withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directoryOrig
                      withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
          withOrgApacheLuceneIndexLiveIndexWriterConfig:(OrgApacheLuceneIndexLiveIndexWriterConfig *)indexWriterConfig
                      withOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream
     withOrgApacheLuceneIndexDocumentsWriterDeleteQueue:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *)deleteQueue
             withOrgApacheLuceneIndexFieldInfos_Builder:(OrgApacheLuceneIndexFieldInfos_Builder *)fieldInfos
                 withJavaUtilConcurrentAtomicAtomicLong:(JavaUtilConcurrentAtomicAtomicLong *)pendingNumDocs
                                            withBoolean:(jboolean)enableTestPoints;

- (OrgApacheLuceneIndexFieldInfos_Builder *)getFieldInfosBuilder;

/*!
 @brief Returns the number of RAM resident documents in this <code>DocumentsWriterPerThread</code>
 */
- (jint)getNumDocsInRAM;

/*!
 @brief Returns the number of delete terms in this <code>DocumentsWriterPerThread</code>
 */
- (jint)numDeleteTerms;

- (id<JavaUtilSet>)pendingFilesToDelete;

- (NSString *)description;

- (void)updateDocumentWithJavaLangIterable:(id<JavaLangIterable>)doc
       withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
              withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)delTerm;

- (jint)updateDocumentsWithJavaLangIterable:(id<JavaLangIterable>)docs
        withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
               withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)delTerm;

#pragma mark Package-Private

/*!
 @brief Called if we hit an exception at a bad time (when
 updating the index files) and must discard all
 currently buffered docs.
 This resets our state,
 discarding any docs added since last flush. 
 */
- (void)abort;

- (jlong)bytesUsed;

- (void)deleteDocIDWithInt:(jint)docIDUpto;

/*!
 @brief Flush all pending docs to a new segment
 */
- (OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *)flush;

/*!
 @brief Get current segment info we are writing.
 */
- (OrgApacheLuceneIndexSegmentInfo *)getSegmentInfo;

/*!
 @brief Prepares this DWPT for flushing.
 This method will freeze and return the
 <code>DocumentsWriterDeleteQueue</code>s global buffer and apply all pending
 deletes to this DWPT.
 */
- (OrgApacheLuceneIndexFrozenBufferedUpdates *)prepareFlush;

/*!
 @brief Seals the <code>SegmentInfo</code> for the new flushed segment and persists
 the deleted documents <code>MutableBits</code>.
 */
- (void)sealFlushedSegmentWithOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *)flushedSegment;

- (void)testPointWithNSString:(NSString *)message;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterPerThread)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, codec_, OrgApacheLuceneCodecsCodec *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, directory_, OrgApacheLuceneStoreTrackingDirectoryWrapper *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, directoryOrig_, OrgApacheLuceneStoreDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, docState_, OrgApacheLuceneIndexDocumentsWriterPerThread_DocState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, consumer_, OrgApacheLuceneIndexDocConsumer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, bytesUsed_, OrgApacheLuceneUtilCounter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, flushState_, OrgApacheLuceneIndexSegmentWriteState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, pendingUpdates_, OrgApacheLuceneIndexBufferedUpdates *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, deleteQueue_, OrgApacheLuceneIndexDocumentsWriterDeleteQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, byteBlockAllocator_, OrgApacheLuceneUtilByteBlockPool_Allocator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread, intBlockAllocator_, OrgApacheLuceneUtilIntBlockPool_Allocator *)

inline OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *OrgApacheLuceneIndexDocumentsWriterPerThread_get_defaultIndexingChain();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *OrgApacheLuceneIndexDocumentsWriterPerThread_defaultIndexingChain;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexDocumentsWriterPerThread, defaultIndexingChain, OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *)

inline jint OrgApacheLuceneIndexDocumentsWriterPerThread_get_BYTE_BLOCK_NOT_MASK();
#define OrgApacheLuceneIndexDocumentsWriterPerThread_BYTE_BLOCK_NOT_MASK -32768
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexDocumentsWriterPerThread, BYTE_BLOCK_NOT_MASK, jint)

inline jint OrgApacheLuceneIndexDocumentsWriterPerThread_get_MAX_TERM_LENGTH_UTF8();
#define OrgApacheLuceneIndexDocumentsWriterPerThread_MAX_TERM_LENGTH_UTF8 32766
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexDocumentsWriterPerThread, MAX_TERM_LENGTH_UTF8, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterPerThread_initWithOrgApacheLuceneIndexIndexWriter_withNSString_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLiveIndexWriterConfig_withOrgApacheLuceneUtilInfoStream_withOrgApacheLuceneIndexDocumentsWriterDeleteQueue_withOrgApacheLuceneIndexFieldInfos_Builder_withJavaUtilConcurrentAtomicAtomicLong_withBoolean_(OrgApacheLuceneIndexDocumentsWriterPerThread *self, OrgApacheLuceneIndexIndexWriter *writer, NSString *segmentName, OrgApacheLuceneStoreDirectory *directoryOrig, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexLiveIndexWriterConfig *indexWriterConfig, OrgApacheLuceneUtilInfoStream *infoStream, OrgApacheLuceneIndexDocumentsWriterDeleteQueue *deleteQueue, OrgApacheLuceneIndexFieldInfos_Builder *fieldInfos, JavaUtilConcurrentAtomicAtomicLong *pendingNumDocs, jboolean enableTestPoints);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterPerThread *new_OrgApacheLuceneIndexDocumentsWriterPerThread_initWithOrgApacheLuceneIndexIndexWriter_withNSString_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLiveIndexWriterConfig_withOrgApacheLuceneUtilInfoStream_withOrgApacheLuceneIndexDocumentsWriterDeleteQueue_withOrgApacheLuceneIndexFieldInfos_Builder_withJavaUtilConcurrentAtomicAtomicLong_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, NSString *segmentName, OrgApacheLuceneStoreDirectory *directoryOrig, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexLiveIndexWriterConfig *indexWriterConfig, OrgApacheLuceneUtilInfoStream *infoStream, OrgApacheLuceneIndexDocumentsWriterDeleteQueue *deleteQueue, OrgApacheLuceneIndexFieldInfos_Builder *fieldInfos, JavaUtilConcurrentAtomicAtomicLong *pendingNumDocs, jboolean enableTestPoints) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterPerThread *create_OrgApacheLuceneIndexDocumentsWriterPerThread_initWithOrgApacheLuceneIndexIndexWriter_withNSString_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLiveIndexWriterConfig_withOrgApacheLuceneUtilInfoStream_withOrgApacheLuceneIndexDocumentsWriterDeleteQueue_withOrgApacheLuceneIndexFieldInfos_Builder_withJavaUtilConcurrentAtomicAtomicLong_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, NSString *segmentName, OrgApacheLuceneStoreDirectory *directoryOrig, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexLiveIndexWriterConfig *indexWriterConfig, OrgApacheLuceneUtilInfoStream *infoStream, OrgApacheLuceneIndexDocumentsWriterDeleteQueue *deleteQueue, OrgApacheLuceneIndexFieldInfos_Builder *fieldInfos, JavaUtilConcurrentAtomicAtomicLong *pendingNumDocs, jboolean enableTestPoints);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterPerThread)

#endif

#if !defined (OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain))
#define OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain_

@class OrgApacheLuceneIndexDocConsumer;
@class OrgApacheLuceneIndexDocumentsWriterPerThread;

/*!
 @brief The IndexingChain must define the <code>getChain(DocumentsWriterPerThread)</code> method
 which returns the DocConsumer that the DocumentsWriter calls to process the
 documents.
 */
@interface OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (OrgApacheLuceneIndexDocConsumer *)getChainWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)documentsWriterPerThread;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain_init(OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain)

#endif

#if !defined (OrgApacheLuceneIndexDocumentsWriterPerThread_DocState_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterPerThread_DocState))
#define OrgApacheLuceneIndexDocumentsWriterPerThread_DocState_

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneIndexDocumentsWriterPerThread;
@class OrgApacheLuceneSearchSimilaritiesSimilarity;
@class OrgApacheLuceneUtilInfoStream;
@protocol JavaLangIterable;

@interface OrgApacheLuceneIndexDocumentsWriterPerThread_DocState : NSObject {
 @public
  OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter_;
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
  OrgApacheLuceneUtilInfoStream *infoStream_;
  OrgApacheLuceneSearchSimilaritiesSimilarity *similarity_;
  jint docID_;
  id<JavaLangIterable> doc_;
}

#pragma mark Public

- (void)clear;

- (void)testPointWithNSString:(NSString *)name;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)docWriter
                                   withOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState, docWriter_, OrgApacheLuceneIndexDocumentsWriterPerThread *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState, infoStream_, OrgApacheLuceneUtilInfoStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState, similarity_, OrgApacheLuceneSearchSimilaritiesSimilarity *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState, doc_, id<JavaLangIterable>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocumentsWriterPerThread_DocState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState *self, OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter, OrgApacheLuceneUtilInfoStream *infoStream);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterPerThread_DocState *new_OrgApacheLuceneIndexDocumentsWriterPerThread_DocState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter, OrgApacheLuceneUtilInfoStream *infoStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDocumentsWriterPerThread_DocState *create_OrgApacheLuceneIndexDocumentsWriterPerThread_DocState_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withOrgApacheLuceneUtilInfoStream_(OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter, OrgApacheLuceneUtilInfoStream *infoStream);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterPerThread_DocState)

#endif

#if !defined (OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread || defined(INCLUDE_OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment))
#define OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_

@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFrozenBufferedUpdates;
@class OrgApacheLuceneIndexSegmentCommitInfo;
@protocol OrgApacheLuceneUtilMutableBits;

@interface OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment : NSObject {
 @public
  OrgApacheLuceneIndexSegmentCommitInfo *segmentInfo_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  OrgApacheLuceneIndexFrozenBufferedUpdates *segmentUpdates_;
  id<OrgApacheLuceneUtilMutableBits> liveDocs_;
  jint delCount_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment, segmentInfo_, OrgApacheLuceneIndexSegmentCommitInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment, segmentUpdates_, OrgApacheLuceneIndexFrozenBufferedUpdates *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment, liveDocs_, id<OrgApacheLuceneUtilMutableBits>)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocumentsWriterPerThread")
