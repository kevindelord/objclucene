//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/NumericQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode))
#define OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldValuePairQueryNode.h"

@class JavaTextNumberFormat;
@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

/*!
 @brief This query node represents a field query that holds a numeric value.
 It is
 similar to <code>FieldQueryNode</code>, however the <code>getValue()</code> returns a
 <code>Number</code>.
 - seealso: NumericConfig
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl < OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode >

#pragma mark Public

/*!
 @brief Creates a <code>NumericQueryNode</code> object using the given field,
 <code>Number</code> value and <code>NumberFormat</code> used to convert the value to
 <code>String</code>.
 @param field the field associated with this query node
 @param value the value hold by this node
 @param numberFormat the <code>NumberFormat</code> used to convert the value to <code>String</code>
 */
- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)field
                                withNSNumber:(NSNumber *)value
                    withJavaTextNumberFormat:(JavaTextNumberFormat *)numberFormat;

/*!
 @brief Returns the field associated with this node.
 @return the field associated with this node
 */
- (id<JavaLangCharSequence>)getField;

/*!
 @brief Returns the <code>NumberFormat</code> used to convert the value to <code>String</code>.
 @return the <code>NumberFormat</code> used to convert the value to <code>String</code>
 */
- (JavaTextNumberFormat *)getNumberFormat;

/*!
 @brief Returns the numeric value as <code>Number</code>.
 @return the numeric value
 */
- (NSNumber *)getValue;

/*!
 @brief Sets the field associated with this node.
 @param fieldName the field associated with this node
 */
- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)fieldName;

/*!
 @brief Sets the <code>NumberFormat</code> used to convert the value to <code>String</code>.
 @param format the <code>NumberFormat</code> used to convert the value to <code>String</code>
 */
- (void)setNumberFormatWithJavaTextNumberFormat:(JavaTextNumberFormat *)format;

/*!
 @brief Sets the numeric value.
 @param value the numeric value
 */
- (void)setValueWithId:(NSNumber *)value;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

#pragma mark Protected

/*!
 @brief This method is used to get the value converted to <code>String</code> and
 escaped using the given <code>EscapeQuerySyntax</code>.
 @param escaper the <code>EscapeQuerySyntax</code> used to escape the value <code>String</code>
 @return the value converte to <code>String</code> and escaped
 */
- (id<JavaLangCharSequence>)getTermEscapedWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_initWithJavaLangCharSequence_withNSNumber_withJavaTextNumberFormat_(OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *self, id<JavaLangCharSequence> field, NSNumber *value, JavaTextNumberFormat *numberFormat);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_initWithJavaLangCharSequence_withNSNumber_withJavaTextNumberFormat_(id<JavaLangCharSequence> field, NSNumber *value, JavaTextNumberFormat *numberFormat) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *create_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_initWithJavaLangCharSequence_withNSNumber_withJavaTextNumberFormat_(id<JavaLangCharSequence> field, NSNumber *value, JavaTextNumberFormat *numberFormat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode")
