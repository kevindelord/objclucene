//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/TermRangeQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor))
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief This processors process <code>TermRangeQueryNode</code>s.
 It reads the lower and
 upper bounds value from the <code>TermRangeQueryNode</code> object and try
 to parse their values using a <code>DateFormat</code>. If the values cannot be
 parsed to a date value, it will only create the <code>TermRangeQueryNode</code>
 using the non-parsed values. <br>
 <br>
 If a <code>ConfigurationKeys.LOCALE</code> is defined in the
 <code>QueryConfigHandler</code> it will be used to parse the date, otherwise
 <code>Locale.getDefault()</code> will be used. <br>
 <br>
 If a <code>ConfigurationKeys.DATE_RESOLUTION</code> is defined and the
 <code>Resolution</code> is not <code>null</code> it will also be used to parse the
 date value.
 - seealso: ConfigurationKeys#DATE_RESOLUTION
 - seealso: ConfigurationKeys#LOCALE
 - seealso: TermRangeQueryNode
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardProcessorsTermRangeQueryNodeProcessor")
