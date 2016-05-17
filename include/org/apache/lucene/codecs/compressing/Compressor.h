//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/Compressor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressor")
#ifdef RESTRICT_OrgApacheLuceneCodecsCompressingCompressor
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressor 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsCompressingCompressor

#if !defined (OrgApacheLuceneCodecsCompressingCompressor_) && (INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressor || defined(INCLUDE_OrgApacheLuceneCodecsCompressingCompressor))
#define OrgApacheLuceneCodecsCompressingCompressor_

@class IOSByteArray;
@class OrgApacheLuceneStoreDataOutput;

/*!
 @brief A data compressor.
 */
@interface OrgApacheLuceneCodecsCompressingCompressor : NSObject

#pragma mark Public

/*!
 @brief Compress bytes into <code>out</code>.
 It it the responsibility of the
 compressor to add all necessary information so that a <code>Decompressor</code>
 will know when to stop decompressing bytes from the stream.
 */
- (void)compressWithByteArray:(IOSByteArray *)bytes
                      withInt:(jint)off
                      withInt:(jint)len
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

#pragma mark Protected

/*!
 @brief Sole constructor, typically called from sub-classes.
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressor)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressor_init(OrgApacheLuceneCodecsCompressingCompressor *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressor)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressor")
