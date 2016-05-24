//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CodecReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexCodecReader")
#ifdef RESTRICT_OrgApacheLuceneIndexCodecReader
#define INCLUDE_ALL_OrgApacheLuceneIndexCodecReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexCodecReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexCodecReader

#if !defined (OrgApacheLuceneIndexCodecReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexCodecReader || defined(INCLUDE_OrgApacheLuceneIndexCodecReader))
#define OrgApacheLuceneIndexCodecReader_

#define RESTRICT_OrgApacheLuceneIndexLeafReader 1
#define INCLUDE_OrgApacheLuceneIndexLeafReader 1
#include "org/apache/lucene/index/LeafReader.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneCodecsDocValuesProducer;
@class OrgApacheLuceneCodecsFieldsProducer;
@class OrgApacheLuceneCodecsNormsProducer;
@class OrgApacheLuceneCodecsStoredFieldsReader;
@class OrgApacheLuceneCodecsTermVectorsReader;
@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneUtilCloseableThreadLocal;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief LeafReader implemented by codec APIs.
 */
@interface OrgApacheLuceneIndexCodecReader : OrgApacheLuceneIndexLeafReader < OrgApacheLuceneUtilAccountable > {
 @public
  OrgApacheLuceneUtilCloseableThreadLocal *docValuesLocal_;
  OrgApacheLuceneUtilCloseableThreadLocal *docsWithFieldLocal_;
  OrgApacheLuceneUtilCloseableThreadLocal *normsLocal_;
}

#pragma mark Public

- (void)checkIntegrity;

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

- (OrgApacheLuceneIndexFields *)fields;

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field;

- (id<JavaUtilCollection>)getChildResources;

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field;

/*!
 @brief Expert: retrieve underlying DocValuesProducer
  
 */
- (OrgApacheLuceneCodecsDocValuesProducer *)getDocValuesReader;

/*!
 @brief Expert: retrieve thread-private StoredFieldsReader
  
 */
- (OrgApacheLuceneCodecsStoredFieldsReader *)getFieldsReader;

/*!
 @brief Expert: retrieve underlying NormsProducer
  
 */
- (OrgApacheLuceneCodecsNormsProducer *)getNormsReader;

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field;

/*!
 @brief Expert: retrieve underlying FieldsProducer
 */
- (OrgApacheLuceneCodecsFieldsProducer *)getPostingsReader;

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID;

/*!
 @brief Expert: retrieve thread-private TermVectorsReader
  
 */
- (OrgApacheLuceneCodecsTermVectorsReader *)getTermVectorsReader;

- (jlong)ramBytesUsed;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
 constructors, typically implicit.) 
 */
- (instancetype)init;

- (void)doClose;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCodecReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCodecReader, docValuesLocal_, OrgApacheLuceneUtilCloseableThreadLocal *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCodecReader, docsWithFieldLocal_, OrgApacheLuceneUtilCloseableThreadLocal *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCodecReader, normsLocal_, OrgApacheLuceneUtilCloseableThreadLocal *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexCodecReader_init(OrgApacheLuceneIndexCodecReader *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCodecReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexCodecReader")