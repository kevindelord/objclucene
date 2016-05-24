//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/NumericRangeQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This processor is used to convert <code>TermRangeQueryNode</code>s to
 <code>NumericRangeQueryNode</code>s.
 It looks for
 <code>ConfigurationKeys.NUMERIC_CONFIG</code> set in the <code>FieldConfig</code> of
 every <code>TermRangeQueryNode</code> found. If
 <code>ConfigurationKeys.NUMERIC_CONFIG</code> is found, it considers that
 <code>TermRangeQueryNode</code> to be a numeric range query and convert it to
 <code>NumericRangeQueryNode</code>.
 - seealso: ConfigurationKeys#NUMERIC_CONFIG
 - seealso: TermRangeQueryNode
 - seealso: NumericConfig
 - seealso: NumericRangeQueryNode
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

/*!
 @brief Constructs an empty <code>NumericRangeQueryNode</code> object.
 */
- (instancetype)init;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor")