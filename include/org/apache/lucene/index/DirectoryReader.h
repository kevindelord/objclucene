//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DirectoryReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDirectoryReader")
#ifdef RESTRICT_OrgApacheLuceneIndexDirectoryReader
#define INCLUDE_ALL_OrgApacheLuceneIndexDirectoryReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDirectoryReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDirectoryReader

#if !defined (OrgApacheLuceneIndexDirectoryReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexDirectoryReader || defined(INCLUDE_OrgApacheLuceneIndexDirectoryReader))
#define OrgApacheLuceneIndexDirectoryReader_

#define RESTRICT_OrgApacheLuceneIndexBaseCompositeReader 1
#define INCLUDE_OrgApacheLuceneIndexBaseCompositeReader 1
#include "org/apache/lucene/index/BaseCompositeReader.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexCommit;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaUtilList;

/*!
 @brief DirectoryReader is an implementation of <code>CompositeReader</code>
 that can read indexes in a <code>Directory</code>.
 <p>DirectoryReader instances are usually constructed with a call to
 one of the static <code>open()</code> methods, e.g. <code>open(Directory)</code>
 .
 <p> For efficiency, in this API documents are often referred to via
 <i>document numbers</i>, non-negative integers which each name a unique
 document in the index.  These document numbers are ephemeral -- they may change
 as documents are added to and deleted from an index.  Clients should thus not
 rely on a given document having the same number between sessions.
 <p>
 <a name="thread-safety"></a><p><b>NOTE</b>: <code>IndexReader</code>
  instances are completely thread
 safe, meaning multiple threads can call any of its methods,
 concurrently.  If your application requires external
 synchronization, you should <b>not</b> synchronize on the
 <code>IndexReader</code> instance; use your own
 (non-Lucene) objects instead.
 */
@interface OrgApacheLuceneIndexDirectoryReader : OrgApacheLuceneIndexBaseCompositeReader {
 @public
  /*!
   @brief The index directory.
   */
  OrgApacheLuceneStoreDirectory *directory_;
}

#pragma mark Public

/*!
 @brief Returns the directory this index resides in.
 */
- (OrgApacheLuceneStoreDirectory *)directory;

/*!
 @brief Expert: return the IndexCommit that this reader has opened.
 */
- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit;

/*!
 @brief Version number when this IndexReader was opened.
 <p>This method
 returns the version recorded in the commit that the
 reader opened.  This version is advanced every time
 a change is made with <code>IndexWriter</code>.</p>
 */
- (jlong)getVersion;

/*!
 @brief Returns <code>true</code> if an index likely exists at
 the specified directory.
 Note that if a corrupt index
 exists, or if an index in the process of committing 
 @param directory the directory to check for an index
 @return <code>true</code> if an index exists; <code>false</code> otherwise
 */
+ (jboolean)indexExistsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

/*!
 @brief Check whether any new changes have occurred to the
 index since this reader was opened.
 <p>If this reader was created by calling <code>open</code>,  
 then this method checks if any further commits 
 (see <code>IndexWriter.commit</code>) have occurred in the 
 directory.</p>
 <p>If instead this reader is a near real-time reader
 (ie, obtained by a call to <code>DirectoryReader.open(IndexWriter,boolean)</code>
 , or by calling <code>openIfChanged</code>
 on a near real-time reader), then this method checks if
 either a new commit has occurred, or any new
 uncommitted changes have taken place via the writer.
 Note that even if the writer has only performed
 merging, this method will still return false.</p>
 <p>In any event, if this returns false, you should call
 <code>openIfChanged</code> to get a new reader that sees the
 changes.</p>
 @throws IOException           if there is a low-level IO error
 */
- (jboolean)isCurrent;

/*!
 @brief Returns all commit points that exist in the Directory.
 Normally, because the default is <code>KeepOnlyLastCommitDeletionPolicy</code>
 , there would be only
 one commit point.  But if you're using a custom <code>IndexDeletionPolicy</code>
  then there could be many commits.
 Once you have a given commit, you can open a reader on
 it by calling <code>DirectoryReader.open(IndexCommit)</code>
 There must be at least one commit in
 the Directory, else this method throws <code>IndexNotFoundException</code>
 .  Note that if a commit is in
 progress while this method is running, that commit
 may or may not be returned.
 @return a sorted list of <code>IndexCommit</code>s, from oldest 
 to latest.
 */
+ (id<JavaUtilList>)listCommitsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

/*!
 @brief Returns a IndexReader reading the index in the given
 Directory
 @param directory the index directory
 @throws IOException if there is a low-level IO error
 */
+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

/*!
 @brief Expert: returns an IndexReader reading the index in the given
 <code>IndexCommit</code>.
 @param commit the commit point to open
 @throws IOException if there is a low-level IO error
 */
+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

/*!
 @brief Open a near real time IndexReader from the <code>org.apache.lucene.index.IndexWriter</code>.
 @param writer The IndexWriter to open from
 @param applyAllDeletes If true, all buffered deletes will
 be applied (made visible) in the returned reader.  If
 false, the deletes are not applied but remain buffered
 (in IndexWriter) so that they will be applied in the
 future.  Applying deletes can be costly, so if your app
 can tolerate deleted documents being returned you might
 gain some performance by passing false.
 @return The new IndexReader
 @throws CorruptIndexException if the index is corrupt
 @throws IOException if there is a low-level IO error
 - seealso: #openIfChanged(DirectoryReader,IndexWriter,boolean)
 */
+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                     withBoolean:(jboolean)applyAllDeletes;

/*!
 @brief If the index has changed since the provided reader was
 opened, open and return a new reader; else, return
 null.
 The new reader, if not null, will be the same
 type of reader as the previous one, ie an NRT reader
 will open a new NRT reader, a MultiReader will open a
 new MultiReader,  etc.
 <p>This method is typically far less costly than opening a
 fully new <code>DirectoryReader</code> as it shares
 resources (for example sub-readers) with the provided
 <code>DirectoryReader</code>, when possible.
 <p>The provided reader is not closed (you are responsible
 for doing so); if a new reader is returned you also
 must eventually close it.  Be sure to never close a
 reader while other threads are still using it; see
 <code>SearcherManager</code> to simplify managing this.
 @throws CorruptIndexException if the index is corrupt
 @throws IOException if there is a low-level IO error
 @return null if there are no changes; else, a new
 DirectoryReader instance which you must eventually close
 */
+ (OrgApacheLuceneIndexDirectoryReader *)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)oldReader;

/*!
 @brief If the IndexCommit differs from what the
 provided reader is searching, open and return a new
 reader; else, return null.
 - seealso: #openIfChanged(DirectoryReader)
 */
+ (OrgApacheLuceneIndexDirectoryReader *)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)oldReader
                                                          withOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

/*!
 @brief Expert: If there changes (committed or not) in the
 <code>IndexWriter</code> versus what the provided reader is
 searching, then open and return a new
 IndexReader searching both committed and uncommitted
 changes from the writer; else, return null (though, the
 current implementation never returns null).
 <p>This provides "near real-time" searching, in that
 changes made during an <code>IndexWriter</code> session can be
 quickly made available for searching without closing
 the writer nor calling <code>IndexWriter.commit</code>.
 <p>It's <i>near</i> real-time because there is no hard
 guarantee on how quickly you can get a new reader after
 making changes with IndexWriter.  You'll have to
 experiment in your situation to determine if it's
 fast enough.  As this is a new and experimental
 feature, please report back on your findings so we can
 learn, improve and iterate.</p>
 <p>The very first time this method is called, this
 writer instance will make every effort to pool the
 readers that it opens for doing merges, applying
 deletes, etc.  This means additional resources (RAM,
 file descriptors, CPU time) will be consumed.</p>
 <p>For lower latency on reopening a reader, you should
 call <code>IndexWriterConfig.setMergedSegmentWarmer</code> to
 pre-warm a newly merged segment before it's committed
 to the index.  This is important for minimizing
 index-to-search delay after a large merge.  </p>
 <p>If an addIndexes* call is running in another thread,
 then this reader will only search those segments from
 the foreign index that have been successfully copied
 over, so far.</p>
 <p><b>NOTE</b>: Once the writer is closed, any
 outstanding readers may continue to be used.  However,
 if you attempt to reopen any of those readers, you'll
 hit an <code>org.apache.lucene.store.AlreadyClosedException</code>.</p>
 @return DirectoryReader that covers entire index plus all
 changes made so far by this IndexWriter instance, or
 null if there are no new changes
 @param writer The IndexWriter to open from
 @param applyAllDeletes If true, all buffered deletes will
 be applied (made visible) in the returned reader.  If
 false, the deletes are not applied but remain buffered
 (in IndexWriter) so that they will be applied in the
 future.  Applying deletes can be costly, so if your app
 can tolerate deleted documents being returned you might
 gain some performance by passing false.
 @throws IOException if there is a low-level IO error
 */
+ (OrgApacheLuceneIndexDirectoryReader *)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)oldReader
                                                          withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                                  withBoolean:(jboolean)applyAllDeletes;

#pragma mark Protected

/*!
 @brief Expert: Constructs a <code>DirectoryReader</code> on the given subReaders.
 @param segmentReaders the wrapped atomic index segment readers. This array is
 returned by <code>getSequentialSubReaders</code> and used to resolve the correct
 subreader for docID-based methods. <b>Please note:</b> This array is <b>not</b>
 cloned and not protected for modification outside of this reader.
 Subclasses of <code>DirectoryReader</code> should take care to not allow
 modification of this internal array, e.g. <code>doOpenIfChanged()</code>.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
              withOrgApacheLuceneIndexLeafReaderArray:(IOSObjectArray *)segmentReaders;

/*!
 @brief Implement this method to support <code>openIfChanged(DirectoryReader)</code>.
 If this reader does not support reopen, return <code>null</code>, so
 client code is happy. This should be consistent with <code>isCurrent</code>
 (should always return <code>true</code>) if reopen is not supported.
 @throws IOException if there is a low-level IO error
 @return null if there are no changes; else, a new
 DirectoryReader instance.
 */
- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChanged;

/*!
 @brief Implement this method to support <code>openIfChanged(DirectoryReader,IndexCommit)</code>.
 If this reader does not support reopen from a specific <code>IndexCommit</code>,
 throw <code>UnsupportedOperationException</code>.
 @throws IOException if there is a low-level IO error
 @return null if there are no changes; else, a new
 DirectoryReader instance.
 */
- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

/*!
 @brief Implement this method to support <code>openIfChanged(DirectoryReader,IndexWriter,boolean)</code>.
 If this reader does not support reopen from <code>IndexWriter</code>,
 throw <code>UnsupportedOperationException</code>.
 @throws IOException if there is a low-level IO error
 @return null if there are no changes; else, a new
 DirectoryReader instance.
 */
- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                                withBoolean:(jboolean)applyAllDeletes;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDirectoryReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDirectoryReader, directory_, OrgApacheLuceneStoreDirectory *)

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexWriter_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes);

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexIndexCommit *commit);

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexDirectoryReader *oldReader);

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexDirectoryReader *oldReader, OrgApacheLuceneIndexIndexCommit *commit);

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexIndexWriter_withBoolean_(OrgApacheLuceneIndexDirectoryReader *oldReader, OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes);

FOUNDATION_EXPORT id<JavaUtilList> OrgApacheLuceneIndexDirectoryReader_listCommitsWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir);

FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexDirectoryReader_indexExistsWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

FOUNDATION_EXPORT void OrgApacheLuceneIndexDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_(OrgApacheLuceneIndexDirectoryReader *self, OrgApacheLuceneStoreDirectory *directory, IOSObjectArray *segmentReaders);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDirectoryReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDirectoryReader")