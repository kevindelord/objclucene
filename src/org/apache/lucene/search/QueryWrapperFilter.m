//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/QueryWrapperFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/NullPointerException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BitsFilteredDocIdSet.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/QueryWrapperFilter.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/Bits.h"

@interface OrgApacheLuceneSearchQueryWrapperFilter () {
 @public
  OrgApacheLuceneSearchQuery *query_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchQueryWrapperFilter, query_, OrgApacheLuceneSearchQuery *)

@interface OrgApacheLuceneSearchQueryWrapperFilter_$1 : OrgApacheLuceneSearchDocIdSet {
 @public
  OrgApacheLuceneSearchWeight *val$weight_;
  OrgApacheLuceneIndexLeafReaderContext *val$privateContext_;
}

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

- (jlong)ramBytesUsed;

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
          withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchQueryWrapperFilter_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchQueryWrapperFilter_$1, val$weight_, OrgApacheLuceneSearchWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchQueryWrapperFilter_$1, val$privateContext_, OrgApacheLuceneIndexLeafReaderContext *)

__attribute__((unused)) static void OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchQueryWrapperFilter_$1 *self, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1);

__attribute__((unused)) static OrgApacheLuceneSearchQueryWrapperFilter_$1 *new_OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchQueryWrapperFilter_$1 *create_OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchQueryWrapperFilter_$1)

@implementation OrgApacheLuceneSearchQueryWrapperFilter

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(self, query);
  return self;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchConstantScoreQuery *rewritten = create_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(query_);
  [rewritten setBoostWithFloat:0];
  return rewritten;
}

- (OrgApacheLuceneSearchQuery *)getQuery {
  return query_;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  OrgApacheLuceneIndexLeafReaderContext *privateContext = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader])) getContext];
  OrgApacheLuceneSearchWeight *weight = [create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_(privateContext) createNormalizedWeightWithOrgApacheLuceneSearchQuery:query_ withBoolean:false];
  OrgApacheLuceneSearchDocIdSet *set = create_OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(weight, privateContext);
  return OrgApacheLuceneSearchBitsFilteredDocIdSet_wrapWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneUtilBits_(set, acceptDocs);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$$C", @"QueryWrapperFilter(", [((OrgApacheLuceneSearchQuery *) nil_chk(query_)) toStringWithNSString:field], ')');
}

- (jboolean)isEqual:(id)o {
  if ([super isEqual:o] == false) {
    return false;
  }
  return [((OrgApacheLuceneSearchQuery *) nil_chk(self->query_)) isEqual:((OrgApacheLuceneSearchQueryWrapperFilter *) nil_chk(((OrgApacheLuceneSearchQueryWrapperFilter *) cast_chk(o, [OrgApacheLuceneSearchQueryWrapperFilter class]))))->query_];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchQuery *) nil_chk(query_)) hash]);
}

- (void)dealloc {
  RELEASE_(query_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchQuery:", "QueryWrapperFilter", NULL, 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "getQuery", NULL, "Lorg.apache.lucene.search.Query;", 0x11, NULL, NULL },
    { "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:", "getDocIdSet", "Lorg.apache.lucene.search.DocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "query_", NULL, 0x12, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQueryWrapperFilter = { 2, "QueryWrapperFilter", "org.apache.lucene.search", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchQueryWrapperFilter;
}

@end

void OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQueryWrapperFilter *self, OrgApacheLuceneSearchQuery *query) {
  OrgApacheLuceneSearchFilter_init(self);
  if (query == nil) @throw create_JavaLangNullPointerException_initWithNSString_(@"Query may not be null");
  JreStrongAssign(&self->query_, query);
}

OrgApacheLuceneSearchQueryWrapperFilter *new_OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchQueryWrapperFilter, initWithOrgApacheLuceneSearchQuery_, query)
}

OrgApacheLuceneSearchQueryWrapperFilter *create_OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchQueryWrapperFilter, initWithOrgApacheLuceneSearchQuery_, query)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchQueryWrapperFilter)

@implementation OrgApacheLuceneSearchQueryWrapperFilter_$1

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return [((OrgApacheLuceneSearchWeight *) nil_chk(val$weight_)) scorerWithOrgApacheLuceneIndexLeafReaderContext:val$privateContext_];
}

- (jlong)ramBytesUsed {
  return 0LL;
}

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
          withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$1 {
  OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(self, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(val$weight_);
  RELEASE_(val$privateContext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "iterator", NULL, "Lorg.apache.lucene.search.DocIdSetIterator;", 0x1, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneIndexLeafReaderContext:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$weight_", NULL, 0x1012, "Lorg.apache.lucene.search.Weight;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$privateContext_", NULL, 0x1012, "Lorg.apache.lucene.index.LeafReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchQueryWrapperFilter", "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQueryWrapperFilter_$1 = { 2, "", "org.apache.lucene.search", "QueryWrapperFilter", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchQueryWrapperFilter_$1;
}

@end

void OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchQueryWrapperFilter_$1 *self, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  JreStrongAssign(&self->val$weight_, capture$0);
  JreStrongAssign(&self->val$privateContext_, capture$1);
  OrgApacheLuceneSearchDocIdSet_init(self);
}

OrgApacheLuceneSearchQueryWrapperFilter_$1 *new_OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchQueryWrapperFilter_$1, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_, capture$0, capture$1)
}

OrgApacheLuceneSearchQueryWrapperFilter_$1 *create_OrgApacheLuceneSearchQueryWrapperFilter_$1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexLeafReaderContext *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchQueryWrapperFilter_$1, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexLeafReaderContext_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchQueryWrapperFilter_$1)
