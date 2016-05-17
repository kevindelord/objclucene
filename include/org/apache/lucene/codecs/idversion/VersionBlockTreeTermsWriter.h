//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/VersionBlockTreeTermsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter")
#ifdef RESTRICT_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter

#if !defined (OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_) && (INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter || defined(INCLUDE_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter))
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_

#define RESTRICT_OrgApacheLuceneCodecsFieldsConsumer 1
#define INCLUDE_OrgApacheLuceneCodecsFieldsConsumer 1
#include "org/apache/lucene/codecs/FieldsConsumer.h"

@class IOSByteArray;
@class OrgApacheLuceneCodecsPostingsWriterBase;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstPairOutputs;
@class OrgApacheLuceneUtilFstPairOutputs_Pair;

/*!
 @brief This is just like <code>BlockTreeTermsWriter</code>, except it also stores a version per term, and adds a method to its TermsEnum
 implementation to seekExact only if the version is &gt;= the specified version.
 The version is added to the terms index to avoid seeking if
 no term in the block has a high enough version.  The term blocks file is .tiv and the terms index extension is .tipv.
 */
@interface OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter : OrgApacheLuceneCodecsFieldsConsumer {
 @public
  jint maxDoc_;
  jint minItemsInBlock_;
  jint maxItemsInBlock_;
  OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
}

+ (OrgApacheLuceneUtilFstPairOutputs *)FST_OUTPUTS;

+ (OrgApacheLuceneUtilFstPairOutputs_Pair *)NO_OUTPUT;

+ (jint)DEFAULT_MIN_BLOCK_SIZE;

+ (jint)DEFAULT_MAX_BLOCK_SIZE;

+ (jint)OUTPUT_FLAGS_NUM_BITS;

+ (jint)OUTPUT_FLAGS_MASK;

+ (jint)OUTPUT_FLAG_IS_FLOOR;

+ (jint)OUTPUT_FLAG_HAS_TERMS;

+ (NSString *)TERMS_EXTENSION;

+ (NSString *)TERMS_CODEC_NAME;

+ (jint)VERSION_START;

+ (jint)VERSION_CURRENT;

+ (NSString *)TERMS_INDEX_EXTENSION;

+ (NSString *)TERMS_INDEX_CODEC_NAME;

#pragma mark Public

/*!
 @brief Create a new writer.
 The number of items (terms or
 sub-blocks) per block will aim to be between
 minItemsPerBlock and maxItemsPerBlock, though in some
 cases the blocks may be smaller than the min. 
 */
- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                  withOrgApacheLuceneCodecsPostingsWriterBase:(OrgApacheLuceneCodecsPostingsWriterBase *)postingsWriter
                                                      withInt:(jint)minItemsInBlock
                                                      withInt:(jint)maxItemsInBlock;

- (void)close;

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields;

#pragma mark Package-Private

+ (NSString *)brToStringWithByteArray:(IOSByteArray *)b;

+ (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b;

+ (jlong)encodeOutputWithLong:(jlong)fp
                  withBoolean:(jboolean)hasTerms
                  withBoolean:(jboolean)isFloor;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, postingsWriter_, OrgApacheLuceneCodecsPostingsWriterBase *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)

inline OrgApacheLuceneUtilFstPairOutputs *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_FST_OUTPUTS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilFstPairOutputs *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_FST_OUTPUTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, FST_OUTPUTS, OrgApacheLuceneUtilFstPairOutputs *)

inline OrgApacheLuceneUtilFstPairOutputs_Pair *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_NO_OUTPUT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilFstPairOutputs_Pair *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_NO_OUTPUT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, NO_OUTPUT, OrgApacheLuceneUtilFstPairOutputs_Pair *)

/*!
 @brief Suggested default value for the <code>minItemsInBlock</code>
  parameter to <code>VersionBlockTreeTermsWriter(SegmentWriteState,PostingsWriterBase,int,int)</code>
 .
 */
inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_DEFAULT_MIN_BLOCK_SIZE();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_DEFAULT_MIN_BLOCK_SIZE 25
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, DEFAULT_MIN_BLOCK_SIZE, jint)

/*!
 @brief Suggested default value for the <code>maxItemsInBlock</code>
  parameter to <code>VersionBlockTreeTermsWriter(SegmentWriteState,PostingsWriterBase,int,int)</code>
 .
 */
inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_DEFAULT_MAX_BLOCK_SIZE();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_DEFAULT_MAX_BLOCK_SIZE 48
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, DEFAULT_MAX_BLOCK_SIZE, jint)

inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_OUTPUT_FLAGS_NUM_BITS();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_OUTPUT_FLAGS_NUM_BITS 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, OUTPUT_FLAGS_NUM_BITS, jint)

inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_OUTPUT_FLAGS_MASK();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_OUTPUT_FLAGS_MASK 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, OUTPUT_FLAGS_MASK, jint)

inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_OUTPUT_FLAG_IS_FLOOR();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_OUTPUT_FLAG_IS_FLOOR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, OUTPUT_FLAG_IS_FLOOR, jint)

inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_OUTPUT_FLAG_HAS_TERMS();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_OUTPUT_FLAG_HAS_TERMS 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, OUTPUT_FLAG_HAS_TERMS, jint)

/*!
 @brief Extension of terms file
 */
inline NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_TERMS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, TERMS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_TERMS_CODEC_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, TERMS_CODEC_NAME, NSString *)

/*!
 @brief Initial terms format.
 */
inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_VERSION_START();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_VERSION_START 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, VERSION_START, jint)

/*!
 @brief Current terms format.
 */
inline jint OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_VERSION_CURRENT();
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_VERSION_CURRENT 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, VERSION_CURRENT, jint)

/*!
 @brief Extension of terms index file
 */
inline NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_TERMS_INDEX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_INDEX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, TERMS_INDEX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_get_TERMS_INDEX_CODEC_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_INDEX_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, TERMS_INDEX_CODEC_NAME, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter *new_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter *create_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_withInt_withInt_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter, jint minItemsInBlock, jint maxItemsInBlock);

FOUNDATION_EXPORT jlong OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_encodeOutputWithLong_withBoolean_withBoolean_(jlong fp, jboolean hasTerms, jboolean isFloor);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_brToStringWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *b);

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_brToStringWithByteArray_(IOSByteArray *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter)

#endif

#if !defined (OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter_) && (INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter || defined(INCLUDE_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter))
#define OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter_

@class OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFixedBitSet;

@interface OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter : NSObject {
 @public
  OrgApacheLuceneUtilFixedBitSet *docsSeen_;
  jlong indexStartFP_;
}

#pragma mark Public

- (void)finish;

/*!
 @brief Writes one term's worth of postings.
 */
- (void)writeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
           withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter:(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter *)outer$
                                                withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

/*!
 @brief Writes the top count entries in pending, using prevTerm to compute the prefix.
 */
- (void)writeBlocksWithInt:(jint)prefixLength
                   withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter, docsSeen_, OrgApacheLuceneUtilFixedBitSet *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter *self, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter *new_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter *create_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TermsWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter")
