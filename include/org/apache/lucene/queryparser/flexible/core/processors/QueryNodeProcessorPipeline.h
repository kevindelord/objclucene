//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline))
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.h"

#define RESTRICT_JavaUtilList 1
#define INCLUDE_JavaUtilList 1
#include "java/util/List.h"

@class IOSObjectArray;
@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;
@protocol JavaUtilListIterator;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

/*!
 @brief A <code>QueryNodeProcessorPipeline</code> class should be used to build a query
 node processor pipeline.
 When a query node tree is processed using this class, it passes the query
 node tree to each processor on the pipeline and the result from each
 processor is passed to the next one, always following the order the
 processors were on the pipeline.
 When a <code>QueryConfigHandler</code> object is set on a
 <code>QueryNodeProcessorPipeline</code>, it also takes care of setting this
 <code>QueryConfigHandler</code> on all processor on pipeline.
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline : NSObject < OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor, JavaUtilList >

#pragma mark Public

/*!
 @brief Constructs an empty query node processor pipeline.
 */
- (instancetype)init;

/*!
 @brief Constructs with a <code>QueryConfigHandler</code> object.
 */
- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler;

/*!
 - seealso: List#add(int,Object)
 */
- (void)addWithInt:(jint)index
            withId:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor;

/*!
 - seealso: List#add(Object)
 */
- (jboolean)addWithId:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor;

/*!
 - seealso: List#addAll(Collection)
 */
- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;

/*!
 - seealso: List#addAll(int,Collection)
 */
- (jboolean)addAllWithInt:(jint)index
   withJavaUtilCollection:(id<JavaUtilCollection>)c;

/*!
 - seealso: List#clear()
 */
- (void)clear;

/*!
 - seealso: List#contains(Object)
 */
- (jboolean)containsWithId:(id)o;

/*!
 - seealso: List#containsAll(Collection)
 */
- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;

/*!
 - seealso: List#get(int)
 */
- (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)getWithInt:(jint)index;

/*!
 @brief For reference about this method check:
 <code>QueryNodeProcessor.getQueryConfigHandler()</code>.
 @return QueryConfigHandler the query configuration handler to be set.
 - seealso: QueryNodeProcessor#setQueryConfigHandler(QueryConfigHandler)
 - seealso: QueryConfigHandler
 */
- (OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)getQueryConfigHandler;

/*!
 - seealso: List#indexOf(Object)
 */
- (jint)indexOfWithId:(id)o;

/*!
 - seealso: List#isEmpty()
 */
- (jboolean)isEmpty;

/*!
 - seealso: List#iterator()
 */
- (id<JavaUtilIterator>)iterator;

/*!
 - seealso: List#lastIndexOf(Object)
 */
- (jint)lastIndexOfWithId:(id)o;

/*!
 - seealso: List#listIterator()
 */
- (id<JavaUtilListIterator>)listIterator;

/*!
 - seealso: List#listIterator(int)
 */
- (id<JavaUtilListIterator>)listIteratorWithInt:(jint)index;

/*!
 @brief For reference about this method check:
 <code>QueryNodeProcessor.process(QueryNode)</code>.
 @param queryTree the query node tree to be processed
 @throws QueryNodeException if something goes wrong during the query node
 processing
 - seealso: QueryNode
 */
- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)processWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryTree;

/*!
 - seealso: List#remove(int)
 */
- (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)removeWithInt:(jint)index;

/*!
 - seealso: List#remove(Object)
 */
- (jboolean)removeWithId:(id)o;

/*!
 - seealso: List#removeAll(Collection)
 */
- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;

/*!
 - seealso: List#retainAll(Collection)
 */
- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;

/*!
 - seealso: List#set(int,Object)
 */
- (id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)setWithInt:(jint)index
                                                                              withId:(id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>)processor;

/*!
 @brief For reference about this method check:
 <code>QueryNodeProcessor.setQueryConfigHandler(QueryConfigHandler)</code>.
 @param queryConfigHandler the query configuration handler to be set.
 - seealso: QueryNodeProcessor#getQueryConfigHandler()
 - seealso: QueryConfigHandler
 */
- (void)setQueryConfigHandlerWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfigHandler;

/*!
 - seealso: List#size()
 */
- (jint)size;

/*!
 - seealso: List#subList(int,int)
 */
- (id<JavaUtilList>)subListWithInt:(jint)fromIndex
                           withInt:(jint)toIndex;

/*!
 - seealso: List#toArray()
 */
- (IOSObjectArray *)toArray;

/*!
 - seealso: List#toArray(Object[])
 */
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)array;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_init(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_init();

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline *create_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfigHandler);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorPipeline")