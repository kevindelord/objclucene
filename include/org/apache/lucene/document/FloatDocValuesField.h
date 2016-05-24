//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/FloatDocValuesField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentFloatDocValuesField")
#ifdef RESTRICT_OrgApacheLuceneDocumentFloatDocValuesField
#define INCLUDE_ALL_OrgApacheLuceneDocumentFloatDocValuesField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentFloatDocValuesField 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentFloatDocValuesField

#if !defined (OrgApacheLuceneDocumentFloatDocValuesField_) && (INCLUDE_ALL_OrgApacheLuceneDocumentFloatDocValuesField || defined(INCLUDE_OrgApacheLuceneDocumentFloatDocValuesField))
#define OrgApacheLuceneDocumentFloatDocValuesField_

#define RESTRICT_OrgApacheLuceneDocumentNumericDocValuesField 1
#define INCLUDE_OrgApacheLuceneDocumentNumericDocValuesField 1
#include "org/apache/lucene/document/NumericDocValuesField.h"

/*!
 @brief Syntactic sugar for encoding floats as NumericDocValues
 via <code>Float.floatToRawIntBits(float)</code>.
 <p>
 Per-document floating point values can be retrieved via
 <code>org.apache.lucene.index.LeafReader.getNumericDocValues(String)</code>.
 <p>
 <b>NOTE</b>: In most all cases this will be rather inefficient,
 requiring four bytes per document. Consider encoding floating
 point values yourself with only as much precision as you require.
 */
@interface OrgApacheLuceneDocumentFloatDocValuesField : OrgApacheLuceneDocumentNumericDocValuesField

#pragma mark Public

/*!
 @brief Creates a new DocValues field with the specified 32-bit float value
 @param name field name
 @param value 32-bit float value
 @throws IllegalArgumentException if the field name is null
 */
- (instancetype)initWithNSString:(NSString *)name
                       withFloat:(jfloat)value;

- (void)setFloatValueWithFloat:(jfloat)value;

- (void)setLongValueWithLong:(jlong)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentFloatDocValuesField)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentFloatDocValuesField_initWithNSString_withFloat_(OrgApacheLuceneDocumentFloatDocValuesField *self, NSString *name, jfloat value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentFloatDocValuesField *new_OrgApacheLuceneDocumentFloatDocValuesField_initWithNSString_withFloat_(NSString *name, jfloat value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentFloatDocValuesField *create_OrgApacheLuceneDocumentFloatDocValuesField_initWithNSString_withFloat_(NSString *name, jfloat value);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentFloatDocValuesField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentFloatDocValuesField")