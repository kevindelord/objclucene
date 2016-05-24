//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/precedence/processors/PrecedenceQueryNodeProcessorPipeline.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline

#if !defined (OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline || defined(INCLUDE_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline))
#define OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline 1
#include "org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;

/*!
 @brief <p>
 This processor pipeline extends <code>StandardQueryNodeProcessorPipeline</code> and enables
 boolean precedence on it.
 </p>
 <p>
 EXPERT: the precedence is enabled by removing <code>GroupQueryNodeProcessor</code> from the
 <code>StandardQueryNodeProcessorPipeline</code> and appending <code>BooleanModifiersQueryNodeProcessor</code>
 to the pipeline.
 </p>
 - seealso: PrecedenceQueryParser
 - seealso: StandardQueryNodeProcessorPipeline
 */
@interface OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline : OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline

#pragma mark Public

/*!
 - seealso: StandardQueryNodeProcessorPipeline#StandardQueryNodeProcessorPipeline(QueryConfigHandler)
 */
- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfig;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *create_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline")