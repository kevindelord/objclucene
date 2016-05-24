//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisjunctionDISIApproximation.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/search/DisiPriorityQueue.h"
#include "org/apache/lucene/search/DisiWrapper.h"
#include "org/apache/lucene/search/DisjunctionDISIApproximation.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"

@implementation OrgApacheLuceneSearchDisjunctionDISIApproximation

- (instancetype)initWithOrgApacheLuceneSearchDisiPriorityQueue:(OrgApacheLuceneSearchDisiPriorityQueue *)subIterators {
  OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(self, subIterators);
  return self;
}

- (jlong)cost {
  return cost_;
}

- (jint)docID {
  return ((OrgApacheLuceneSearchDisiWrapper *) nil_chk([((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(subIterators_)) top]))->doc_;
}

- (jint)nextDoc {
  OrgApacheLuceneSearchDisiWrapper *top = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(subIterators_)) top];
  jint doc = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(top))->doc_;
  do {
    top->doc_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(top->approximation_)) nextDoc];
    top = [subIterators_ updateTop];
  }
  while (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(top))->doc_ == doc);
  return top->doc_;
}

- (jint)advanceWithInt:(jint)target {
  OrgApacheLuceneSearchDisiWrapper *top = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(subIterators_)) top];
  do {
    ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(top))->doc_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(top->approximation_)) advanceWithInt:target];
    top = [subIterators_ updateTop];
  }
  while (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(top))->doc_ < target);
  return top->doc_;
}

- (void)dealloc {
  RELEASE_(subIterators_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchDisiPriorityQueue:", "DisjunctionDISIApproximation", NULL, 0x1, NULL, "(Lorg/apache/lucene/search/DisiPriorityQueue<TIter;>;)V" },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "subIterators_", NULL, 0x10, "Lorg.apache.lucene.search.DisiPriorityQueue;", NULL, "Lorg/apache/lucene/search/DisiPriorityQueue<TIter;>;", .constantValue.asLong = 0 },
    { "cost_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionDISIApproximation = { 2, "DisjunctionDISIApproximation", "org.apache.lucene.search", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<Iter:Lorg/apache/lucene/search/DocIdSetIterator;>Lorg/apache/lucene/search/DocIdSetIterator;" };
  return &_OrgApacheLuceneSearchDisjunctionDISIApproximation;
}

@end

void OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(OrgApacheLuceneSearchDisjunctionDISIApproximation *self, OrgApacheLuceneSearchDisiPriorityQueue *subIterators) {
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
  JreStrongAssign(&self->subIterators_, subIterators);
  jlong cost = 0;
  for (OrgApacheLuceneSearchDisiWrapper * __strong w in nil_chk(subIterators)) {
    cost += ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(w))->cost_;
  }
  self->cost_ = cost;
}

OrgApacheLuceneSearchDisjunctionDISIApproximation *new_OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(OrgApacheLuceneSearchDisiPriorityQueue *subIterators) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionDISIApproximation, initWithOrgApacheLuceneSearchDisiPriorityQueue_, subIterators)
}

OrgApacheLuceneSearchDisjunctionDISIApproximation *create_OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(OrgApacheLuceneSearchDisiPriorityQueue *subIterators) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionDISIApproximation, initWithOrgApacheLuceneSearchDisiPriorityQueue_, subIterators)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionDISIApproximation)