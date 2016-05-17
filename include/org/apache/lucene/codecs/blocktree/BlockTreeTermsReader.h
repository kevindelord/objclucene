//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/BlockTreeTermsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader")
#ifdef RESTRICT_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader

#if !defined (OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_) && (INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader || defined(INCLUDE_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader))
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_

#define RESTRICT_OrgApacheLuceneCodecsFieldsProducer 1
#define INCLUDE_OrgApacheLuceneCodecsFieldsProducer 1
#include "org/apache/lucene/codecs/FieldsProducer.h"

@class OrgApacheLuceneCodecsPostingsReaderBase;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilFstOutputs;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;

/*!
 @brief A block-based terms index and dictionary that assigns
 terms to variable length blocks according to how they
 share prefixes.
 The terms index is a prefix trie
 whose leaves are term blocks.  The advantage of this
 approach is that seekExact is often able to
 determine a term cannot exist without doing any IO, and
 intersection with Automata is very fast.  Note that this
 terms dictionary has its own fixed terms index (ie, it
 does not support a pluggable terms index
 implementation).
 <p><b>NOTE</b>: this terms dictionary supports
 min/maxItemsPerBlock during indexing to control how
 much memory the terms index uses.</p>
 <p>If auto-prefix terms were indexed (see
 <code>BlockTreeTermsWriter</code>), then the <code>Terms.intersect</code>
 implementation here will make use of these terms only if the
 automaton has a binary sink state, i.e. an accept state
 which has a transition to itself accepting all byte values.
 For example, both <code>PrefixQuery</code> and <code>TermRangeQuery</code>
 pass such automata to <code>Terms.intersect</code>.</p>
 <p>The data structure used by this implementation is very
 similar to a burst trie
 (http://citeseer.ist.psu.edu/viewdoc/summary?doi=10.1.1.18.3499),
 but with added logic to break up too-large blocks of all
 terms sharing a given prefix into smaller ones.</p>
 <p>Use <code>org.apache.lucene.index.CheckIndex</code> with the <code>-verbose</code>
 option to see summary statistics on the blocks in the
 dictionary.
 See <code>BlockTreeTermsWriter</code>.
 */
@interface OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader : OrgApacheLuceneCodecsFieldsProducer {
 @public
  OrgApacheLuceneStoreIndexInput *termsIn_;
  OrgApacheLuceneCodecsPostingsReaderBase *postingsReader_;
  NSString *segment_;
  jint version__;
  jboolean anyAutoPrefixTerms_;
}

+ (OrgApacheLuceneUtilFstOutputs *)FST_OUTPUTS;

+ (OrgApacheLuceneUtilBytesRef *)NO_OUTPUT;

+ (jint)OUTPUT_FLAGS_NUM_BITS;

+ (jint)OUTPUT_FLAGS_MASK;

+ (jint)OUTPUT_FLAG_IS_FLOOR;

+ (jint)OUTPUT_FLAG_HAS_TERMS;

+ (NSString *)TERMS_EXTENSION;

+ (NSString *)TERMS_CODEC_NAME;

+ (jint)VERSION_START;

+ (jint)VERSION_AUTO_PREFIX_TERMS;

+ (jint)VERSION_AUTO_PREFIX_TERMS_COND;

+ (jint)VERSION_CURRENT;

+ (NSString *)TERMS_INDEX_EXTENSION;

+ (NSString *)TERMS_INDEX_CODEC_NAME;

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)initWithOrgApacheLuceneCodecsPostingsReaderBase:(OrgApacheLuceneCodecsPostingsReaderBase *)postingsReader
                       withOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

- (void)checkIntegrity;

- (void)close;

- (id<JavaUtilCollection>)getChildResources;

- (id<JavaUtilIterator>)iterator;

- (jlong)ramBytesUsed;

- (jint)size;

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

- (NSString *)description;

#pragma mark Package-Private

- (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, termsIn_, OrgApacheLuceneStoreIndexInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, postingsReader_, OrgApacheLuceneCodecsPostingsReaderBase *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, segment_, NSString *)

inline OrgApacheLuceneUtilFstOutputs *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_FST_OUTPUTS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilFstOutputs *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, FST_OUTPUTS, OrgApacheLuceneUtilFstOutputs *)

inline OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_NO_OUTPUT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, NO_OUTPUT, OrgApacheLuceneUtilBytesRef *)

inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_OUTPUT_FLAGS_NUM_BITS();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAGS_NUM_BITS 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, OUTPUT_FLAGS_NUM_BITS, jint)

inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_OUTPUT_FLAGS_MASK();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAGS_MASK 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, OUTPUT_FLAGS_MASK, jint)

inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_OUTPUT_FLAG_IS_FLOOR();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAG_IS_FLOOR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, OUTPUT_FLAG_IS_FLOOR, jint)

inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_OUTPUT_FLAG_HAS_TERMS();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAG_HAS_TERMS 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, OUTPUT_FLAG_HAS_TERMS, jint)

/*!
 @brief Extension of terms file
 */
inline NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_TERMS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, TERMS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_TERMS_CODEC_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, TERMS_CODEC_NAME, NSString *)

/*!
 @brief Initial terms format.
 */
inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_VERSION_START();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, VERSION_START, jint)

/*!
 @brief Auto-prefix terms.
 */
inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_VERSION_AUTO_PREFIX_TERMS();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, VERSION_AUTO_PREFIX_TERMS, jint)

/*!
 @brief Conditional auto-prefix terms: we record at write time whether
 this field did write any auto-prefix terms.
 */
inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_VERSION_AUTO_PREFIX_TERMS_COND();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_AUTO_PREFIX_TERMS_COND 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, VERSION_AUTO_PREFIX_TERMS_COND, jint)

/*!
 @brief Current terms format.
 */
inline jint OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_VERSION_CURRENT();
#define OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_VERSION_CURRENT 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, VERSION_CURRENT, jint)

/*!
 @brief Extension of terms index file
 */
inline NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_TERMS_INDEX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, TERMS_INDEX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_get_TERMS_INDEX_CODEC_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader, TERMS_INDEX_CODEC_NAME, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *self, OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *new_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *create_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader")
