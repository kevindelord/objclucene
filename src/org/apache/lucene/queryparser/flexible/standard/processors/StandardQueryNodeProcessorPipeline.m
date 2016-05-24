//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/NoChildOptimizationQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/RemoveDeletedQueryNodesProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/AllowLeadingWildcardProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/AnalyzerQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BooleanQuery2ModifierNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BooleanSingleChildOptimizationQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BoostQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/DefaultPhraseSlopQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/FuzzyQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/LowercaseExpandedTermsQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MatchAllDocsQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MultiFieldQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/NumericQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/NumericRangeQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/OpenRangeQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/PhraseSlopQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/RemoveEmptyNonLeafQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/TermRangeQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/WildcardQueryNodeProcessor.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfig {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:", "StandardQueryNodeProcessorPipeline", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline = { 2, "StandardQueryNodeProcessorPipeline", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsWildcardQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiFieldQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMatchAllDocsQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsOpenRangeQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsLowercaseExpandedTermsQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAllowLeadingWildcardProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsAnalyzerQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsNoChildOptimizationQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsRemoveDeletedQueryNodesProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsRemoveEmptyNonLeafQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanSingleChildOptimizationQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsDefaultPhraseSlopQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsBoostQueryNodeProcessor_init()];
  [self addWithId:create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_init()];
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline, initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_, queryConfig)
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline, initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_, queryConfig)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline)