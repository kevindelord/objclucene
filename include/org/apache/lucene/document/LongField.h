//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/LongField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentLongField")
#ifdef RESTRICT_OrgApacheLuceneDocumentLongField
#define INCLUDE_ALL_OrgApacheLuceneDocumentLongField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentLongField 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentLongField

#if !defined (OrgApacheLuceneDocumentLongField_) && (INCLUDE_ALL_OrgApacheLuceneDocumentLongField || defined(INCLUDE_OrgApacheLuceneDocumentLongField))
#define OrgApacheLuceneDocumentLongField_

#define RESTRICT_OrgApacheLuceneDocumentField 1
#define INCLUDE_OrgApacheLuceneDocumentField 1
#include "org/apache/lucene/document/Field.h"

@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneDocumentField_Store;

/*!
 @brief <p>
 Field that indexes <code>long</code> values
 for efficient range filtering and sorting.
 Here's an example usage:
 <pre class="prettyprint">
 document.add(new LongField(name, 6L, Field.Store.NO));
 
@endcode
 For optimal performance, re-use the <code>LongField</code> and
 <code>Document</code> instance for more than one document:
 <pre class="prettyprint">
 LongField field = new LongField(name, 0L, Field.Store.NO);
 Document document = new Document();
 document.add(field);
 for(all documents) {
 ...
 field.setLongValue(value)
 writer.addDocument(document);
 ...
 }
 
@endcode
 See also <code>IntField</code>, <code>FloatField</code>, <code>DoubleField</code>
 .
 Any type that can be converted to long can also be
 indexed.  For example, date/time values represented by a
 <code>java.util.Date</code> can be translated into a long
 value using the <code>java.util.Date.getTime</code> method.  If you
 don't need millisecond precision, you can quantize the
 value, either by dividing the result of
 <code>java.util.Date.getTime</code> or using the separate getters
 (for year, month, etc.) to construct an <code>int</code> or
 <code>long</code> value.
 <p>To perform range querying or filtering against a
 <code>LongField</code>, use <code>NumericRangeQuery</code>.
 To sort according to a
 <code>LongField</code>, use the normal numeric sort types, eg
 <code>org.apache.lucene.search.SortField.Type.LONG</code>. <code>LongField</code> 
 values can also be loaded directly from <code>org.apache.lucene.index.LeafReader.getNumericDocValues</code>.
 <p>You may add the same field name as an <code>LongField</code> to
 the same document more than once.  Range querying and
 filtering will be the logical OR of all values; so a range query
 will hit all documents that have at least one value in
 the range. However sort behavior is not defined.  If you need to sort,
 you should separately index a single-valued <code>LongField</code>.
 <p>A <code>LongField</code> will consume somewhat more disk space
 in the index than an ordinary single-valued field.
 However, for a typical index that includes substantial
 textual content per document, this increase will likely
 be in the noise. </p>
 <p>Within Lucene, each numeric value is indexed as a
 <em>trie</em> structure, where each term is logically
 assigned to larger and larger pre-defined brackets (which
 are simply lower-precision representations of the value).
 The step size between each successive bracket is called the
 <code>precisionStep</code>, measured in bits.  Smaller
 <code>precisionStep</code> values result in larger number
 of brackets, which consumes more disk space in the index
 but may result in faster range search performance.  The
 default value, 16, was selected for a reasonable tradeoff
 of disk space consumption versus performance.  You can
 create a custom <code>FieldType</code> and invoke the <code>FieldType.setNumericPrecisionStep</code>
  method if you'd
 like to change the value.  Note that you must also
 specify a congruent value when creating <code>NumericRangeQuery</code>
 .
 For low cardinality fields larger precision steps are good.
 If the cardinality is &lt; 100, it is fair
 to use <code>Integer.MAX_VALUE</code>, which produces one
 term per value.
 <p>For more information on the internals of numeric trie
 indexing, including the <a
 href="../search/NumericRangeQuery.html#precisionStepDesc"><code>precisionStep</code></a>
 configuration, see <code>NumericRangeQuery</code>. The format of
 indexed values is described in <code>NumericUtils</code>.
 <p>If you only need to sort by numeric value, and never
 run range querying/filtering, you can index using a
 <code>precisionStep</code> of <code>Integer.MAX_VALUE</code>.
 This will minimize disk space consumed.
 <p>More advanced users can instead use <code>NumericTokenStream</code>
  directly, when indexing numbers. This
 class is a wrapper around this token stream type for
 easier, more intuitive usage.</p>
 @since 2.9
 */
@interface OrgApacheLuceneDocumentLongField : OrgApacheLuceneDocumentField

+ (OrgApacheLuceneDocumentFieldType *)TYPE_NOT_STORED;

+ (OrgApacheLuceneDocumentFieldType *)TYPE_STORED;

#pragma mark Public

/*!
 @brief Expert: allows you to customize the <code>FieldType</code>
 .
 @param name field name
 @param value 64-bit long value
 @param type customized field type: must have <code>FieldType.numericType()</code>
 of <code>FieldType.NumericType.LONG</code>.
 @throws IllegalArgumentException if the field name or type is null, or
 if the field type does not have a LONG numericType()
 */
- (instancetype)initWithNSString:(NSString *)name
                        withLong:(jlong)value
withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)type;

/*!
 @brief Creates a stored or un-stored LongField with the provided value
 and default <code>precisionStep</code> <code>NumericUtils.PRECISION_STEP_DEFAULT</code>
  (16).
 @param name field name
 @param value 64-bit long value
 @param stored Store.YES if the content should also be stored
 @throws IllegalArgumentException if the field name is null.
 */
- (instancetype)initWithNSString:(NSString *)name
                        withLong:(jlong)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentLongField)

/*!
 @brief Type for a LongField that is not stored:
 normalization factors, frequencies, and positions are omitted.
 */
inline OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentLongField_get_TYPE_NOT_STORED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentLongField_TYPE_NOT_STORED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneDocumentLongField, TYPE_NOT_STORED, OrgApacheLuceneDocumentFieldType *)

/*!
 @brief Type for a stored LongField:
 normalization factors, frequencies, and positions are omitted.
 */
inline OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentLongField_get_TYPE_STORED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentLongField_TYPE_STORED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneDocumentLongField, TYPE_STORED, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentLongField_initWithNSString_withLong_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentLongField *self, NSString *name, jlong value, OrgApacheLuceneDocumentField_Store *stored);

FOUNDATION_EXPORT OrgApacheLuceneDocumentLongField *new_OrgApacheLuceneDocumentLongField_initWithNSString_withLong_withOrgApacheLuceneDocumentField_Store_(NSString *name, jlong value, OrgApacheLuceneDocumentField_Store *stored) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentLongField *create_OrgApacheLuceneDocumentLongField_initWithNSString_withLong_withOrgApacheLuceneDocumentField_Store_(NSString *name, jlong value, OrgApacheLuceneDocumentField_Store *stored);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentLongField_initWithNSString_withLong_withOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentLongField *self, NSString *name, jlong value, OrgApacheLuceneDocumentFieldType *type);

FOUNDATION_EXPORT OrgApacheLuceneDocumentLongField *new_OrgApacheLuceneDocumentLongField_initWithNSString_withLong_withOrgApacheLuceneDocumentFieldType_(NSString *name, jlong value, OrgApacheLuceneDocumentFieldType *type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentLongField *create_OrgApacheLuceneDocumentLongField_initWithNSString_withLong_withOrgApacheLuceneDocumentFieldType_(NSString *name, jlong value, OrgApacheLuceneDocumentFieldType *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentLongField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentLongField")
