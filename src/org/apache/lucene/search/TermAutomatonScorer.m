//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/TermAutomatonScorer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/System.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TermAutomatonQuery.h"
#include "org/apache/lucene/search/TermAutomatonScorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/PriorityQueue.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/RunAutomaton.h"

@class OrgApacheLuceneSearchTermAutomatonScorer_PosState;

@interface OrgApacheLuceneSearchTermAutomatonScorer () {
 @public
  IOSObjectArray *subs_;
  IOSObjectArray *subsOnDoc_;
  OrgApacheLuceneUtilPriorityQueue *docIDQueue_;
  OrgApacheLuceneUtilPriorityQueue *posQueue_;
  OrgApacheLuceneUtilAutomatonRunAutomaton *runAutomaton_;
  id<JavaUtilMap> idToTerm_;
  IOSObjectArray *positions_;
  jint anyTermID_;
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer_;
  jint numSubsOnDoc_;
  jlong cost_;
  jint docID_;
  jint freq_;
}

/*!
 @brief Pops all enums positioned on the current (minimum) doc
 */
- (void)popCurrentDoc;

/*!
 @brief Pushes all previously pop'd enums back into the docIDQueue
 */
- (void)pushCurrentDoc;

- (jint)doNext;

- (OrgApacheLuceneSearchTermAutomatonScorer_PosState *)getPositionWithInt:(jint)pos;

- (void)shiftWithInt:(jint)pos;

- (void)countMatches;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, subs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, subsOnDoc_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, docIDQueue_, OrgApacheLuceneUtilPriorityQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, posQueue_, OrgApacheLuceneUtilPriorityQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, runAutomaton_, OrgApacheLuceneUtilAutomatonRunAutomaton *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, idToTerm_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, positions_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer, docScorer_, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)

__attribute__((unused)) static void OrgApacheLuceneSearchTermAutomatonScorer_popCurrentDoc(OrgApacheLuceneSearchTermAutomatonScorer *self);

__attribute__((unused)) static void OrgApacheLuceneSearchTermAutomatonScorer_pushCurrentDoc(OrgApacheLuceneSearchTermAutomatonScorer *self);

__attribute__((unused)) static jint OrgApacheLuceneSearchTermAutomatonScorer_doNext(OrgApacheLuceneSearchTermAutomatonScorer *self);

__attribute__((unused)) static OrgApacheLuceneSearchTermAutomatonScorer_PosState *OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(OrgApacheLuceneSearchTermAutomatonScorer *self, jint pos);

__attribute__((unused)) static void OrgApacheLuceneSearchTermAutomatonScorer_shiftWithInt_(OrgApacheLuceneSearchTermAutomatonScorer *self, jint pos);

__attribute__((unused)) static void OrgApacheLuceneSearchTermAutomatonScorer_countMatches(OrgApacheLuceneSearchTermAutomatonScorer *self);

/*!
 @brief Sorts by docID so we can quickly pull out all scorers that are on
 the same (lowest) docID.
 */
@interface OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue : OrgApacheLuceneUtilPriorityQueue

- (instancetype)initWithInt:(jint)maxSize;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)a
                    withId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue)

__attribute__((unused)) static void OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue *self, jint maxSize);

__attribute__((unused)) static OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue *new_OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue *create_OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(jint maxSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue)

/*!
 @brief Sorts by position so we can visit all scorers on one doc, by
 position.
 */
@interface OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue : OrgApacheLuceneUtilPriorityQueue

- (instancetype)initWithInt:(jint)maxSize;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)a
                    withId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue)

__attribute__((unused)) static void OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue *self, jint maxSize);

__attribute__((unused)) static OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue *new_OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue *create_OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(jint maxSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue)

@interface OrgApacheLuceneSearchTermAutomatonScorer_PosState : NSObject {
 @public
  IOSIntArray *states_;
  jint count_;
}

- (void)addWithInt:(jint)state;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermAutomatonScorer_PosState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermAutomatonScorer_PosState, states_, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchTermAutomatonScorer_PosState_init(OrgApacheLuceneSearchTermAutomatonScorer_PosState *self);

__attribute__((unused)) static OrgApacheLuceneSearchTermAutomatonScorer_PosState *new_OrgApacheLuceneSearchTermAutomatonScorer_PosState_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTermAutomatonScorer_PosState *create_OrgApacheLuceneSearchTermAutomatonScorer_PosState_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermAutomatonScorer_PosState)

@implementation OrgApacheLuceneSearchTermAutomatonScorer

- (instancetype)initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight:(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *)weight
                     withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray:(IOSObjectArray *)subs
                                                                            withInt:(jint)anyTermID
                                                                    withJavaUtilMap:(id<JavaUtilMap>)idToTerm
                          withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer {
  OrgApacheLuceneSearchTermAutomatonScorer_initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray_withInt_withJavaUtilMap_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, weight, subs, anyTermID, idToTerm, docScorer);
  return self;
}

- (void)popCurrentDoc {
  OrgApacheLuceneSearchTermAutomatonScorer_popCurrentDoc(self);
}

- (void)pushCurrentDoc {
  OrgApacheLuceneSearchTermAutomatonScorer_pushCurrentDoc(self);
}

- (jint)nextDoc {
  for (jint i = 0; i < numSubsOnDoc_; i++) {
    OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *sub = IOSObjectArray_Get(nil_chk(subsOnDoc_), i);
    if ([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(sub))->posEnum_)) nextDoc] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      sub->posLeft_ = [sub->posEnum_ freq] - 1;
      sub->pos_ = [sub->posEnum_ nextPosition];
    }
  }
  OrgApacheLuceneSearchTermAutomatonScorer_pushCurrentDoc(self);
  return OrgApacheLuceneSearchTermAutomatonScorer_doNext(self);
}

- (jint)advanceWithInt:(jint)target {
  if ([((OrgApacheLuceneUtilPriorityQueue *) nil_chk(docIDQueue_)) size] > 0) {
    OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *top = [docIDQueue_ top];
    while ([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(top))->posEnum_)) docID] < target) {
      if ([top->posEnum_ advanceWithInt:target] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
        top->posLeft_ = [top->posEnum_ freq] - 1;
        top->pos_ = [top->posEnum_ nextPosition];
      }
      top = [docIDQueue_ updateTop];
    }
  }
  for (jint i = 0; i < numSubsOnDoc_; i++) {
    OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *sub = IOSObjectArray_Get(nil_chk(subsOnDoc_), i);
    if ([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(sub))->posEnum_)) advanceWithInt:target] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      sub->posLeft_ = [sub->posEnum_ freq] - 1;
      sub->pos_ = [sub->posEnum_ nextPosition];
    }
  }
  OrgApacheLuceneSearchTermAutomatonScorer_pushCurrentDoc(self);
  return OrgApacheLuceneSearchTermAutomatonScorer_doNext(self);
}

- (jint)doNext {
  return OrgApacheLuceneSearchTermAutomatonScorer_doNext(self);
}

- (OrgApacheLuceneSearchTermAutomatonScorer_PosState *)getPositionWithInt:(jint)pos {
  return OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(self, pos);
}

- (void)shiftWithInt:(jint)pos {
  OrgApacheLuceneSearchTermAutomatonScorer_shiftWithInt_(self, pos);
}

- (void)countMatches {
  OrgApacheLuceneSearchTermAutomatonScorer_countMatches(self);
}

- (NSString *)description {
  return JreStrcat("$@C", @"TermAutomatonScorer(", weight_, ')');
}

- (jint)freq {
  return freq_;
}

- (jint)docID {
  return docID_;
}

- (jfloat)score {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *) nil_chk(docScorer_)) scoreWithInt:docID_ withFloat:freq_];
}

- (jlong)cost {
  return cost_;
}

- (void)dealloc {
  RELEASE_(subs_);
  RELEASE_(subsOnDoc_);
  RELEASE_(docIDQueue_);
  RELEASE_(posQueue_);
  RELEASE_(runAutomaton_);
  RELEASE_(idToTerm_);
  RELEASE_(positions_);
  RELEASE_(docScorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight:withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray:withInt:withJavaUtilMap:withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer:", "TermAutomatonScorer", NULL, 0x1, "Ljava.io.IOException;", "(Lorg/apache/lucene/search/TermAutomatonQuery$TermAutomatonWeight;[Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;ILjava/util/Map<Ljava/lang/Integer;Lorg/apache/lucene/util/BytesRef;>;Lorg/apache/lucene/search/similarities/Similarity$SimScorer;)V" },
    { "popCurrentDoc", NULL, "V", 0x2, NULL, NULL },
    { "pushCurrentDoc", NULL, "V", 0x2, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "doNext", NULL, "I", 0x2, "Ljava.io.IOException;", NULL },
    { "getPositionWithInt:", "getPosition", "Lorg.apache.lucene.search.TermAutomatonScorer$PosState;", 0x2, NULL, NULL },
    { "shiftWithInt:", "shift", "V", 0x2, NULL, NULL },
    { "countMatches", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "freq", NULL, "I", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "score", NULL, "F", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "subs_", NULL, 0x12, "[Lorg.apache.lucene.search.TermAutomatonQuery$EnumAndScorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "subsOnDoc_", NULL, 0x12, "[Lorg.apache.lucene.search.TermAutomatonQuery$EnumAndScorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "docIDQueue_", NULL, 0x12, "Lorg.apache.lucene.util.PriorityQueue;", NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;>;", .constantValue.asLong = 0 },
    { "posQueue_", NULL, 0x12, "Lorg.apache.lucene.util.PriorityQueue;", NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;>;", .constantValue.asLong = 0 },
    { "runAutomaton_", NULL, 0x12, "Lorg.apache.lucene.util.automaton.RunAutomaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "idToTerm_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
    { "positions_", NULL, 0x2, "[Lorg.apache.lucene.search.TermAutomatonScorer$PosState;", NULL, NULL, .constantValue.asLong = 0 },
    { "posShift_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "anyTermID_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "docScorer_", NULL, 0x12, "Lorg.apache.lucene.search.similarities.Similarity$SimScorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "numSubsOnDoc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "cost_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "docID_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "freq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.TermAutomatonScorer$DocIDQueue;", "Lorg.apache.lucene.search.TermAutomatonScorer$PositionQueue;", "Lorg.apache.lucene.search.TermAutomatonScorer$TermRunAutomaton;", "Lorg.apache.lucene.search.TermAutomatonScorer$PosState;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonScorer = { 2, "TermAutomatonScorer", "org.apache.lucene.search", NULL, 0x0, 14, methods, 14, fields, 0, NULL, 4, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchTermAutomatonScorer;
}

@end

void OrgApacheLuceneSearchTermAutomatonScorer_initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray_withInt_withJavaUtilMap_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchTermAutomatonScorer *self, OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *weight, IOSObjectArray *subs, jint anyTermID, id<JavaUtilMap> idToTerm, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  self->docID_ = -1;
  JreStrongAssignAndConsume(&self->runAutomaton_, new_OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(((OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *) nil_chk(weight))->automaton_, ((IOSObjectArray *) nil_chk(subs))->size_));
  JreStrongAssign(&self->docScorer_, docScorer);
  JreStrongAssign(&self->idToTerm_, idToTerm);
  JreStrongAssign(&self->subs_, subs);
  JreStrongAssignAndConsume(&self->docIDQueue_, new_OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(subs->size_));
  JreStrongAssignAndConsume(&self->posQueue_, new_OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(subs->size_));
  self->anyTermID_ = anyTermID;
  JreStrongAssignAndConsume(&self->subsOnDoc_, [IOSObjectArray newArrayWithLength:subs->size_ type:OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer_class_()]);
  JreStrongAssignAndConsume(&self->positions_, [IOSObjectArray newArrayWithLength:4 type:OrgApacheLuceneSearchTermAutomatonScorer_PosState_class_()]);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(self->positions_))->size_; i++) {
    IOSObjectArray_SetAndConsume(self->positions_, i, new_OrgApacheLuceneSearchTermAutomatonScorer_PosState_init());
  }
  jlong cost = 0;
  {
    IOSObjectArray *a__ = subs;
    OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer * const *b__ = a__->buffer_;
    OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *sub = *b__++;
      if (sub != nil) {
        cost += [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(sub->posEnum_)) cost];
        IOSObjectArray_Set(self->subsOnDoc_, self->numSubsOnDoc_++, sub);
      }
    }
  }
  self->cost_ = cost;
}

OrgApacheLuceneSearchTermAutomatonScorer *new_OrgApacheLuceneSearchTermAutomatonScorer_initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray_withInt_withJavaUtilMap_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *weight, IOSObjectArray *subs, jint anyTermID, id<JavaUtilMap> idToTerm, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonScorer, initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray_withInt_withJavaUtilMap_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, weight, subs, anyTermID, idToTerm, docScorer)
}

OrgApacheLuceneSearchTermAutomatonScorer *create_OrgApacheLuceneSearchTermAutomatonScorer_initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray_withInt_withJavaUtilMap_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(OrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight *weight, IOSObjectArray *subs, jint anyTermID, id<JavaUtilMap> idToTerm, OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *docScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonScorer, initWithOrgApacheLuceneSearchTermAutomatonQuery_TermAutomatonWeight_withOrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorerArray_withInt_withJavaUtilMap_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_, weight, subs, anyTermID, idToTerm, docScorer)
}

void OrgApacheLuceneSearchTermAutomatonScorer_popCurrentDoc(OrgApacheLuceneSearchTermAutomatonScorer *self) {
  JreAssert((self->numSubsOnDoc_ == 0), (@"org/apache/lucene/search/TermAutomatonScorer.java:115 condition failed: assert numSubsOnDoc == 0;"));
  JreAssert(([((OrgApacheLuceneUtilPriorityQueue *) nil_chk(self->docIDQueue_)) size] > 0), (@"org/apache/lucene/search/TermAutomatonScorer.java:116 condition failed: assert docIDQueue.size() > 0;"));
  IOSObjectArray_Set(nil_chk(self->subsOnDoc_), self->numSubsOnDoc_++, [self->docIDQueue_ pop]);
  self->docID_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(IOSObjectArray_Get(self->subsOnDoc_, 0)))->posEnum_)) docID];
  while ([self->docIDQueue_ size] > 0 && [((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk([self->docIDQueue_ top]))->posEnum_ docID] == self->docID_) {
    IOSObjectArray_Set(self->subsOnDoc_, self->numSubsOnDoc_++, [self->docIDQueue_ pop]);
  }
}

void OrgApacheLuceneSearchTermAutomatonScorer_pushCurrentDoc(OrgApacheLuceneSearchTermAutomatonScorer *self) {
  for (jint i = 0; i < self->numSubsOnDoc_; i++) {
    [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(self->docIDQueue_)) addWithId:IOSObjectArray_Get(nil_chk(self->subsOnDoc_), i)];
  }
  self->numSubsOnDoc_ = 0;
}

jint OrgApacheLuceneSearchTermAutomatonScorer_doNext(OrgApacheLuceneSearchTermAutomatonScorer *self) {
  JreAssert((self->numSubsOnDoc_ == 0), (@"org/apache/lucene/search/TermAutomatonScorer.java:176 condition failed: assert numSubsOnDoc == 0;"));
  JreAssert(([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk([((OrgApacheLuceneUtilPriorityQueue *) nil_chk(self->docIDQueue_)) top]))->posEnum_)) docID] > self->docID_), (@"org/apache/lucene/search/TermAutomatonScorer.java:177 condition failed: assert docIDQueue.top().posEnum.docID() > docID;"));
  while (true) {
    OrgApacheLuceneSearchTermAutomatonScorer_popCurrentDoc(self);
    if (self->docID_ == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      return self->docID_;
    }
    OrgApacheLuceneSearchTermAutomatonScorer_countMatches(self);
    if (self->freq_ > 0) {
      return self->docID_;
    }
    for (jint i = 0; i < self->numSubsOnDoc_; i++) {
      OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *sub = IOSObjectArray_Get(nil_chk(self->subsOnDoc_), i);
      if ([((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(sub))->posEnum_ nextDoc] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
        sub->posLeft_ = [sub->posEnum_ freq] - 1;
        sub->pos_ = [sub->posEnum_ nextPosition];
      }
    }
    OrgApacheLuceneSearchTermAutomatonScorer_pushCurrentDoc(self);
  }
}

OrgApacheLuceneSearchTermAutomatonScorer_PosState *OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(OrgApacheLuceneSearchTermAutomatonScorer *self, jint pos) {
  return IOSObjectArray_Get(nil_chk(self->positions_), pos - self->posShift_);
}

void OrgApacheLuceneSearchTermAutomatonScorer_shiftWithInt_(OrgApacheLuceneSearchTermAutomatonScorer *self, jint pos) {
  jint limit = pos - self->posShift_;
  for (jint i = 0; i < limit; i++) {
    ((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(IOSObjectArray_Get(nil_chk(self->positions_), i)))->count_ = 0;
  }
  self->posShift_ = pos;
}

void OrgApacheLuceneSearchTermAutomatonScorer_countMatches(OrgApacheLuceneSearchTermAutomatonScorer *self) {
  self->freq_ = 0;
  for (jint i = 0; i < self->numSubsOnDoc_; i++) {
    [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(self->posQueue_)) addWithId:IOSObjectArray_Get(nil_chk(self->subsOnDoc_), i)];
  }
  jint lastPos = -1;
  self->posShift_ = -1;
  while ([((OrgApacheLuceneUtilPriorityQueue *) nil_chk(self->posQueue_)) size] != 0) {
    OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *sub = [self->posQueue_ pop];
    jint pos = ((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(sub))->pos_;
    if (self->posShift_ == -1) {
      self->posShift_ = pos;
    }
    if (pos + 1 - self->posShift_ >= ((IOSObjectArray *) nil_chk(self->positions_))->size_) {
      IOSObjectArray *newPositions = [IOSObjectArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(pos + 1 - self->posShift_, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:OrgApacheLuceneSearchTermAutomatonScorer_PosState_class_()];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->positions_, 0, newPositions, 0, ((IOSObjectArray *) nil_chk(self->positions_))->size_);
      for (jint i = ((IOSObjectArray *) nil_chk(self->positions_))->size_; i < newPositions->size_; i++) {
        IOSObjectArray_SetAndConsume(newPositions, i, new_OrgApacheLuceneSearchTermAutomatonScorer_PosState_init());
      }
      JreStrongAssign(&self->positions_, newPositions);
    }
    OrgApacheLuceneSearchTermAutomatonScorer_PosState *posState;
    OrgApacheLuceneSearchTermAutomatonScorer_PosState *nextPosState;
    if (lastPos != -1) {
      if (self->anyTermID_ != -1) {
        jint startLastPos = lastPos;
        while (lastPos < pos) {
          posState = OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(self, lastPos);
          if (((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(posState))->count_ == 0 && lastPos > startLastPos) {
            lastPos = pos;
            break;
          }
          nextPosState = OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(self, lastPos + 1);
          for (jint i = 0; i < posState->count_; i++) {
            jint state = [((OrgApacheLuceneUtilAutomatonRunAutomaton *) nil_chk(self->runAutomaton_)) stepWithInt:IOSIntArray_Get(nil_chk(posState->states_), i) withInt:self->anyTermID_];
            if (state != -1) {
              [((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(nextPosState)) addWithInt:state];
            }
          }
          lastPos++;
        }
      }
    }
    posState = OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(self, pos);
    nextPosState = OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(self, pos + 1);
    if (((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(posState))->count_ == 0 && ((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(nextPosState))->count_ == 0) {
      OrgApacheLuceneSearchTermAutomatonScorer_shiftWithInt_(self, pos);
      posState = OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(self, pos);
      nextPosState = OrgApacheLuceneSearchTermAutomatonScorer_getPositionWithInt_(self, pos + 1);
    }
    for (jint i = 0; i < ((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(posState))->count_; i++) {
      jint state = [((OrgApacheLuceneUtilAutomatonRunAutomaton *) nil_chk(self->runAutomaton_)) stepWithInt:IOSIntArray_Get(nil_chk(posState->states_), i) withInt:sub->termID_];
      if (state != -1) {
        [((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(nextPosState)) addWithInt:state];
        if ([self->runAutomaton_ isAcceptWithInt:state]) {
          self->freq_++;
        }
      }
    }
    jint state = [((OrgApacheLuceneUtilAutomatonRunAutomaton *) nil_chk(self->runAutomaton_)) stepWithInt:0 withInt:sub->termID_];
    if (state != -1) {
      [((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(nextPosState)) addWithInt:state];
      if ([self->runAutomaton_ isAcceptWithInt:state]) {
        self->freq_++;
      }
    }
    if (sub->posLeft_ > 0) {
      sub->pos_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(sub->posEnum_)) nextPosition];
      sub->posLeft_--;
      [self->posQueue_ addWithId:sub];
    }
    lastPos = pos;
  }
  jint limit = lastPos + 1 - self->posShift_;
  for (jint i = 0; i <= limit; i++) {
    ((OrgApacheLuceneSearchTermAutomatonScorer_PosState *) nil_chk(IOSObjectArray_Get(nil_chk(self->positions_), i)))->count_ = 0;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonScorer)

@implementation OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue

- (instancetype)initWithInt:(jint)maxSize {
  OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(self, maxSize);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)a
                    withId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)b {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(a))->posEnum_)) docID] < [((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(b))->posEnum_ docID];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "DocIDQueue", NULL, 0x1, NULL, NULL },
    { "lessThanWithId:withId:", "lessThan", "Z", 0x4, NULL, "(Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;)Z" },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.TermAutomatonQuery$EnumAndScorer;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue = { 2, "DocIDQueue", "org.apache.lucene.search", "TermAutomatonScorer", 0xa, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;>;" };
  return &_OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue;
}

@end

void OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue *self, jint maxSize) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(self, maxSize, false);
}

OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue *new_OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(jint maxSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue, initWithInt_, maxSize)
}

OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue *create_OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue_initWithInt_(jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue, initWithInt_, maxSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonScorer_DocIDQueue)

@implementation OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue

- (instancetype)initWithInt:(jint)maxSize {
  OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(self, maxSize);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)a
                    withId:(OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *)b {
  return ((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(a))->pos_ < ((OrgApacheLuceneSearchTermAutomatonQuery_EnumAndScorer *) nil_chk(b))->pos_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "PositionQueue", NULL, 0x1, NULL, NULL },
    { "lessThanWithId:withId:", "lessThan", "Z", 0x4, NULL, "(Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;)Z" },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.TermAutomatonQuery$EnumAndScorer;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue = { 2, "PositionQueue", "org.apache.lucene.search", "TermAutomatonScorer", 0xa, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/TermAutomatonQuery$EnumAndScorer;>;" };
  return &_OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue;
}

@end

void OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue *self, jint maxSize) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(self, maxSize, false);
}

OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue *new_OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(jint maxSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue, initWithInt_, maxSize)
}

OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue *create_OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue_initWithInt_(jint maxSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue, initWithInt_, maxSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonScorer_PositionQueue)

@implementation OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                      withInt:(jint)termCount {
  OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(self, a, termCount);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilAutomatonAutomaton:withInt:", "TermRunAutomaton", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton = { 2, "TermRunAutomaton", "org.apache.lucene.search", "TermAutomatonScorer", 0x8, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton;
}

@end

void OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *a, jint termCount) {
  OrgApacheLuceneUtilAutomatonRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_(self, a, termCount, true);
}

OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton *new_OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint termCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton, initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_, a, termCount)
}

OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton *create_OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint termCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton, initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_, a, termCount)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonScorer_TermRunAutomaton)

@implementation OrgApacheLuceneSearchTermAutomatonScorer_PosState

- (void)addWithInt:(jint)state {
  if (((IOSIntArray *) nil_chk(states_))->size_ == count_) {
    JreStrongAssign(&states_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_(states_));
  }
  *IOSIntArray_GetRef(nil_chk(states_), count_++) = state;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchTermAutomatonScorer_PosState_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(states_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addWithInt:", "add", "V", 0x1, NULL, NULL },
    { "init", "PosState", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "states_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermAutomatonScorer_PosState = { 2, "PosState", "org.apache.lucene.search", "TermAutomatonScorer", 0xa, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTermAutomatonScorer_PosState;
}

@end

void OrgApacheLuceneSearchTermAutomatonScorer_PosState_init(OrgApacheLuceneSearchTermAutomatonScorer_PosState *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->states_, [IOSIntArray newArrayWithLength:2]);
}

OrgApacheLuceneSearchTermAutomatonScorer_PosState *new_OrgApacheLuceneSearchTermAutomatonScorer_PosState_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_PosState, init)
}

OrgApacheLuceneSearchTermAutomatonScorer_PosState *create_OrgApacheLuceneSearchTermAutomatonScorer_PosState_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermAutomatonScorer_PosState, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermAutomatonScorer_PosState)