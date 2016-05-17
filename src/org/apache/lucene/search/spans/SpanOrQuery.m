//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanOrQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DisiPriorityQueue.h"
#include "org/apache/lucene/search/DisiWrapper.h"
#include "org/apache/lucene/search/DisjunctionDISIApproximation.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/spans/SpanCollector.h"
#include "org/apache/lucene/search/spans/SpanOrQuery.h"
#include "org/apache/lucene/search/spans/SpanPositionQueue.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneSearchSpansSpanOrQuery () {
 @public
  id<JavaUtilList> clauses_;
  NSString *field_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery, clauses_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery, field_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanOrQuery_addClauseWithOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanOrQuery *self, OrgApacheLuceneSearchSpansSpanQuery *clause);

@interface OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight () {
 @public
  OrgApacheLuceneSearchSpansSpanOrQuery *this$0_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight, this$0_, OrgApacheLuceneSearchSpansSpanOrQuery *)

@interface OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 : OrgApacheLuceneSearchSpansSpans {
 @public
  OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *this$0_;
  OrgApacheLuceneSearchSpansSpans *topPositionSpans_;
  jint lastDocTwoPhaseMatched_;
  jlong cost_;
  OrgApacheLuceneSearchDisiPriorityQueue *val$byDocQueue_;
  OrgApacheLuceneSearchSpansSpanPositionQueue *val$byPositionQueue_;
  JavaUtilArrayList *val$subSpans_;
}

- (jint)nextDoc;

- (jint)advanceWithInt:(jint)target;

- (jint)docID;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

- (jboolean)twoPhaseCurrentDocMatches;

- (void)fillPositionQueue;

- (jint)nextStartPosition;

- (jint)startPosition;

- (jint)endPosition;

- (jint)width;

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector;

- (NSString *)description;

- (jlong)cost;

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight:(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *)outer$
                                withOrgApacheLuceneSearchDisiPriorityQueue:(OrgApacheLuceneSearchDisiPriorityQueue *)capture$0
                           withOrgApacheLuceneSearchSpansSpanPositionQueue:(OrgApacheLuceneSearchSpansSpanPositionQueue *)capture$1
                                                     withJavaUtilArrayList:(JavaUtilArrayList *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1, this$0_, OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1, topPositionSpans_, OrgApacheLuceneSearchSpansSpans *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1, val$byDocQueue_, OrgApacheLuceneSearchDisiPriorityQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1, val$byPositionQueue_, OrgApacheLuceneSearchSpansSpanPositionQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1, val$subSpans_, JavaUtilArrayList *)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *self, OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *outer$, OrgApacheLuceneSearchDisiPriorityQueue *capture$0, OrgApacheLuceneSearchSpansSpanPositionQueue *capture$1, JavaUtilArrayList *capture$2);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *new_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *outer$, OrgApacheLuceneSearchDisiPriorityQueue *capture$0, OrgApacheLuceneSearchSpansSpanPositionQueue *capture$1, JavaUtilArrayList *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *outer$, OrgApacheLuceneSearchDisiPriorityQueue *capture$0, OrgApacheLuceneSearchSpansSpanPositionQueue *capture$1, JavaUtilArrayList *capture$2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1)

@interface OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 : OrgApacheLuceneSearchTwoPhaseIterator {
 @public
  OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *this$0_;
}

- (jboolean)matches;

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1:(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *)outer$
                                    withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1, this$0_, OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 *self, OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 *new_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 *create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1)

@implementation OrgApacheLuceneSearchSpansSpanOrQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses {
  OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(self, clauses);
  return self;
}

- (void)addClauseWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)clause {
  OrgApacheLuceneSearchSpansSpanOrQuery_addClauseWithOrgApacheLuceneSearchSpansSpanQuery_(self, clause);
}

- (IOSObjectArray *)getClauses {
  return [((id<JavaUtilList>) nil_chk(clauses_)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[clauses_ size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()]];
}

- (NSString *)getField {
  return field_;
}

- (OrgApacheLuceneSearchSpansSpanOrQuery *)clone {
  jint sz = [((id<JavaUtilList>) nil_chk(clauses_)) size];
  IOSObjectArray *newClauses = [IOSObjectArray arrayWithLength:sz type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
  for (jint i = 0; i < sz; i++) {
    IOSObjectArray_Set(newClauses, i, (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk([((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:i])) clone], [OrgApacheLuceneSearchSpansSpanQuery class]));
  }
  OrgApacheLuceneSearchSpansSpanOrQuery *soq = create_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(newClauses);
  [soq setBoostWithFloat:[self getBoost]];
  return soq;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchSpansSpanOrQuery *clone = nil;
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(clauses_)) size]; i++) {
    OrgApacheLuceneSearchSpansSpanQuery *c = [((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:i];
    OrgApacheLuceneSearchSpansSpanQuery *query = (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(c)) rewriteWithOrgApacheLuceneIndexIndexReader:reader], [OrgApacheLuceneSearchSpansSpanQuery class]);
    if (query != c) {
      if (clone == nil) clone = [self clone];
      [((id<JavaUtilList>) nil_chk(((OrgApacheLuceneSearchSpansSpanOrQuery *) nil_chk(clone))->clauses_)) setWithInt:i withId:query];
    }
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
  [buffer appendWithNSString:@"spanOr(["];
  id<JavaUtilIterator> i = [((id<JavaUtilList>) nil_chk(clauses_)) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(i)) hasNext]) {
    OrgApacheLuceneSearchSpansSpanQuery *clause = [i next];
    [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) toStringWithNSString:field]];
    if ([i hasNext]) {
      [buffer appendWithNSString:@", "];
    }
  }
  [buffer appendWithNSString:@"])"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (![super isEqual:o]) {
    return false;
  }
  OrgApacheLuceneSearchSpansSpanOrQuery *that = (OrgApacheLuceneSearchSpansSpanOrQuery *) cast_chk(o, [OrgApacheLuceneSearchSpansSpanOrQuery class]);
  return [((id<JavaUtilList>) nil_chk(clauses_)) isEqual:((OrgApacheLuceneSearchSpansSpanOrQuery *) nil_chk(that))->clauses_];
}

- (NSUInteger)hash {
  jint h = ((jint) [super hash]);
  h = (h * 7) ^ ((jint) [((id<JavaUtilList>) nil_chk(clauses_)) hash]);
  return h;
}

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores {
  id<JavaUtilList> subWeights = create_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(clauses_)) size]);
  for (OrgApacheLuceneSearchSpansSpanQuery * __strong q in nil_chk(clauses_)) {
    [subWeights addWithId:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(q)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:false]];
  }
  return create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_initWithOrgApacheLuceneSearchSpansSpanOrQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withJavaUtilList_(self, searcher, needsScores ? OrgApacheLuceneSearchSpansSpanQuery_getTermContextsWithJavaUtilCollection_(subWeights) : nil, subWeights);
}

- (void)dealloc {
  RELEASE_(clauses_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanQueryArray:", "SpanOrQuery", NULL, 0x81, NULL, NULL },
    { "addClauseWithOrgApacheLuceneSearchSpansSpanQuery:", "addClause", "V", 0x11, NULL, NULL },
    { "getClauses", NULL, "[Lorg.apache.lucene.search.spans.SpanQuery;", 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.search.spans.SpanOrQuery;", 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.spans.SpanWeight;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "clauses_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/search/spans/SpanQuery;>;", .constantValue.asLong = 0 },
    { "field_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.spans.SpanOrQuery$SpanOrWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanOrQuery = { 2, "SpanOrQuery", "org.apache.lucene.search.spans", NULL, 0x1, 10, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansSpanOrQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(OrgApacheLuceneSearchSpansSpanOrQuery *self, IOSObjectArray *clauses) {
  OrgApacheLuceneSearchSpansSpanQuery_init(self);
  JreStrongAssignAndConsume(&self->clauses_, new_JavaUtilArrayList_initWithInt_(((IOSObjectArray *) nil_chk(clauses))->size_));
  {
    IOSObjectArray *a__ = clauses;
    OrgApacheLuceneSearchSpansSpanQuery * const *b__ = a__->buffer_;
    OrgApacheLuceneSearchSpansSpanQuery * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchSpansSpanQuery *seq = *b__++;
      OrgApacheLuceneSearchSpansSpanOrQuery_addClauseWithOrgApacheLuceneSearchSpansSpanQuery_(self, seq);
    }
  }
}

OrgApacheLuceneSearchSpansSpanOrQuery *new_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(IOSObjectArray *clauses) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_, clauses)
}

OrgApacheLuceneSearchSpansSpanOrQuery *create_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_(IOSObjectArray *clauses) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_, clauses)
}

void OrgApacheLuceneSearchSpansSpanOrQuery_addClauseWithOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchSpansSpanOrQuery *self, OrgApacheLuceneSearchSpansSpanQuery *clause) {
  if (self->field_ == nil) {
    JreStrongAssign(&self->field_, [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) getField]);
  }
  else if ([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) getField] != nil && ![((NSString *) nil_chk([clause getField])) isEqual:self->field_]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Clauses must have same field.");
  }
  [((id<JavaUtilList>) nil_chk(self->clauses_)) addWithId:clause];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanOrQuery)

@implementation OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanOrQuery:(OrgApacheLuceneSearchSpansSpanOrQuery *)outer$
                       withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                              withJavaUtilMap:(id<JavaUtilMap>)terms
                                             withJavaUtilList:(id<JavaUtilList>)subWeights {
  OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_initWithOrgApacheLuceneSearchSpansSpanOrQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withJavaUtilList_(self, outer$, searcher, terms, subWeights);
  return self;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  for (OrgApacheLuceneSearchSpansSpanWeight * __strong w in nil_chk(subWeights_)) {
    [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(w)) extractTermsWithJavaUtilSet:terms];
  }
}

- (void)extractTermContextsWithJavaUtilMap:(id<JavaUtilMap>)contexts {
  for (OrgApacheLuceneSearchSpansSpanWeight * __strong w in nil_chk(subWeights_)) {
    [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(w)) extractTermContextsWithJavaUtilMap:contexts];
  }
}

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                     withOrgApacheLuceneSearchSpansSpanWeight_Postings:(OrgApacheLuceneSearchSpansSpanWeight_Postings *)requiredPostings {
  JavaUtilArrayList *subSpans = create_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(this$0_->clauses_)) size]);
  for (OrgApacheLuceneSearchSpansSpanWeight * __strong w in nil_chk(subWeights_)) {
    OrgApacheLuceneSearchSpansSpans *spans = [((OrgApacheLuceneSearchSpansSpanWeight *) nil_chk(w)) getSpansWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchSpansSpanWeight_Postings:requiredPostings];
    if (spans != nil) {
      [subSpans addWithId:spans];
    }
  }
  if ([subSpans size] == 0) {
    return nil;
  }
  else if ([subSpans size] == 1) {
    return [subSpans getWithInt:0];
  }
  OrgApacheLuceneSearchDisiPriorityQueue *byDocQueue = create_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_([subSpans size]);
  for (OrgApacheLuceneSearchSpansSpans * __strong spans in subSpans) {
    [byDocQueue addWithOrgApacheLuceneSearchDisiWrapper:create_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(spans)];
  }
  OrgApacheLuceneSearchSpansSpanPositionQueue *byPositionQueue = create_OrgApacheLuceneSearchSpansSpanPositionQueue_initWithInt_([subSpans size]);
  return create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(self, byDocQueue, byPositionQueue, subSpans);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(subWeights_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanOrQuery:withOrgApacheLuceneSearchIndexSearcher:withJavaUtilMap:withJavaUtilList:", "SpanOrWeight", NULL, 0x1, NULL, "(Lorg/apache/lucene/search/spans/SpanOrQuery;Lorg/apache/lucene/search/IndexSearcher;Ljava/util/Map<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/TermContext;>;Ljava/util/List<Lorg/apache/lucene/search/spans/SpanWeight;>;)V" },
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V" },
    { "extractTermContextsWithJavaUtilMap:", "extractTermContexts", "V", 0x1, NULL, "(Ljava/util/Map<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/TermContext;>;)V" },
    { "getSpansWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchSpansSpanWeight_Postings:", "getSpans", "Lorg.apache.lucene.search.spans.Spans;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.spans.SpanOrQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "subWeights_", NULL, 0x10, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/search/spans/SpanWeight;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight = { 2, "SpanOrWeight", "org.apache.lucene.search.spans", "SpanOrQuery", 0x1, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight;
}

@end

void OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_initWithOrgApacheLuceneSearchSpansSpanOrQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withJavaUtilList_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *self, OrgApacheLuceneSearchSpansSpanOrQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, id<JavaUtilList> subWeights) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanWeight_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, searcher, terms);
  JreStrongAssign(&self->subWeights_, subWeights);
}

OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *new_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_initWithOrgApacheLuceneSearchSpansSpanOrQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withJavaUtilList_(OrgApacheLuceneSearchSpansSpanOrQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, id<JavaUtilList> subWeights) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight, initWithOrgApacheLuceneSearchSpansSpanOrQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withJavaUtilList_, outer$, searcher, terms, subWeights)
}

OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_initWithOrgApacheLuceneSearchSpansSpanOrQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withJavaUtilList_(OrgApacheLuceneSearchSpansSpanOrQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, id<JavaUtilList> subWeights) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight, initWithOrgApacheLuceneSearchSpansSpanOrQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withJavaUtilList_, outer$, searcher, terms, subWeights)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight)

@implementation OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1

- (jint)nextDoc {
  JreStrongAssign(&topPositionSpans_, nil);
  OrgApacheLuceneSearchDisiWrapper *topDocSpans = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(val$byDocQueue_)) top];
  jint currentDoc = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(topDocSpans))->doc_;
  do {
    topDocSpans->doc_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(topDocSpans->iterator_)) nextDoc];
    topDocSpans = [val$byDocQueue_ updateTop];
  }
  while (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(topDocSpans))->doc_ == currentDoc);
  return topDocSpans->doc_;
}

- (jint)advanceWithInt:(jint)target {
  JreStrongAssign(&topPositionSpans_, nil);
  OrgApacheLuceneSearchDisiWrapper *topDocSpans = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(val$byDocQueue_)) top];
  do {
    ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(topDocSpans))->doc_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(topDocSpans->iterator_)) advanceWithInt:target];
    topDocSpans = [val$byDocQueue_ updateTop];
  }
  while (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(topDocSpans))->doc_ < target);
  return topDocSpans->doc_;
}

- (jint)docID {
  OrgApacheLuceneSearchDisiWrapper *topDocSpans = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(val$byDocQueue_)) top];
  return ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(topDocSpans))->doc_;
}

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator {
  jboolean hasApproximation = false;
  for (OrgApacheLuceneSearchDisiWrapper * __strong w in nil_chk(val$byDocQueue_)) {
    if (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(w))->twoPhaseView_ != nil) {
      hasApproximation = true;
      break;
    }
  }
  if (!hasApproximation) {
    return nil;
  }
  return create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(self, create_OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(val$byDocQueue_));
}

- (jboolean)twoPhaseCurrentDocMatches {
  OrgApacheLuceneSearchDisiWrapper *listAtCurrentDoc = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(val$byDocQueue_)) topList];
  jint currentDoc = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(listAtCurrentDoc))->doc_;
  while (listAtCurrentDoc->twoPhaseView_ != nil) {
    if ([listAtCurrentDoc->twoPhaseView_ matches]) {
      listAtCurrentDoc->lastApproxMatchDoc_ = currentDoc;
      break;
    }
    listAtCurrentDoc->lastApproxNonMatchDoc_ = currentDoc;
    listAtCurrentDoc = listAtCurrentDoc->next_;
    if (listAtCurrentDoc == nil) {
      return false;
    }
  }
  lastDocTwoPhaseMatched_ = currentDoc;
  JreStrongAssign(&topPositionSpans_, nil);
  return true;
}

- (void)fillPositionQueue {
  JreAssert(([((OrgApacheLuceneSearchSpansSpanPositionQueue *) nil_chk(val$byPositionQueue_)) size] == 0), (@"org/apache/lucene/search/spans/SpanOrQuery.java:275 condition failed: assert byPositionQueue.size() == 0;"));
  OrgApacheLuceneSearchDisiWrapper *listAtCurrentDoc = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(val$byDocQueue_)) topList];
  while (listAtCurrentDoc != nil) {
    OrgApacheLuceneSearchSpansSpans *spansAtDoc = ((OrgApacheLuceneSearchSpansSpans *) listAtCurrentDoc->iterator_);
    if (lastDocTwoPhaseMatched_ == listAtCurrentDoc->doc_) {
      if (listAtCurrentDoc->twoPhaseView_ != nil) {
        if (listAtCurrentDoc->lastApproxNonMatchDoc_ == listAtCurrentDoc->doc_) {
          spansAtDoc = nil;
        }
        else {
          if (listAtCurrentDoc->lastApproxMatchDoc_ != listAtCurrentDoc->doc_) {
            if (![listAtCurrentDoc->twoPhaseView_ matches]) {
              spansAtDoc = nil;
            }
          }
        }
      }
    }
    if (spansAtDoc != nil) {
      JreAssert(([spansAtDoc docID] == listAtCurrentDoc->doc_), (@"org/apache/lucene/search/spans/SpanOrQuery.java:295 condition failed: assert spansAtDoc.docID() == listAtCurrentDoc.doc;"));
      JreAssert(([spansAtDoc startPosition] == -1), (@"org/apache/lucene/search/spans/SpanOrQuery.java:296 condition failed: assert spansAtDoc.startPosition() == -1;"));
      [spansAtDoc nextStartPosition];
      JreAssert(([spansAtDoc startPosition] != OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS), (@"org/apache/lucene/search/spans/SpanOrQuery.java:298 condition failed: assert spansAtDoc.startPosition() != NO_MORE_POSITIONS;"));
      [val$byPositionQueue_ addWithId:spansAtDoc];
    }
    listAtCurrentDoc = listAtCurrentDoc->next_;
  }
  JreAssert(([val$byPositionQueue_ size] > 0), (@"org/apache/lucene/search/spans/SpanOrQuery.java:303 condition failed: assert byPositionQueue.size() > 0;"));
}

- (jint)nextStartPosition {
  if (topPositionSpans_ == nil) {
    [((OrgApacheLuceneSearchSpansSpanPositionQueue *) nil_chk(val$byPositionQueue_)) clear];
    [self fillPositionQueue];
    JreStrongAssign(&topPositionSpans_, [val$byPositionQueue_ top]);
  }
  else {
    [topPositionSpans_ nextStartPosition];
    JreStrongAssign(&topPositionSpans_, [((OrgApacheLuceneSearchSpansSpanPositionQueue *) nil_chk(val$byPositionQueue_)) updateTop]);
  }
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(topPositionSpans_)) startPosition];
}

- (jint)startPosition {
  return topPositionSpans_ == nil ? -1 : [topPositionSpans_ startPosition];
}

- (jint)endPosition {
  return topPositionSpans_ == nil ? -1 : [topPositionSpans_ endPosition];
}

- (jint)width {
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(topPositionSpans_)) width];
}

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector {
  [((OrgApacheLuceneSearchSpansSpans *) nil_chk(topPositionSpans_)) collectWithOrgApacheLuceneSearchSpansSpanCollector:collector];
}

- (NSString *)description {
  return JreStrcat("$@$I$I$I", @"spanOr(", this$0_->this$0_, @")@", [self docID], @": ", [self startPosition], @" - ", [self endPosition]);
}

- (jlong)cost {
  if (cost_ == -1) {
    cost_ = 0;
    for (OrgApacheLuceneSearchSpansSpans * __strong spans in nil_chk(val$subSpans_)) {
      cost_ += [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) cost];
    }
  }
  return cost_;
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight:(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *)outer$
                                withOrgApacheLuceneSearchDisiPriorityQueue:(OrgApacheLuceneSearchDisiPriorityQueue *)capture$0
                           withOrgApacheLuceneSearchSpansSpanPositionQueue:(OrgApacheLuceneSearchSpansSpanPositionQueue *)capture$1
                                                     withJavaUtilArrayList:(JavaUtilArrayList *)capture$2 {
  OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(topPositionSpans_);
  RELEASE_(val$byDocQueue_);
  RELEASE_(val$byPositionQueue_);
  RELEASE_(val$subSpans_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "asTwoPhaseIterator", NULL, "Lorg.apache.lucene.search.TwoPhaseIterator;", 0x1, NULL, NULL },
    { "twoPhaseCurrentDocMatches", NULL, "Z", 0x0, "Ljava.io.IOException;", NULL },
    { "fillPositionQueue", NULL, "V", 0x0, "Ljava.io.IOException;", NULL },
    { "nextStartPosition", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "startPosition", NULL, "I", 0x1, NULL, NULL },
    { "endPosition", NULL, "I", 0x1, NULL, NULL },
    { "width", NULL, "I", 0x1, NULL, NULL },
    { "collectWithOrgApacheLuceneSearchSpansSpanCollector:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight:withOrgApacheLuceneSearchDisiPriorityQueue:withOrgApacheLuceneSearchSpansSpanPositionQueue:withJavaUtilArrayList:", "", NULL, 0x0, NULL, "(Lorg/apache/lucene/search/spans/SpanOrQuery$SpanOrWeight;Lorg/apache/lucene/search/DisiPriorityQueue<Lorg/apache/lucene/search/spans/Spans;>;Lorg/apache/lucene/search/spans/SpanPositionQueue;Ljava/util/ArrayList<Lorg/apache/lucene/search/spans/Spans;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.spans.SpanOrQuery$SpanOrWeight;", NULL, NULL, .constantValue.asLong = 0 },
    { "topPositionSpans_", NULL, 0x0, "Lorg.apache.lucene.search.spans.Spans;", NULL, NULL, .constantValue.asLong = 0 },
    { "lastDocTwoPhaseMatched_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "cost_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "val$byDocQueue_", NULL, 0x1012, "Lorg.apache.lucene.search.DisiPriorityQueue;", NULL, "Lorg/apache/lucene/search/DisiPriorityQueue<Lorg/apache/lucene/search/spans/Spans;>;", .constantValue.asLong = 0 },
    { "val$byPositionQueue_", NULL, 0x1012, "Lorg.apache.lucene.search.spans.SpanPositionQueue;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$subSpans_", NULL, 0x1012, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lorg/apache/lucene/search/spans/Spans;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight", "getSpansWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchSpansSpanWeight_Postings:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 = { 2, "", "org.apache.lucene.search.spans", "SpanOrQuery$SpanOrWeight", 0x8008, 14, methods, 7, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1;
}

@end

void OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *self, OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *outer$, OrgApacheLuceneSearchDisiPriorityQueue *capture$0, OrgApacheLuceneSearchSpansSpanPositionQueue *capture$1, JavaUtilArrayList *capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$byDocQueue_, capture$0);
  JreStrongAssign(&self->val$byPositionQueue_, capture$1);
  JreStrongAssign(&self->val$subSpans_, capture$2);
  OrgApacheLuceneSearchSpansSpans_init(self);
  JreStrongAssign(&self->topPositionSpans_, nil);
  self->lastDocTwoPhaseMatched_ = -1;
  self->cost_ = -1;
}

OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *new_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *outer$, OrgApacheLuceneSearchDisiPriorityQueue *capture$0, OrgApacheLuceneSearchSpansSpanPositionQueue *capture$1, JavaUtilArrayList *capture$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1, initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_, outer$, capture$0, capture$1, capture$2)
}

OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight *outer$, OrgApacheLuceneSearchDisiPriorityQueue *capture$0, OrgApacheLuceneSearchSpansSpanPositionQueue *capture$1, JavaUtilArrayList *capture$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1, initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_withOrgApacheLuceneSearchDisiPriorityQueue_withOrgApacheLuceneSearchSpansSpanPositionQueue_withJavaUtilArrayList_, outer$, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1)

@implementation OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1

- (jboolean)matches {
  return [this$0_ twoPhaseCurrentDocMatches];
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1:(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *)outer$
                                    withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0 {
  OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "matches", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1:withOrgApacheLuceneSearchDocIdSetIterator:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.spans.SpanOrQuery$SpanOrWeight$1;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1", "asTwoPhaseIterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 = { 2, "", "org.apache.lucene.search.spans", "SpanOrQuery$SpanOrWeight$", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1;
}

@end

void OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 *self, OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, arg$0);
}

OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 *new_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1, initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_, outer$, arg$0)
}

OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1 *create_OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1_initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1, initWithOrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_withOrgApacheLuceneSearchDocIdSetIterator_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanOrQuery_SpanOrWeight_$1_$1)
