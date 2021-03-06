//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionPostingsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat))
#define OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_

#define RESTRICT_OrgApacheLuceneCodecsPostingsFormat 1
#define INCLUDE_OrgApacheLuceneCodecsPostingsFormat 1
#include "org/apache/lucene/codecs/PostingsFormat.h"

@class OrgApacheLuceneCodecsFieldsConsumer;
@class OrgApacheLuceneCodecsFieldsProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;

/*!
 @brief <p>
 A <code>PostingsFormat</code> which supports document suggestion based on
 indexed <code>SuggestField</code>s.
 Document suggestion is based on an weighted FST which map analyzed
 terms of a <code>SuggestField</code> to its surface form and document id.
 </p>
 <p>
 Files:
 <ul>
 <li><tt>.lkp</tt>: <a href="#Completiondictionary">Completion Dictionary</a></li>
 <li><tt>.cmp</tt>: <a href="#Completionindex">Completion Index</a></li>
 </ul>
 <p>
 <a name="Completionictionary"></a>
 <h3>Completion Dictionary</h3>
 <p>The .lkp file contains an FST for each suggest field
 </p>
 <ul>
 <li>CompletionDict (.lkp) --&gt; Header, FST<sup>NumSuggestFields</sup>, Footer</li>
 <li>Header --&gt; <code>CodecHeader</code></li>
 <!-- TODO: should the FST output be mentioned at all? -->
 <li>FST --&gt; <code>FST&lt;Long, BytesRef&gt;</code></li>
 <li>Footer --&gt; <code>CodecFooter</code></li>
 </ul>
 <p>Notes:</p>
 <ul>
 <li>Header is a <code>CodecHeader</code> storing the version information
 for the Completion implementation.</li>
 <li>FST maps all analyzed forms to surface forms of a SuggestField</li>
 </ul>
 <a name="Completionindex"></a>
 <h3>Completion Index</h3>
 <p>The .cmp file contains an index into the completion dictionary, so that it can be
 accessed randomly.</p>
 <ul>
 <li>CompletionIndex (.cmp) --&gt; Header, NumSuggestFields, Entry<sup>NumSuggestFields</sup>, Footer</li>
 <li>Header --&gt; <code>CodecHeader</code></li>
 <li>NumSuggestFields --&gt; <code>Uint32</code></li>
 <li>Entry --&gt; FieldNumber, CompletionDictionaryOffset, MinWeight, MaxWeight, Type</li>
 <li>FieldNumber --&gt; <code>Uint32</code></li>
 <li>CompletionDictionaryOffset --&gt; <code>Uint64</code></li>
 <li>MinWeight --&gt; <code>Uint64</code></li>
 <li>MaxWeight --&gt; <code>Uint64</code></li>
 <li>Type --&gt; <code>Byte</code></li>
 <li>Footer --&gt; <code>CodecFooter</code></li>
 </ul>
 <p>Notes:</p>
 <ul>
 <li>Header is a <code>CodecHeader</code> storing the version information
 for the Completion implementation.</li>
 <li>NumSuggestFields is the number of suggest fields indexed</li>
 <li>FieldNumber is the fields number from <code>FieldInfos</code>. (.fnm)</li>
 <li>CompletionDictionaryOffset is the file offset of a field's FST in CompletionDictionary (.lkp)</li>
 <li>MinWeight and MaxWeight are the global minimum and maximum weight for the field</li>
 <li>Type indicates if the suggester has context or not</li>
 </ul>
 */
@interface OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat : OrgApacheLuceneCodecsPostingsFormat

+ (NSString *)CODEC_NAME;

+ (jint)COMPLETION_CODEC_VERSION;

+ (jint)COMPLETION_VERSION_CURRENT;

+ (NSString *)INDEX_EXTENSION;

+ (NSString *)DICT_EXTENSION;

#pragma mark Public

/*!
 @brief Used only by core Lucene at read-time via Service Provider instantiation
 */
- (instancetype)init;

- (OrgApacheLuceneCodecsFieldsConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsFieldsProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

#pragma mark Protected

/*!
 @brief Concrete implementation should specify the delegating postings format
 */
- (OrgApacheLuceneCodecsPostingsFormat *)delegatePostingsFormat;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat)

inline NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_get_CODEC_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat, CODEC_NAME, NSString *)

inline jint OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_get_COMPLETION_CODEC_VERSION();
#define OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_CODEC_VERSION 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat, COMPLETION_CODEC_VERSION, jint)

inline jint OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_get_COMPLETION_VERSION_CURRENT();
#define OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_VERSION_CURRENT 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat, COMPLETION_VERSION_CURRENT, jint)

inline NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_get_INDEX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_INDEX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat, INDEX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_get_DICT_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_DICT_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat, DICT_EXTENSION, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_init(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat")
