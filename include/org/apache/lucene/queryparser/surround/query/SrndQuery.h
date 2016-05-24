//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/SrndQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySrndQuery")
#ifdef RESTRICT_OrgApacheLuceneQueryparserSurroundQuerySrndQuery
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySrndQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySrndQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserSurroundQuerySrndQuery

#if !defined (OrgApacheLuceneQueryparserSurroundQuerySrndQuery_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySrndQuery || defined(INCLUDE_OrgApacheLuceneQueryparserSurroundQuerySrndQuery))
#define OrgApacheLuceneQueryparserSurroundQuerySrndQuery_

@class JavaLangStringBuilder;
@class OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief Lowest level base class for surround queries
 */
@interface OrgApacheLuceneQueryparserSurroundQuerySrndQuery : NSObject < NSCopying >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)clone;

/*!
 @brief For subclasses of <code>SrndQuery</code> within the package
 <code>org.apache.lucene.queryparser.surround.query</code>
 it is not necessary to override this method,
 - seealso: #toString()
 */
- (jboolean)isEqual:(id)obj;

- (jfloat)getWeight;

- (NSString *)getWeightOperator;

- (NSString *)getWeightString;

/*!
 @brief For subclasses of <code>SrndQuery</code> within the package
 <code>org.apache.lucene.queryparser.surround.query</code>
 it is not necessary to override this method,
 - seealso: #toString()
 */
- (NSUInteger)hash;

- (jboolean)isFieldsSubQueryAcceptable;

- (jboolean)isWeighted;

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldWithNSString:(NSString *)fieldName
    withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf;

- (void)setWeightWithFloat:(jfloat)w;

/*!
 @brief This method is used by <code>hashCode()</code> and <code>equals(Object)</code>,
 see LUCENE-2945.
 */
- (NSString *)description;

#pragma mark Protected

- (void)weightToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQuerySrndQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQuerySrndQuery_init(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQuerySrndQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserSurroundQuerySrndQuery")