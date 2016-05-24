//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline))
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;

/*!
 @brief This pipeline has all the processors needed to process a query node tree,
 generated by <code>StandardSyntaxParser</code>, already assembled.
 <br>
 <br>
 The order they are assembled affects the results. <br>
 <br>
 This processor pipeline was designed to work with
 <code>StandardQueryConfigHandler</code>. <br>
 <br>
 The result query node tree can be used to build a <code>Query</code> object using
 <code>StandardQueryTreeBuilder</code>.
 - seealso: StandardQueryTreeBuilder
 - seealso: StandardQueryConfigHandler
 - seealso: StandardSyntaxParser
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfig;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline")