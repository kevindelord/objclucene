//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadNearQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/payloads/AveragePayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadNearQuery.h"
#include "org/apache/lucene/search/payloads/PayloadSpanCollector.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanScorer.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight () {
 @public
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *this$1_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight, this$1_, OrgApacheLuceneSearchPayloadsPayloadNearQuery *)

@interface OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer () {
 @public
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *this$0_;
  jint payloadsSeen_;
  OrgApacheLuceneSearchPayloadsPayloadSpanCollector *collector_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, this$0_, OrgApacheLuceneSearchPayloadsPayloadNearQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, collector_, OrgApacheLuceneSearchPayloadsPayloadSpanCollector *)

@implementation OrgApacheLuceneSearchPayloadsPayloadNearQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                         withInt:(jint)slop
                                                     withBoolean:(jboolean)inOrder {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(self, clauses, slop, inOrder);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQueryArray:(IOSObjectArray *)clauses
                                                         withInt:(jint)slop
                                                     withBoolean:(jboolean)inOrder
                withOrgApacheLuceneSearchPayloadsPayloadFunction:(OrgApacheLuceneSearchPayloadsPayloadFunction *)function {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(self, clauses, slop, inOrder, function);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                                 withBoolean:(jboolean)needsScores {
  id<JavaUtilList> subWeights = create_JavaUtilArrayList_init();
  for (OrgApacheLuceneSearchSpansSpanQuery * __strong q in nil_chk(clauses_)) {
    [subWeights addWithId:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(q)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:false]];
  }
  return create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, subWeights, searcher, needsScores ? OrgApacheLuceneSearchSpansSpanQuery_getTermContextsWithJavaUtilCollection_(subWeights) : nil);
}

- (OrgApacheLuceneSearchPayloadsPayloadNearQuery *)clone {
  jint sz = [((id<JavaUtilList>) nil_chk(clauses_)) size];
  IOSObjectArray *newClauses = [IOSObjectArray arrayWithLength:sz type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
  for (jint i = 0; i < sz; i++) {
    IOSObjectArray_Set(newClauses, i, (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk([((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:i])) clone], [OrgApacheLuceneSearchSpansSpanQuery class]));
  }
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *boostingNearQuery = create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(newClauses, slop_, inOrder_, function_);
  [boostingNearQuery setBoostWithFloat:[self getBoost]];
  return boostingNearQuery;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"payloadNear(["];
  id<JavaUtilIterator> i = [((id<JavaUtilList>) nil_chk(clauses_)) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(i)) hasNext]) {
    OrgApacheLuceneSearchSpansSpanQuery *clause = [i next];
    [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(clause)) toStringWithNSString:field]];
    if ([i hasNext]) {
      [buffer appendWithNSString:@", "];
    }
  }
  [buffer appendWithNSString:@"], "];
  [buffer appendWithInt:slop_];
  [buffer appendWithNSString:@", "];
  [buffer appendWithBoolean:inOrder_];
  [buffer appendWithNSString:@")"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((jint) [((NSString *) nil_chk(fieldName_)) hash]);
  result = prime * result + ((jint) [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(function_)) hash]);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (![super isEqual:obj]) {
    return false;
  }
  OrgApacheLuceneSearchPayloadsPayloadNearQuery *other = (OrgApacheLuceneSearchPayloadsPayloadNearQuery *) cast_chk(obj, [OrgApacheLuceneSearchPayloadsPayloadNearQuery class]);
  return [((NSString *) nil_chk(fieldName_)) isEqual:((OrgApacheLuceneSearchPayloadsPayloadNearQuery *) nil_chk(other))->fieldName_] && [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(function_)) isEqual:other->function_];
}

- (void)dealloc {
  RELEASE_(fieldName_);
  RELEASE_(function_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpansSpanQueryArray:withInt:withBoolean:", "PayloadNearQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchSpansSpanQueryArray:withInt:withBoolean:withOrgApacheLuceneSearchPayloadsPayloadFunction:", "PayloadNearQuery", NULL, 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.spans.SpanWeight;", 0x1, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.search.payloads.PayloadNearQuery;", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fieldName_", NULL, 0x4, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "function_", NULL, 0x4, "Lorg.apache.lucene.search.payloads.PayloadFunction;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.payloads.PayloadNearQuery$PayloadNearSpanWeight;", "Lorg.apache.lucene.search.payloads.PayloadNearQuery$PayloadNearSpanScorer;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadNearQuery = { 2, "PayloadNearQuery", "org.apache.lucene.search.payloads", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsPayloadNearQuery;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(self, clauses, slop, inOrder, create_OrgApacheLuceneSearchPayloadsAveragePayloadFunction_init());
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_, clauses, slop, inOrder)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(IOSObjectArray *clauses, jint slop, jboolean inOrder) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_, clauses, slop, inOrder)
}

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *self, IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(self, clauses, slop, inOrder);
  JreStrongAssign(&self->fieldName_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(IOSObjectArray_Get(nil_chk(clauses), 0))) getField], @"all clauses must have same non null field"));
  JreStrongAssign(&self->function_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(function));
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_, clauses, slop, inOrder, function)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_(IOSObjectArray *clauses, jint slop, jboolean inOrder, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery, initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_withOrgApacheLuceneSearchPayloadsPayloadFunction_, clauses, slop, inOrder, function)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadNearQuery)

@implementation OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:(OrgApacheLuceneSearchPayloadsPayloadNearQuery *)outer$
                                                     withJavaUtilList:(id<JavaUtilList>)subWeights
                               withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                      withJavaUtilMap:(id<JavaUtilMap>)terms {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, subWeights, searcher, terms);
  return self;
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchSpansSpans *spans = [super getSpansWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchSpansSpanWeight_Postings:JreLoadEnum(OrgApacheLuceneSearchSpansSpanWeight_Postings, PAYLOADS)];
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *simScorer = simWeight_ == nil ? nil : [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:simWeight_ withOrgApacheLuceneIndexLeafReaderContext:context];
  return (spans == nil) ? nil : create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(this$1_, spans, self, simScorer);
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *scorer = (OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *) cast_chk([self scorerWithOrgApacheLuceneIndexLeafReaderContext:context], [OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer class]);
  if (scorer != nil) {
    jint newDoc = [scorer advanceWithInt:doc];
    if (newDoc == doc) {
      jfloat freq = [scorer freq];
      OrgApacheLuceneSearchExplanation *freqExplanation = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(freq, JreStrcat("$F", @"phraseFreq=", freq), [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
      OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer = [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(similarity_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:simWeight_ withOrgApacheLuceneIndexLeafReaderContext:context];
      OrgApacheLuceneSearchExplanation *scoreExplanation = [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer)) explainWithInt:doc withOrgApacheLuceneSearchExplanation:freqExplanation];
      OrgApacheLuceneSearchExplanation *expl = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([((OrgApacheLuceneSearchExplanation *) nil_chk(scoreExplanation)) getValue], JreStrcat("$@$I$$$", @"weight(", [self getQuery], @" in ", doc, @") [", [[similarity_ getClass] getSimpleName], @"], result of:"), [IOSObjectArray arrayWithObjects:(id[]){ scoreExplanation } count:1 type:OrgApacheLuceneSearchExplanation_class_()]);
      NSString *field = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(((OrgApacheLuceneSearchSpansSpanQuery *) cast_chk([self getQuery], [OrgApacheLuceneSearchSpansSpanQuery class])))) getField];
      OrgApacheLuceneSearchExplanation *payloadExpl = [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$1_->function_)) explainWithInt:doc withNSString:field withInt:scorer->payloadsSeen_ withFloat:scorer->payloadScore_];
      return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([((OrgApacheLuceneSearchExplanation *) nil_chk(expl)) getValue] * [((OrgApacheLuceneSearchExplanation *) nil_chk(payloadExpl)) getValue], @"PayloadNearQuery, product of:", [IOSObjectArray arrayWithObjects:(id[]){ expl, payloadExpl } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
    }
  }
  return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"no matching term", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (void)dealloc {
  RELEASE_(this$1_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:withJavaUtilList:withOrgApacheLuceneSearchIndexSearcher:withJavaUtilMap:", "PayloadNearSpanWeight", NULL, 0x1, NULL, "(Lorg/apache/lucene/search/payloads/PayloadNearQuery;Ljava/util/List<Lorg/apache/lucene/search/spans/SpanWeight;>;Lorg/apache/lucene/search/IndexSearcher;Ljava/util/Map<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/TermContext;>;)V" },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$1_", NULL, 0x1012, "Lorg.apache.lucene.search.payloads.PayloadNearQuery;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight = { 2, "PayloadNearSpanWeight", "org.apache.lucene.search.payloads", "PayloadNearQuery", 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *self, OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms) {
  JreStrongAssign(&self->this$1_, outer$);
  OrgApacheLuceneSearchSpansSpanNearQuery_SpanNearWeight_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(self, outer$, subWeights, searcher, terms);
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_, outer$, subWeights, searcher, terms)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, id<JavaUtilList> subWeights, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withJavaUtilList_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_, outer$, subWeights, searcher, terms)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanWeight)

@implementation OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:(OrgApacheLuceneSearchPayloadsPayloadNearQuery *)outer$
                                  withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                             withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)weight
            withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer {
  OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, outer$, spans, weight, docScorer);
  return self;
}

- (void)processPayloadsWithJavaUtilCollection:(id<JavaUtilCollection>)payLoads
                                      withInt:(jint)start
                                      withInt:(jint)end {
  for (IOSByteArray * __strong thePayload in nil_chk(payLoads)) {
    JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(scratch_))->bytes_, thePayload);
    scratch_->offset_ = 0;
    scratch_->length_ = ((IOSByteArray *) nil_chk(thePayload))->size_;
    payloadScore_ = [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->function_)) currentScoreWithInt:[self docID] withNSString:this$0_->fieldName_ withInt:start withInt:end withInt:payloadsSeen_ withFloat:payloadScore_ withFloat:[((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer_)) computePayloadFactorWithInt:[self docID] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) startPosition] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) endPosition] withOrgApacheLuceneUtilBytesRef:scratch_]];
    ++payloadsSeen_;
  }
}

- (void)doStartCurrentDoc {
  payloadScore_ = 0;
  payloadsSeen_ = 0;
}

- (void)doCurrentSpans {
  [((OrgApacheLuceneSearchPayloadsPayloadSpanCollector *) nil_chk(collector_)) reset];
  [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) collectWithOrgApacheLuceneSearchSpansSpanCollector:collector_];
  [self processPayloadsWithJavaUtilCollection:[collector_ getPayloads] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) startPosition] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_PayloadNearSpanScorer_)) endPosition]];
}

- (jfloat)scoreCurrentDoc {
  return [super scoreCurrentDoc] * [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->function_)) docScoreWithInt:[self docID] withNSString:this$0_->fieldName_ withInt:payloadsSeen_ withFloat:payloadScore_];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(spans_PayloadNearSpanScorer_);
  RELEASE_(collector_);
  RELEASE_(scratch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery:withOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpanWeight:withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:", "PayloadNearSpanScorer", NULL, 0x4, NULL, NULL },
    { "processPayloadsWithJavaUtilCollection:withInt:withInt:", "processPayloads", "V", 0x4, NULL, "(Ljava/util/Collection<[LB;>;II)V" },
    { "doStartCurrentDoc", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "doCurrentSpans", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "scoreCurrentDoc", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.payloads.PayloadNearQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "spans_PayloadNearSpanScorer_", "spans", 0x0, "Lorg.apache.lucene.search.spans.Spans;", NULL, NULL, .constantValue.asLong = 0 },
    { "payloadScore_", NULL, 0x4, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "payloadsSeen_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "collector_", NULL, 0x12, "Lorg.apache.lucene.search.payloads.PayloadSpanCollector;", NULL, NULL, .constantValue.asLong = 0 },
    { "scratch_", NULL, 0x0, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer = { 2, "PayloadNearSpanScorer", "org.apache.lucene.search.payloads", "PayloadNearQuery", 0x1, 5, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *self, OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, spans, weight, docScorer);
  JreStrongAssignAndConsume(&self->collector_, new_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init());
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRef_init());
  JreStrongAssign(&self->spans_PayloadNearSpanScorer_, spans);
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *new_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, outer$, spans, weight, docScorer)
}

OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer *create_OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchPayloadsPayloadNearQuery *outer$, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchSpansSpanWeight *weight, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadNearQuery_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, outer$, spans, weight, docScorer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadNearQuery_PayloadNearSpanScorer)
