//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/FieldsQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/ListIterator.h"
#include "org/apache/lucene/queryparser/surround/query/BasicQueryFactory.h"
#include "org/apache/lucene/queryparser/surround/query/FieldsQuery.h"
#include "org/apache/lucene/queryparser/surround/query/OrQuery.h"
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"
#include "org/apache/lucene/search/Query.h"

@interface OrgApacheLuceneQueryparserSurroundQueryFieldsQuery () {
 @public
  OrgApacheLuceneQueryparserSurroundQuerySrndQuery *q_;
  id<JavaUtilList> fieldNames_;
  jchar fieldOp_;
  NSString *OrOperatorName_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery, q_, OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery, fieldNames_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery, OrOperatorName_, NSString *)

@implementation OrgApacheLuceneQueryparserSurroundQueryFieldsQuery

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)q
                                                        withJavaUtilList:(id<JavaUtilList>)fieldNames
                                                                withChar:(jchar)fieldOp {
  OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withJavaUtilList_withChar_(self, q, fieldNames, fieldOp);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)q
                                                            withNSString:(NSString *)fieldName
                                                                withChar:(jchar)fieldOp {
  OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withChar_(self, q, fieldName, fieldOp);
  return self;
}

- (jboolean)isFieldsSubQueryAcceptable {
  return false;
}

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryNoBoostWithOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  if ([((id<JavaUtilList>) nil_chk(fieldNames_)) size] == 1) {
    return [((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(q_)) makeLuceneQueryFieldNoBoostWithNSString:[((id<JavaUtilList>) nil_chk(fieldNames_)) getWithInt:0] withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:qf];
  }
  else {
    id<JavaUtilList> queries = create_JavaUtilArrayList_init();
    id<JavaUtilIterator> fni = [((id<JavaUtilList>) nil_chk([self getFieldNames])) listIterator];
    OrgApacheLuceneQueryparserSurroundQuerySrndQuery *qc;
    while ([((id<JavaUtilIterator>) nil_chk(fni)) hasNext]) {
      qc = [((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(q_)) clone];
      [queries addWithId:create_OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withChar_(qc, [fni next], fieldOp_)];
    }
    OrgApacheLuceneQueryparserSurroundQueryOrQuery *oq = create_OrgApacheLuceneQueryparserSurroundQueryOrQuery_initWithJavaUtilList_withBoolean_withNSString_(queries, true, OrOperatorName_);
    return [oq makeLuceneQueryFieldWithNSString:nil withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:qf];
  }
}

- (OrgApacheLuceneSearchQuery *)makeLuceneQueryFieldNoBoostWithNSString:(NSString *)fieldName
           withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  return [self makeLuceneQueryNoBoostWithOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:qf];
}

- (id<JavaUtilList>)getFieldNames {
  return fieldNames_;
}

- (jchar)getFieldOperator {
  return fieldOp_;
}

- (NSString *)description {
  JavaLangStringBuilder *r = create_JavaLangStringBuilder_init();
  [r appendWithNSString:@"("];
  [self fieldNamesToStringWithJavaLangStringBuilder:r];
  [r appendWithNSString:[((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(q_)) description]];
  [r appendWithNSString:@")"];
  return [r description];
}

- (void)fieldNamesToStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)r {
  id<JavaUtilIterator> fni = [((id<JavaUtilList>) nil_chk([self getFieldNames])) listIterator];
  while ([((id<JavaUtilIterator>) nil_chk(fni)) hasNext]) {
    [((JavaLangStringBuilder *) nil_chk(r)) appendWithNSString:[fni next]];
    [r appendWithChar:[self getFieldOperator]];
  }
}

- (void)dealloc {
  RELEASE_(q_);
  RELEASE_(fieldNames_);
  RELEASE_(OrOperatorName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:withJavaUtilList:withChar:", "FieldsQuery", NULL, 0x1, NULL, "(Lorg/apache/lucene/queryparser/surround/query/SrndQuery;Ljava/util/List<Ljava/lang/String;>;C)V" },
    { "initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:withNSString:withChar:", "FieldsQuery", NULL, 0x1, NULL, NULL },
    { "isFieldsSubQueryAcceptable", NULL, "Z", 0x1, NULL, NULL },
    { "makeLuceneQueryNoBoostWithOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "makeLuceneQueryNoBoost", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "makeLuceneQueryFieldNoBoostWithNSString:withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "makeLuceneQueryFieldNoBoost", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "getFieldNames", NULL, "Ljava.util.List;", 0x1, NULL, "()Ljava/util/List<Ljava/lang/String;>;" },
    { "getFieldOperator", NULL, "C", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "fieldNamesToStringWithJavaLangStringBuilder:", "fieldNamesToString", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "q_", NULL, 0x2, "Lorg.apache.lucene.queryparser.surround.query.SrndQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldNames_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "fieldOp_", NULL, 0x12, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "OrOperatorName_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryFieldsQuery = { 2, "FieldsQuery", "org.apache.lucene.queryparser.surround.query", NULL, 0x1, 9, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQueryFieldsQuery;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withJavaUtilList_withChar_(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery *self, OrgApacheLuceneQueryparserSurroundQuerySrndQuery *q, id<JavaUtilList> fieldNames, jchar fieldOp) {
  OrgApacheLuceneQueryparserSurroundQuerySrndQuery_init(self);
  JreStrongAssign(&self->OrOperatorName_, @"OR");
  JreStrongAssign(&self->q_, q);
  JreStrongAssign(&self->fieldNames_, fieldNames);
  self->fieldOp_ = fieldOp;
}

OrgApacheLuceneQueryparserSurroundQueryFieldsQuery *new_OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withJavaUtilList_withChar_(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *q, id<JavaUtilList> fieldNames, jchar fieldOp) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery, initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withJavaUtilList_withChar_, q, fieldNames, fieldOp)
}

OrgApacheLuceneQueryparserSurroundQueryFieldsQuery *create_OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withJavaUtilList_withChar_(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *q, id<JavaUtilList> fieldNames, jchar fieldOp) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery, initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withJavaUtilList_withChar_, q, fieldNames, fieldOp)
}

void OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withChar_(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery *self, OrgApacheLuceneQueryparserSurroundQuerySrndQuery *q, NSString *fieldName, jchar fieldOp) {
  OrgApacheLuceneQueryparserSurroundQuerySrndQuery_init(self);
  JreStrongAssign(&self->OrOperatorName_, @"OR");
  JreStrongAssign(&self->q_, q);
  JreStrongAssignAndConsume(&self->fieldNames_, new_JavaUtilArrayList_init());
  [self->fieldNames_ addWithId:fieldName];
  self->fieldOp_ = fieldOp;
}

OrgApacheLuceneQueryparserSurroundQueryFieldsQuery *new_OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withChar_(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *q, NSString *fieldName, jchar fieldOp) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery, initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withChar_, q, fieldName, fieldOp)
}

OrgApacheLuceneQueryparserSurroundQueryFieldsQuery *create_OrgApacheLuceneQueryparserSurroundQueryFieldsQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withChar_(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *q, NSString *fieldName, jchar fieldOp) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery, initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withChar_, q, fieldName, fieldOp)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryFieldsQuery)
