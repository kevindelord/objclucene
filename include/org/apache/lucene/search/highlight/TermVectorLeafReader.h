//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TermVectorLeafReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightTermVectorLeafReader")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightTermVectorLeafReader
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightTermVectorLeafReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightTermVectorLeafReader 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightTermVectorLeafReader

#if !defined (OrgApacheLuceneSearchHighlightTermVectorLeafReader_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightTermVectorLeafReader || defined(INCLUDE_OrgApacheLuceneSearchHighlightTermVectorLeafReader))
#define OrgApacheLuceneSearchHighlightTermVectorLeafReader_

#define RESTRICT_OrgApacheLuceneIndexLeafReader 1
#define INCLUDE_OrgApacheLuceneIndexLeafReader 1
#include "org/apache/lucene/index/LeafReader.h"

@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneIndexTerms;
@protocol OrgApacheLuceneIndexLeafReader_CoreClosedListener;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Wraps a Terms with a <code>org.apache.lucene.index.LeafReader</code>, typically from term vectors.
 */
@interface OrgApacheLuceneSearchHighlightTermVectorLeafReader : OrgApacheLuceneIndexLeafReader

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
   withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms;

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener;

- (void)checkIntegrity;

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

- (OrgApacheLuceneIndexFields *)fields;

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field;

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

#pragma mark Protected

- (void)doClose;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightTermVectorLeafReader)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightTermVectorLeafReader_initWithNSString_withOrgApacheLuceneIndexTerms_(OrgApacheLuceneSearchHighlightTermVectorLeafReader *self, NSString *field, OrgApacheLuceneIndexTerms *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightTermVectorLeafReader *new_OrgApacheLuceneSearchHighlightTermVectorLeafReader_initWithNSString_withOrgApacheLuceneIndexTerms_(NSString *field, OrgApacheLuceneIndexTerms *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightTermVectorLeafReader *create_OrgApacheLuceneSearchHighlightTermVectorLeafReader_initWithNSString_withOrgApacheLuceneIndexTerms_(NSString *field, OrgApacheLuceneIndexTerms *terms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightTermVectorLeafReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightTermVectorLeafReader")