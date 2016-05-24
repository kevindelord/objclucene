//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RAMDirectory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory")
#ifdef RESTRICT_OrgApacheLuceneStoreRAMDirectory
#define INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreRAMDirectory

#if !defined (OrgApacheLuceneStoreRAMDirectory_) && (INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory || defined(INCLUDE_OrgApacheLuceneStoreRAMDirectory))
#define OrgApacheLuceneStoreRAMDirectory_

#define RESTRICT_OrgApacheLuceneStoreBaseDirectory 1
#define INCLUDE_OrgApacheLuceneStoreBaseDirectory 1
#include "org/apache/lucene/store/BaseDirectory.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSObjectArray;
@class JavaUtilConcurrentAtomicAtomicLong;
@class OrgApacheLuceneStoreFSDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneStoreIndexOutput;
@class OrgApacheLuceneStoreLockFactory;
@class OrgApacheLuceneStoreRAMFile;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

/*!
 @brief A memory-resident <code>Directory</code> implementation.
 Locking
 implementation is by default the <code>SingleInstanceLockFactory</code>.
 <p><b>Warning:</b> This class is not intended to work with huge
 indexes. Everything beyond several hundred megabytes will waste
 resources (GC cycles), because it uses an internal buffer size
 of 1024 bytes, producing millions of <code>byte[1024]</code> arrays.
 This class is optimized for small memory-resident indexes.
 It also has bad concurrency on multithreaded environments.
 <p>It is recommended to materialize large indexes on disk and use
 <code>MMapDirectory</code>, which is a high-performance directory
 implementation working directly on the file system cache of the
 operating system, so copying data to Java heap space is not useful.
 */
@interface OrgApacheLuceneStoreRAMDirectory : OrgApacheLuceneStoreBaseDirectory < OrgApacheLuceneUtilAccountable > {
 @public
  id<JavaUtilMap> fileMap_;
  JavaUtilConcurrentAtomicAtomicLong *sizeInBytes_;
}

#pragma mark Public

/*!
 @brief Constructs an empty <code>Directory</code>.
 */
- (instancetype)init;

/*!
 @brief Creates a new <code>RAMDirectory</code> instance from a different
 <code>Directory</code> implementation.
 This can be used to load
 a disk-based index into memory.
 <p><b>Warning:</b> This class is not intended to work with huge
 indexes. Everything beyond several hundred megabytes will waste
 resources (GC cycles), because it uses an internal buffer size
 of 1024 bytes, producing millions of <code>byte[1024]</code> arrays.
 This class is optimized for small memory-resident indexes.
 It also has bad concurrency on multithreaded environments.
 <p>For disk-based indexes it is recommended to use
 <code>MMapDirectory</code>, which is a high-performance directory
 implementation working directly on the file system cache of the
 operating system, so copying data to Java heap space is not useful.
 <p>Note that the resulting <code>RAMDirectory</code> instance is fully
 independent from the original <code>Directory</code> (it is a
 complete copy).  Any subsequent changes to the
 original <code>Directory</code> will not be visible in the
 <code>RAMDirectory</code> instance.
 @param dir a <code>Directory</code> value
 @exception IOException if an error occurs
 */
- (instancetype)initWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)dir
                      withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

/*!
 @brief Constructs an empty <code>Directory</code> with the given <code>LockFactory</code>.
 */
- (instancetype)initWithOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory;

/*!
 @brief Closes the store to future operations, releasing associated memory.
 */
- (void)close;

/*!
 @brief Creates a new, empty file in the directory with the given name.
 Returns a stream writing this file. 
 */
- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name
                            withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

/*!
 @brief Removes an existing file in the directory.
 @throws IOException if the file does not exist
 */
- (void)deleteFileWithNSString:(NSString *)name;

/*!
 @brief Returns the length in bytes of a file in the directory.
 @throws IOException if the file does not exist
 */
- (jlong)fileLengthWithNSString:(NSString *)name;

- (jboolean)fileNameExistsWithNSString:(NSString *)name;

- (id<JavaUtilCollection>)getChildResources;

- (IOSObjectArray *)listAll;

/*!
 @brief Returns a stream reading an existing file.
 */
- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

/*!
 @brief Return total size in bytes of all files in this directory.
 This is
 currently quantized to RAMOutputStream.BUFFER_SIZE.
 */
- (jlong)ramBytesUsed;

- (void)renameFileWithNSString:(NSString *)source
                  withNSString:(NSString *)dest;

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)names;

#pragma mark Protected

/*!
 @brief Returns a new <code>RAMFile</code> for storing data.
 This method can be
 overridden to return different <code>RAMFile</code> impls, that e.g. override
 <code>RAMFile.newBuffer(int)</code>.
 */
- (OrgApacheLuceneStoreRAMFile *)newRAMFile OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreRAMDirectory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMDirectory, fileMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMDirectory, sizeInBytes_, JavaUtilConcurrentAtomicAtomicLong *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreRAMDirectory_init(OrgApacheLuceneStoreRAMDirectory *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_init();

FOUNDATION_EXPORT void OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreRAMDirectory *self, OrgApacheLuceneStoreLockFactory *lockFactory);

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreLockFactory *lockFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreLockFactory *lockFactory);

FOUNDATION_EXPORT void OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreRAMDirectory *self, OrgApacheLuceneStoreFSDirectory *dir, OrgApacheLuceneStoreIOContext *context);

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, OrgApacheLuceneStoreIOContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, OrgApacheLuceneStoreIOContext *context);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreRAMDirectory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreRAMDirectory")