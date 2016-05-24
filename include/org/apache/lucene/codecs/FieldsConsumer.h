//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/FieldsConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsFieldsConsumer")
#ifdef RESTRICT_OrgApacheLuceneCodecsFieldsConsumer
#define INCLUDE_ALL_OrgApacheLuceneCodecsFieldsConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsFieldsConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsFieldsConsumer

#if !defined (OrgApacheLuceneCodecsFieldsConsumer_) && (INCLUDE_ALL_OrgApacheLuceneCodecsFieldsConsumer || defined(INCLUDE_OrgApacheLuceneCodecsFieldsConsumer))
#define OrgApacheLuceneCodecsFieldsConsumer_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexMergeState;

/*!
 @brief Abstract API that consumes terms, doc, freq, prox, offset and
 payloads postings.
 Concrete implementations of this
 actually do "something" with the postings (write it into
 the index in a specific format).
 */
@interface OrgApacheLuceneCodecsFieldsConsumer : NSObject < JavaIoCloseable >

#pragma mark Public

- (void)close;

/*!
 @brief Merges in the fields from the readers in 
 <code>mergeState</code>.
 The default implementation skips
 and maps around deleted documents, and calls <code>write(Fields)</code>.
 Implementations can override this method for more sophisticated
 merging (bulk-byte copying, etc). 
 */
- (void)mergeWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState;

/*!
 @brief Write all fields, terms and postings.
 This the "pull"
 API, allowing you to iterate more than once over the
 postings, somewhat analogous to using a DOM API to
 traverse an XML tree.
 <p><b>Notes</b>:
 <ul>
 <li> You must compute index statistics,
 including each Term's docFreq and totalTermFreq,
 as well as the summary sumTotalTermFreq,
 sumTotalDocFreq and docCount.
 <li> You must skip terms that have no docs and
 fields that have no terms, even though the provided
 Fields API will expose them; this typically
 requires lazily writing the field or term until
 you've actually seen the first term or
 document.
 <li> The provided Fields instance is limited: you
 cannot call any methods that return
 statistics/counts; you cannot pass a non-null
 live docs when pulling docs/positions enums.
 </ul>
 */
- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
 constructors, typically implicit.) 
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsFieldsConsumer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsFieldsConsumer_init(OrgApacheLuceneCodecsFieldsConsumer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsFieldsConsumer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsFieldsConsumer")