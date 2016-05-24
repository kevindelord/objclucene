//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BaseCompositeReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexBaseCompositeReader")
#ifdef RESTRICT_OrgApacheLuceneIndexBaseCompositeReader
#define INCLUDE_ALL_OrgApacheLuceneIndexBaseCompositeReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexBaseCompositeReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexBaseCompositeReader

#if !defined (OrgApacheLuceneIndexBaseCompositeReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexBaseCompositeReader || defined(INCLUDE_OrgApacheLuceneIndexBaseCompositeReader))
#define OrgApacheLuceneIndexBaseCompositeReader_

#define RESTRICT_OrgApacheLuceneIndexCompositeReader 1
#define INCLUDE_OrgApacheLuceneIndexCompositeReader 1
#include "org/apache/lucene/index/CompositeReader.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneIndexTerm;
@protocol JavaUtilList;

/*!
 @brief Base class for implementing <code>CompositeReader</code>s based on an array
 of sub-readers.
 The implementing class has to add code for
 correctly refcounting and closing the sub-readers.
 <p>User code will most likely use <code>MultiReader</code> to build a
 composite reader on a set of sub-readers (like several
 <code>DirectoryReader</code>s).
 <p> For efficiency, in this API documents are often referred to via
 <i>document numbers</i>, non-negative integers which each name a unique
 document in the index.  These document numbers are ephemeral -- they may change
 as documents are added to and deleted from an index.  Clients should thus not
 rely on a given document having the same number between sessions.
 <p><a name="thread-safety"></a><p><b>NOTE</b>: <code>IndexReader</code>
  instances are completely thread
 safe, meaning multiple threads can call any of its methods,
 concurrently.  If your application requires external
 synchronization, you should <b>not</b> synchronize on the
 <code>IndexReader</code> instance; use your own
 (non-Lucene) objects instead.
 - seealso: MultiReader
 */
@interface OrgApacheLuceneIndexBaseCompositeReader : OrgApacheLuceneIndexCompositeReader

#pragma mark Public

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

- (jint)getDocCountWithNSString:(NSString *)field;

- (jlong)getSumDocFreqWithNSString:(NSString *)field;

- (jlong)getSumTotalTermFreqWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID;

- (jint)maxDoc;

- (jint)numDocs;

- (jlong)totalTermFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

#pragma mark Protected

/*!
 @brief Constructs a <code>BaseCompositeReader</code> on the given subReaders.
 @param subReaders the wrapped sub-readers. This array is returned by
 <code>getSequentialSubReaders</code> and used to resolve the correct
 subreader for docID-based methods. <b>Please note:</b> This array is <b>not</b>
 cloned and not protected for modification, the subclass is responsible 
 to do this.
 */
- (instancetype)initWithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders;

- (id<JavaUtilList>)getSequentialSubReaders;

/*!
 @brief Helper method for subclasses to get the docBase of the given sub-reader index.
 */
- (jint)readerBaseWithInt:(jint)readerIndex;

/*!
 @brief Helper method for subclasses to get the corresponding reader for a doc ID
 */
- (jint)readerIndexWithInt:(jint)docID;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBaseCompositeReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(OrgApacheLuceneIndexBaseCompositeReader *self, IOSObjectArray *subReaders);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBaseCompositeReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexBaseCompositeReader")