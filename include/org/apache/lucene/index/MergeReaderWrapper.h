//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/index/MergeReaderWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergeReaderWrapper")
#ifdef RESTRICT_OrgApacheLuceneIndexMergeReaderWrapper
#define INCLUDE_ALL_OrgApacheLuceneIndexMergeReaderWrapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexMergeReaderWrapper 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexMergeReaderWrapper

#if !defined (OrgApacheLuceneIndexMergeReaderWrapper_) && (INCLUDE_ALL_OrgApacheLuceneIndexMergeReaderWrapper || defined(INCLUDE_OrgApacheLuceneIndexMergeReaderWrapper))
#define OrgApacheLuceneIndexMergeReaderWrapper_

#define RESTRICT_OrgApacheLuceneIndexLeafReader 1
#define INCLUDE_OrgApacheLuceneIndexLeafReader 1
#include "org/apache/lucene/index/LeafReader.h"

@class OrgApacheLuceneCodecsDocValuesProducer;
@class OrgApacheLuceneCodecsFieldsProducer;
@class OrgApacheLuceneCodecsNormsProducer;
@class OrgApacheLuceneCodecsStoredFieldsReader;
@class OrgApacheLuceneCodecsTermVectorsReader;
@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSegmentReader;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@protocol OrgApacheLuceneIndexLeafReader_CoreClosedListener;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief this is a hack to make SortingMP fast!
 */
@interface OrgApacheLuceneIndexMergeReaderWrapper : OrgApacheLuceneIndexLeafReader {
 @public
  OrgApacheLuceneIndexSegmentReader *in_;
  OrgApacheLuceneCodecsFieldsProducer *fields_;
  OrgApacheLuceneCodecsNormsProducer *norms_;
  OrgApacheLuceneCodecsDocValuesProducer *docValues_;
  OrgApacheLuceneCodecsStoredFieldsReader *store_;
  OrgApacheLuceneCodecsTermVectorsReader *vectors_;
}

#pragma mark Public

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

- (void)checkIntegrity;

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

- (OrgApacheLuceneIndexFields *)fields;

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field;

- (id)getCombinedCoreAndDeletesKey;

- (id)getCoreCacheKey;

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos;

- (id<OrgApacheLuceneUtilBits>)getLiveDocs;

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID;

- (jint)maxDoc;

- (jint)numDocs;

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

- (NSString *)description;

#pragma mark Protected

- (void)doClose;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergeReaderWrapper)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeReaderWrapper, in_, OrgApacheLuceneIndexSegmentReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeReaderWrapper, fields_, OrgApacheLuceneCodecsFieldsProducer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeReaderWrapper, norms_, OrgApacheLuceneCodecsNormsProducer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeReaderWrapper, docValues_, OrgApacheLuceneCodecsDocValuesProducer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeReaderWrapper, store_, OrgApacheLuceneCodecsStoredFieldsReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMergeReaderWrapper, vectors_, OrgApacheLuceneCodecsTermVectorsReader *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergeReaderWrapper_initWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexMergeReaderWrapper *self, OrgApacheLuceneIndexSegmentReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeReaderWrapper *new_OrgApacheLuceneIndexMergeReaderWrapper_initWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeReaderWrapper *create_OrgApacheLuceneIndexMergeReaderWrapper_initWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentReader *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergeReaderWrapper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergeReaderWrapper")