//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/SegmentInfoFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsSegmentInfoFormat")
#ifdef RESTRICT_OrgApacheLuceneCodecsSegmentInfoFormat
#define INCLUDE_ALL_OrgApacheLuceneCodecsSegmentInfoFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsSegmentInfoFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsSegmentInfoFormat

#if !defined (OrgApacheLuceneCodecsSegmentInfoFormat_) && (INCLUDE_ALL_OrgApacheLuceneCodecsSegmentInfoFormat || defined(INCLUDE_OrgApacheLuceneCodecsSegmentInfoFormat))
#define OrgApacheLuceneCodecsSegmentInfoFormat_

@class IOSByteArray;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

/*!
 @brief Expert: Controls the format of the 
 <code>SegmentInfo</code> (segment metadata file).
 - seealso: SegmentInfo
 */
@interface OrgApacheLuceneCodecsSegmentInfoFormat : NSObject

#pragma mark Public

/*!
 @brief Read <code>SegmentInfo</code> data from a directory.
 @param directory directory to read from
 @param segmentName name of the segment to read
 @param segmentID expected identifier for the segment
 @return infos instance to be populated with data
 @throws IOException If an I/O error occurs
 */
- (OrgApacheLuceneIndexSegmentInfo *)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                                              withNSString:(NSString *)segmentName
                                                             withByteArray:(IOSByteArray *)segmentID
                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

/*!
 @brief Write <code>SegmentInfo</code> data.
 The codec must add its SegmentInfo filename(s) to <code>info</code> before doing i/o. 
 @throws IOException If an I/O error occurs
 */
- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)ioContext;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
 constructors, typically implicit.) 
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsSegmentInfoFormat)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsSegmentInfoFormat_init(OrgApacheLuceneCodecsSegmentInfoFormat *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsSegmentInfoFormat)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsSegmentInfoFormat")
