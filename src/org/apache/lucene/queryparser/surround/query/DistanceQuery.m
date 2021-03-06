//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/DistanceQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/queryparser/surround/query/BasicQueryFactory.h"
#include "org/apache/lucene/queryparser/surround/query/ComposedQuery.h"
#include "org/apache/lucene/queryparser/surround/query/DistanceQuery.h"
#include "org/apache/lucene/queryparser/surround/query/DistanceRewriteQuery.h"
#include "org/apache/lucene/queryparser/surround/query/DistanceSubQuery.h"
#include "org/apache/lucene/queryparser/surround/query/SpanNearClauseFactory.h"
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"
#include "org/apache/lucene/search/MatchNoDocsQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"

@interface OrgApacheLuceneQueryparserSurroundQueryDistanceQuery () {
 @public
  jint opDistance_;
  jboolean ordered_;
}

@end

@implementation OrgApacheLuceneQueryparserSurroundQueryDistanceQuery

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)queries
                         withBoolean:(jboolean)infix
                             withInt:(jint)opDistance
                        withNSString:(NSString *)opName
                         withBoolean:(jboolean)ordered {
  OrgApacheLuceneQueryparserSurroundQueryDistanceQuery_initWithJavaUtilList_withBoolean_withInt_withNSString_withBoolean_(self, queries, infix, opDistance, opName, ordered);
  return self;
}

- (jint)getOpDistance {
  return opDistance_;
}

- (jboolean)subQueriesOrdered {
  return ordered_;
}

- (NSString *)distanceSubQueryNotAllowed {
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  while ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    id leq = [sqi next];
    if ([OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_class_() isInstance:leq]) {
      id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery> dsq = (id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) cast_check(leq, OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_class_());
      NSString *m = [((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) nil_chk(dsq)) distanceSubQueryNotAllowed];
      if (m != nil) {
        return m;
      }
    }
    else {
      return JreStrcat("$$$$", @"Operator ", [self getOperatorName], @" does not allow subquery ", [nil_chk(leq) description]);
    }
  }
  return nil;
}

- (void)addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:(OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *)sncf {
  OrgApacheLuceneSearchQuery *snq = [self getSpanNearQueryWithOrgApacheLuceneIndexIndexReader:[((OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *) nil_chk(sncf)) getIndexReader] withNSString:[sncf getFieldName] withFloat:[self getWeight] withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:[sncf getBasicQueryFactory]];
  [sncf addSpanQueryWithOrgApacheLuceneSearchQuery:snq];
}

- (OrgApacheLuceneSearchQuery *)getSpanNearQueryWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                       withNSString:(NSString *)fieldName
                                                                          withFloat:(jfloat)boost
                       withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  IOSObjectArray *spanClauses = [IOSObjectArray arrayWithLength:[self getNrSubQueries] type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
  id<JavaUtilIterator> sqi = [self getSubQueriesIterator];
  jint qi = 0;
  while ([((id<JavaUtilIterator>) nil_chk(sqi)) hasNext]) {
    OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory *sncf = create_OrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory_initWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(reader, fieldName, qf);
    [((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) nil_chk(((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) cast_check([sqi next], OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_class_())))) addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:sncf];
    if ([sncf size] == 0) {
      while ([sqi hasNext]) {
        [((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) nil_chk(((id<OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery>) cast_check([sqi next], OrgApacheLuceneQueryparserSurroundQueryDistanceSubQuery_class_())))) addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:sncf];
        [sncf clear];
      }
      return create_OrgApacheLuceneSearchMatchNoDocsQuery_init();
    }
    IOSObjectArray_Set(spanClauses, qi, [sncf makeSpanClause]);
    qi++;
  }
  OrgApacheLuceneSearchSpansSpanNearQuery *r = create_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(spanClauses, [self getOpDistance] - 1, [self subQueriesOrdered]);
  [r setBoostWithFloat:boost];
  return r;
}

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  return create_OrgApacheLuceneQueryparserSurroundQueryDistanceRewriteQuery_initWithOrgApacheLuceneQueryparserSurroundQueryDistanceQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(self, fieldName, qf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withBoolean:withInt:withNSString:withBoolean:", "DistanceQuery", NULL, 0x1, NULL, "(Ljava/util/List<Lorg/apache/lucene/queryparser/surround/query/SrndQuery;>;ZILjava/lang/String;Z)V" },
    { "getOpDistance", NULL, "I", 0x1, NULL, NULL },
    { "subQueriesOrdered", NULL, "Z", 0x1, NULL, NULL },
    { "distanceSubQueryNotAllowed", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "addSpanQueriesWithOrgApacheLuceneQueryparserSurroundQuerySpanNearClauseFactory:", "addSpanQueries", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getSpanNearQueryWithOrgApacheLuceneIndexIndexReader:withNSString:withFloat:withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "getSpanNearQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "makeLuceneQueryFieldNoBoostWithNSString:withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "makeLuceneQueryFieldNoBoost", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "opDistance_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ordered_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryDistanceQuery = { 2, "DistanceQuery", "org.apache.lucene.queryparser.surround.query", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQueryDistanceQuery;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryDistanceQuery_initWithJavaUtilList_withBoolean_withInt_withNSString_withBoolean_(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *self, id<JavaUtilList> queries, jboolean infix, jint opDistance, NSString *opName, jboolean ordered) {
  OrgApacheLuceneQueryparserSurroundQueryComposedQuery_initWithJavaUtilList_withBoolean_withNSString_(self, queries, infix, opName);
  self->opDistance_ = opDistance;
  self->ordered_ = ordered;
}

OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *new_OrgApacheLuceneQueryparserSurroundQueryDistanceQuery_initWithJavaUtilList_withBoolean_withInt_withNSString_withBoolean_(id<JavaUtilList> queries, jboolean infix, jint opDistance, NSString *opName, jboolean ordered) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery, initWithJavaUtilList_withBoolean_withInt_withNSString_withBoolean_, queries, infix, opDistance, opName, ordered)
}

OrgApacheLuceneQueryparserSurroundQueryDistanceQuery *create_OrgApacheLuceneQueryparserSurroundQueryDistanceQuery_initWithJavaUtilList_withBoolean_withInt_withNSString_withBoolean_(id<JavaUtilList> queries, jboolean infix, jint opDistance, NSString *opName, jboolean ordered) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery, initWithJavaUtilList_withBoolean_withInt_withNSString_withBoolean_, queries, infix, opDistance, opName, ordered)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryDistanceQuery)
