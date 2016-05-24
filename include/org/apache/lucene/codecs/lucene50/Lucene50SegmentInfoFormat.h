//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50SegmentInfoFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat")
#ifdef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat

#if !defined (OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat || defined(INCLUDE_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat))
#define OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_

#define RESTRICT_OrgApacheLuceneCodecsSegmentInfoFormat 1
#define INCLUDE_OrgApacheLuceneCodecsSegmentInfoFormat 1
#include "org/apache/lucene/codecs/SegmentInfoFormat.h"

@class IOSByteArray;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;

/*!
 @brief Lucene 5.0 Segment info format.
 <p>
 Files:
 <ul>
 <li><tt>.si</tt>: Header, SegVersion, SegSize, IsCompoundFile, Diagnostics, Files, Attributes, Footer
 </ul>
 Data types:
 <ul>
 <li>Header --&gt; <code>IndexHeader</code></li>
 <li>SegSize --&gt; <code>Int32</code></li>
 <li>SegVersion --&gt; <code>String</code></li>
 <li>Files --&gt; <code>Set&lt;String&gt;</code></li>
 <li>Diagnostics,Attributes --&gt; <code>Map&lt;String,String&gt;</code></li>
 <li>IsCompoundFile --&gt; <code>Int8</code></li>
 <li>Footer --&gt; <code>CodecFooter</code></li>
 </ul>
 Field Descriptions:
 <ul>
 <li>SegVersion is the code version that created the segment.</li>
 <li>SegSize is the number of documents contained in the segment index.</li>
 <li>IsCompoundFile records whether the segment is written as a compound file or
 not. If this is -1, the segment is not a compound file. If it is 1, the segment
 is a compound file.</li>
 <li>The Diagnostics Map is privately written by <code>IndexWriter</code>, as a debugging aid,
 for each segment it creates. It includes metadata like the current Lucene
 version, OS, Java version, why the segment was created (merge, flush,
 addIndexes), etc.</li>
 <li>Files is a list of files referred to by this segment.</li>
 </ul>
 - seealso: SegmentInfos
 */
@interface OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat : OrgApacheLuceneCodecsSegmentInfoFormat

+ (NSString *)SI_EXTENSION;

+ (NSString *)CODEC_NAME;

+ (jint)VERSION_START;

+ (jint)VERSION_SAFE_MAPS;

+ (jint)VERSION_CURRENT;

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)init;

- (OrgApacheLuceneIndexSegmentInfo *)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                              withNSString:(NSString *)segment
                                                             withByteArray:(IOSByteArray *)segmentID
                                         withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)ioContext;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat)

/*!
 @brief File extension used to store <code>SegmentInfo</code>.
 */
inline NSString *OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_get_SI_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_SI_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat, SI_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_get_CODEC_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat, CODEC_NAME, NSString *)

inline jint OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_get_VERSION_START();
#define OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat, VERSION_START, jint)

inline jint OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_get_VERSION_SAFE_MAPS();
#define OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_VERSION_SAFE_MAPS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat, VERSION_SAFE_MAPS, jint)

inline jint OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_get_VERSION_CURRENT();
#define OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_VERSION_CURRENT 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat, VERSION_CURRENT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_init(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat *new_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat *create_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat")