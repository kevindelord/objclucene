//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/SliceWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeSliceWriter")
#ifdef RESTRICT_OrgApacheLuceneRangetreeSliceWriter
#define INCLUDE_ALL_OrgApacheLuceneRangetreeSliceWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneRangetreeSliceWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneRangetreeSliceWriter

#if !defined (OrgApacheLuceneRangetreeSliceWriter_) && (INCLUDE_ALL_OrgApacheLuceneRangetreeSliceWriter || defined(INCLUDE_OrgApacheLuceneRangetreeSliceWriter))
#define OrgApacheLuceneRangetreeSliceWriter_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@protocol OrgApacheLuceneRangetreeSliceReader;

/*!
 @brief Abstracts away whether OfflineSorter or simple arrays in heap are used.
 */
@protocol OrgApacheLuceneRangetreeSliceWriter < JavaIoCloseable, NSObject, JavaObject >

- (void)appendWithLong:(jlong)value
              withLong:(jlong)ord
               withInt:(jint)docID;

- (id<OrgApacheLuceneRangetreeSliceReader>)getReaderWithLong:(jlong)start;

- (void)destroy;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeSliceWriter)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeSliceWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeSliceWriter")
