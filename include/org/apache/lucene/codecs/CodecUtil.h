//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/CodecUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCodecUtil")
#ifdef RESTRICT_OrgApacheLuceneCodecsCodecUtil
#define INCLUDE_ALL_OrgApacheLuceneCodecsCodecUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsCodecUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsCodecUtil

#if !defined (OrgApacheLuceneCodecsCodecUtil_) && (INCLUDE_ALL_OrgApacheLuceneCodecsCodecUtil || defined(INCLUDE_OrgApacheLuceneCodecsCodecUtil))
#define OrgApacheLuceneCodecsCodecUtil_

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneStoreChecksumIndexInput;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneStoreIndexOutput;

/*!
 @brief Utility class for reading and writing versioned headers.
 <p>
 Writing codec headers is useful to ensure that a file is in 
 the format you think it is.
 */
@interface OrgApacheLuceneCodecsCodecUtil : NSObject

+ (jint)CODEC_MAGIC;

+ (jint)FOOTER_MAGIC;

#pragma mark Public

/*!
 @brief Checks that the stream is positioned at the end, and throws exception
 if it is not.
 */
+ (void)checkEOFWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg;

/*!
 @brief Validates the codec footer previously written by <code>writeFooter</code>.
 @return actual checksum value
 @throws IOException if the footer is invalid, if the checksum does not match, 
 or if <code>in</code> is not properly positioned before the footer
 at the end of the stream.
 */
+ (jlong)checkFooterWithOrgApacheLuceneStoreChecksumIndexInput:(OrgApacheLuceneStoreChecksumIndexInput *)inArg;

/*!
 @brief Validates the codec footer previously written by <code>writeFooter</code>, optionally
 passing an unexpected exception that has already occurred.
 <p>
 When a <code>priorException</code> is provided, this method will add a suppressed exception 
 indicating whether the checksum for the stream passes, fails, or cannot be computed, and 
 rethrow it. Otherwise it behaves the same as <code>checkFooter(ChecksumIndexInput)</code>.
 <p>
 Example usage:
 <pre class="prettyprint">
 try (ChecksumIndexInput input = ...) {
 Throwable priorE = null;
 try {
 // ... read a bunch of stuff ... 
 } catch (Throwable exception) {
 priorE = exception;
 } finally {
 CodecUtil.checkFooter(input, priorE);
 }
 }
 
@endcode
 */
+ (void)checkFooterWithOrgApacheLuceneStoreChecksumIndexInput:(OrgApacheLuceneStoreChecksumIndexInput *)inArg
                                              withNSException:(NSException *)priorException;

/*!
 @brief Reads and validates a header previously written with 
 <code>writeHeader(DataOutput,String,int)</code>.
 <p>
 When reading a file, supply the expected <code>codec</code> and
 an expected version range (<code>minVersion to maxVersion</code>).
 @param inArg Input stream, positioned at the point where the
 header was previously written. Typically this is located
 at the beginning of the file.
 @param codec The expected codec name.
 @param minVersion The minimum supported expected version number.
 @param maxVersion The maximum supported expected version number.
 @return The actual version found, when a valid header is found 
 that matches <code>codec</code>, with an actual version 
 where <code>minVersion <= actual <= maxVersion</code>.
 Otherwise an exception is thrown.
 @throws CorruptIndexException If the first four bytes are not
 <code>CODEC_MAGIC</code>, or if the actual codec found is
 not <code>codec</code>.
 @throws IndexFormatTooOldException If the actual version is less 
 than <code>minVersion</code>.
 @throws IndexFormatTooNewException If the actual version is greater 
 than <code>maxVersion</code>.
 @throws IOException If there is an I/O error reading from the underlying medium.
 - seealso: #writeHeader(DataOutput,String,int)
 */
+ (jint)checkHeaderWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                        withNSString:(NSString *)codec
                                             withInt:(jint)minVersion
                                             withInt:(jint)maxVersion;

/*!
 @brief Like <code>checkHeader(DataInput,String,int,int)</code>
  except this
 version assumes the first int has already been read
 and validated from the input.
 */
+ (jint)checkHeaderNoMagicWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                               withNSString:(NSString *)codec
                                                    withInt:(jint)minVersion
                                                    withInt:(jint)maxVersion;

/*!
 @brief Reads and validates a header previously written with 
 <code>writeIndexHeader(DataOutput,String,int,byte[],String)</code>.
 <p>
 When reading a file, supply the expected <code>codec</code>,
 expected version range (<code>minVersion to maxVersion</code>),
 and object ID and suffix.
 @param inArg Input stream, positioned at the point where the
 header was previously written. Typically this is located
 at the beginning of the file.
 @param codec The expected codec name.
 @param minVersion The minimum supported expected version number.
 @param maxVersion The maximum supported expected version number.
 @param expectedID The expected object identifier for this file.
 @param expectedSuffix The expected auxiliary suffix for this file.
 @return The actual version found, when a valid header is found 
 that matches <code>codec</code>, with an actual version 
 where <code>minVersion <= actual <= maxVersion</code>, 
 and matching <code>expectedID</code> and <code>expectedSuffix</code>
 Otherwise an exception is thrown.
 @throws CorruptIndexException If the first four bytes are not
 <code>CODEC_MAGIC</code>, or if the actual codec found is
 not <code>codec</code>, or if the <code>expectedID</code>
 or <code>expectedSuffix</code> do not match.
 @throws IndexFormatTooOldException If the actual version is less 
 than <code>minVersion</code>.
 @throws IndexFormatTooNewException If the actual version is greater 
 than <code>maxVersion</code>.
 @throws IOException If there is an I/O error reading from the underlying medium.
 - seealso: #writeIndexHeader(DataOutput,String,int,byte[],String)
 */
+ (jint)checkIndexHeaderWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                             withNSString:(NSString *)codec
                                                  withInt:(jint)minVersion
                                                  withInt:(jint)maxVersion
                                            withByteArray:(IOSByteArray *)expectedID
                                             withNSString:(NSString *)expectedSuffix;

/*!
 @brief Expert: just reads and verifies the object ID of an index header
 */
+ (IOSByteArray *)checkIndexHeaderIDWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                                        withByteArray:(IOSByteArray *)expectedID;

/*!
 @brief Expert: just reads and verifies the suffix of an index header
 */
+ (NSString *)checkIndexHeaderSuffixWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                                         withNSString:(NSString *)expectedSuffix;

/*!
 @brief Clones the provided input, reads all bytes from the file, and calls <code>checkFooter</code> 
 <p>
 Note that this method may be slow, as it must process the entire file.
 If you just need to extract the checksum value, call <code>retrieveChecksum</code>.
 */
+ (jlong)checksumEntireFileWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input;

/*!
 @brief Computes the length of a codec footer.
 @return length of the entire codec footer.
 - seealso: #writeFooter(IndexOutput)
 */
+ (jint)footerLength;

/*!
 @brief Computes the length of a codec header.
 @param codec Codec name.
 @return length of the entire codec header.
 - seealso: #writeHeader(DataOutput,String,int)
 */
+ (jint)headerLengthWithNSString:(NSString *)codec;

/*!
 @brief Computes the length of an index header.
 @param codec Codec name.
 @return length of the entire index header.
 - seealso: #writeIndexHeader(DataOutput,String,int,byte[],String)
 */
+ (jint)indexHeaderLengthWithNSString:(NSString *)codec
                         withNSString:(NSString *)suffix;

/*!
 @brief Reads CRC32 value as a 64-bit long from the input.
 @throws CorruptIndexException if CRC is formatted incorrectly (wrong bits set)
 @throws IOException if an i/o error occurs
 */
+ (jlong)readCRCWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input;

/*!
 @brief Returns (but does not validate) the checksum previously written by <code>checkFooter</code>.
 @return actual checksum value
 @throws IOException if the footer is invalid
 */
+ (jlong)retrieveChecksumWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg;

/*!
 @brief Writes CRC32 value as a 64-bit long to the output.
 @throws IllegalStateException if CRC is formatted incorrectly (wrong bits set)
 @throws IOException if an i/o error occurs
 */
+ (void)writeCRCWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output;

/*!
 @brief Writes a codec footer, which records both a checksum
 algorithm ID and a checksum.
 This footer can
 be parsed and validated with 
 <code>checkFooter()</code>.
 <p>
 CodecFooter --&gt; Magic,AlgorithmID,Checksum
 <ul>
 <li>Magic --&gt; <code>Uint32</code>. This
 identifies the start of the footer. It is always #FOOTER_MAGIC.
 <li>AlgorithmID --&gt; <code>Uint32</code>. This
 indicates the checksum algorithm used. Currently this is always 0,
 for zlib-crc32.
 <li>Checksum --&gt; <code>Uint64</code>. The
 actual checksum value for all previous bytes in the stream, including
 the bytes from Magic and AlgorithmID.
 </ul>
 @param outArg Output stream
 @throws IOException If there is an I/O error writing to the underlying medium.
 */
+ (void)writeFooterWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg;

/*!
 @brief Writes a codec header, which records both a string to
 identify the file and a version number.
 This header can
 be parsed and validated with 
 <code>checkHeader()</code>.
 <p>
 CodecHeader --&gt; Magic,CodecName,Version
 <ul>
 <li>Magic --&gt; <code>Uint32</code>. This
 identifies the start of the header. It is always #CODEC_MAGIC.
 <li>CodecName --&gt; <code>String</code>. This
 is a string to identify this file.
 <li>Version --&gt; <code>Uint32</code>. Records
 the version of the file.
 </ul>
 <p>
 Note that the length of a codec header depends only upon the
 name of the codec, so this length can be computed at any time
 with <code>headerLength(String)</code>.
 @param outArg Output stream
 @param codec String to identify this file. It should be simple ASCII, 
 less than 128 characters in length.
 @param version_ Version number
 @throws IOException If there is an I/O error writing to the underlying medium.
 @throws IllegalArgumentException If the codec name is not simple ASCII, or is more than 127 characters in length
 */
+ (void)writeHeaderWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                         withNSString:(NSString *)codec
                                              withInt:(jint)version_;

/*!
 @brief Writes a codec header for an index file, which records both a string to
 identify the format of the file, a version number, and data to identify
 the file instance (ID and auxiliary suffix such as generation).
 <p>
 This header can be parsed and validated with 
 <code>checkIndexHeader()</code>.
 <p>
 IndexHeader --&gt; CodecHeader,ObjectID,ObjectSuffix
 <ul>
 <li>CodecHeader   --&gt; <code>writeHeader</code>
 <li>ObjectID     --&gt; <code>byte</code><sup>16</sup>
 <li>ObjectSuffix --&gt; SuffixLength,SuffixBytes
 <li>SuffixLength  --&gt; <code>byte</code>
 <li>SuffixBytes   --&gt; <code>byte</code><sup>SuffixLength</sup>
 </ul>
 <p>
 Note that the length of an index header depends only upon the
 name of the codec and suffix, so this length can be computed at any time
 with <code>indexHeaderLength(String,String)</code>.
 @param outArg Output stream
 @param codec String to identify the format of this file. It should be simple ASCII, 
 less than 128 characters in length.
 @param id_ Unique identifier for this particular file instance.
 @param suffix auxiliary suffix information for the file. It should be simple ASCII,
 less than 256 characters in length.
 @param version_ Version number
 @throws IOException If there is an I/O error writing to the underlying medium.
 @throws IllegalArgumentException If the codec name is not simple ASCII, or 
 is more than 127 characters in length, or if id is invalid,
 or if the suffix is not simple ASCII, or more than 255 characters
 in length.
 */
+ (void)writeIndexHeaderWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                              withNSString:(NSString *)codec
                                                   withInt:(jint)version_
                                             withByteArray:(IOSByteArray *)id_
                                              withNSString:(NSString *)suffix;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCodecUtil)

/*!
 @brief Constant to identify the start of a codec header.
 */
inline jint OrgApacheLuceneCodecsCodecUtil_get_CODEC_MAGIC();
#define OrgApacheLuceneCodecsCodecUtil_CODEC_MAGIC 1071082519
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCodecUtil, CODEC_MAGIC, jint)

/*!
 @brief Constant to identify the start of a codec footer.
 */
inline jint OrgApacheLuceneCodecsCodecUtil_get_FOOTER_MAGIC();
#define OrgApacheLuceneCodecsCodecUtil_FOOTER_MAGIC -1071082520
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCodecUtil, FOOTER_MAGIC, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(OrgApacheLuceneStoreDataOutput *outArg, NSString *codec, jint version_);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(OrgApacheLuceneStoreDataOutput *outArg, NSString *codec, jint version_, IOSByteArray *id_, NSString *suffix);

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCodecUtil_headerLengthWithNSString_(NSString *codec);

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCodecUtil_indexHeaderLengthWithNSString_withNSString_(NSString *codec, NSString *suffix);

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, NSString *codec, jint minVersion, jint maxVersion);

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCodecUtil_checkHeaderNoMagicWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, NSString *codec, jint minVersion, jint maxVersion);

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *codec, jint minVersion, jint maxVersion, IOSByteArray *expectedID, NSString *expectedSuffix);

FOUNDATION_EXPORT IOSByteArray *OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderIDWithOrgApacheLuceneStoreDataInput_withByteArray_(OrgApacheLuceneStoreDataInput *inArg, IOSByteArray *expectedID);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderSuffixWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *expectedSuffix);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreIndexOutput *outArg);

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCodecUtil_footerLength();

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_(OrgApacheLuceneStoreChecksumIndexInput *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withNSException_(OrgApacheLuceneStoreChecksumIndexInput *inArg, NSException *priorException);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCodecUtil_checkEOFWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *inArg);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *input);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsCodecUtil_readCRCWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *input);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCodecUtil_writeCRCWithOrgApacheLuceneStoreIndexOutput_(OrgApacheLuceneStoreIndexOutput *output);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCodecUtil)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCodecUtil")