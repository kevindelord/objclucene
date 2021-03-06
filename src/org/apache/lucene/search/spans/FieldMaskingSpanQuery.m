//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/FieldMaskingSpanQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/spans/FieldMaskingSpanQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchSpansFieldMaskingSpanQuery () {
 @public
  OrgApacheLuceneSearchSpansSpanQuery *maskedQuery_;
  NSString *field_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansFieldMaskingSpanQuery, maskedQuery_, OrgApacheLuceneSearchSpansSpanQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansFieldMaskingSpanQuery, field_, NSString *)

@implementation OrgApacheLuceneSearchSpansFieldMaskingSpanQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)maskedQuery
                                               withNSString:(NSString *)maskedField {
  OrgApacheLuceneSearchSpansFieldMaskingSpanQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withNSString_(self, maskedQuery, maskedField);
  return self;
}

- (NSString *)getField {
  return field_;
}

- (OrgApacheLuceneSearchSpansSpanQuery *)getMaskedQuery {
  return maskedQuery_;
}

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores {
  return [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(maskedQuery_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:needsScores];
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *clone = nil;
  OrgApacheLuceneSearchSpansSpanQuery *rewritten = (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(maskedQuery_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader], [OrgApacheLuceneSearchSpansSpanQuery class]);
  if (rewritten != maskedQuery_) {
    clone = (OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *) cast_chk([self clone], [OrgApacheLuceneSearchSpansFieldMaskingSpanQuery class]);
    JreStrongAssign(&((OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *) nil_chk(clone))->maskedQuery_, rewritten);
  }
  if (clone != nil) {
    return clone;
  }
  else {
    return self;
  }
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"mask("];
  [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(maskedQuery_)) toStringWithNSString:field]];
  [buffer appendWithNSString:@")"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  [buffer appendWithNSString:@" as "];
  [buffer appendWithNSString:self->field_];
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (![super isEqual:o]) {
    return false;
  }
  OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *other = (OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *) cast_chk(o, [OrgApacheLuceneSearchSpansFieldMaskingSpanQuery class]);
  return ([((NSString *) nil_chk([self getField])) isEqual:[((OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *) nil_chk(other)) getField]] && [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk([self getMaskedQuery])) isEqual:[other getMaskedQuery]]);
}

- (NSUInteger)hash {
  return ((jint) [super hash]) ^ ((jint) [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk([self getMaskedQuery])) hash]) ^ ((jint) [((NSString *) nil_chk([self getField])) hash]);
}

- (void)dealloc {
  RELEASE_(maskedQuery_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanQuery:withNSString:", "FieldMaskingSpanQuery", NULL, 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getMaskedQuery", NULL, "Lorg.apache.lucene.search.spans.SpanQuery;", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.spans.SpanWeight;", 0x1, "Ljava.io.IOException;", NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maskedQuery_", NULL, 0x2, "Lorg.apache.lucene.search.spans.SpanQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "field_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansFieldMaskingSpanQuery = { 2, "FieldMaskingSpanQuery", "org.apache.lucene.search.spans", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansFieldMaskingSpanQuery;
}

@end

void OrgApacheLuceneSearchSpansFieldMaskingSpanQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withNSString_(OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *self, OrgApacheLuceneSearchSpansSpanQuery *maskedQuery, NSString *maskedField) {
  OrgApacheLuceneSearchSpansSpanQuery_init(self);
  JreStrongAssign(&self->maskedQuery_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(maskedQuery));
  JreStrongAssign(&self->field_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(maskedField));
}

OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *new_OrgApacheLuceneSearchSpansFieldMaskingSpanQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withNSString_(OrgApacheLuceneSearchSpansSpanQuery *maskedQuery, NSString *maskedField) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansFieldMaskingSpanQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withNSString_, maskedQuery, maskedField)
}

OrgApacheLuceneSearchSpansFieldMaskingSpanQuery *create_OrgApacheLuceneSearchSpansFieldMaskingSpanQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withNSString_(OrgApacheLuceneSearchSpansSpanQuery *maskedQuery, NSString *maskedField) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansFieldMaskingSpanQuery, initWithOrgApacheLuceneSearchSpansSpanQuery_withNSString_, maskedQuery, maskedField)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansFieldMaskingSpanQuery)
