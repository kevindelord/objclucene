//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/IDVersionPostingsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat")
#ifdef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat

#if !defined (OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_) && (INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat || defined(INCLUDE_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat))
#define OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_

#define RESTRICT_OrgApacheLuceneCodecsPostingsFormat 1
#define INCLUDE_OrgApacheLuceneCodecsPostingsFormat 1
#include "org/apache/lucene/codecs/PostingsFormat.h"

@class OrgApacheLuceneCodecsFieldsConsumer;
@class OrgApacheLuceneCodecsFieldsProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief A PostingsFormat optimized for primary-key (ID) fields that also
 record a version (long) for each ID, delivered as a payload
 created by <code>longToBytes</code> during indexing.
 At search time,
 the TermsEnum implementation <code>IDVersionSegmentTermsEnum</code>
 enables fast (using only the terms index when possible) lookup for
 whether a given ID was previously indexed with version &gt; N (see
 <code>IDVersionSegmentTermsEnum.seekExact(BytesRef,long)</code>.
 <p>This is most effective if the app assigns monotonically
 increasing global version to each indexed doc.  Then, during
 indexing, use <code>IDVersionSegmentTermsEnum.seekExact(BytesRef,long)</code>
  (along with
 <code>LiveFieldValues</code>) to decide whether the document you are
 about to index was already indexed with a higher version, and skip
 it if so.
 <p>The field is effectively indexed as DOCS_ONLY and the docID is
 pulsed into the terms dictionary, but the user must feed in the
 version as a payload on the first token.
 <p>NOTE: term vectors cannot be indexed with this field (not that
 you should really ever want to do this).
  
 */
@interface OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat : OrgApacheLuceneCodecsPostingsFormat

+ (jlong)MIN_VERSION;

+ (jlong)MAX_VERSION;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)minTermsInBlock
                    withInt:(jint)maxTermsInBlock;

+ (jlong)bytesToLongWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

- (OrgApacheLuceneCodecsFieldsConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsFieldsProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

+ (void)longToBytesWithLong:(jlong)v
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat)

/*!
 @brief version must be &gt;= this.
 */
inline jlong OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_get_MIN_VERSION();
#define OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_MIN_VERSION 0LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat, MIN_VERSION, jlong)

/*!
 @brief version must be &lt;= this, because we encode with ZigZag.
 */
inline jlong OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_get_MAX_VERSION();
#define OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_MAX_VERSION 4611686018427387903LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat, MAX_VERSION, jlong)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_init(OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat *new_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat *create_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_init();

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_initWithInt_withInt_(OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat *self, jint minTermsInBlock, jint maxTermsInBlock);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat *new_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_initWithInt_withInt_(jint minTermsInBlock, jint maxTermsInBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat *create_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_initWithInt_withInt_(jint minTermsInBlock, jint maxTermsInBlock);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_bytesToLongWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *bytes);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_longToBytesWithLong_withOrgApacheLuceneUtilBytesRef_(jlong v, OrgApacheLuceneUtilBytesRef *bytes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat")
