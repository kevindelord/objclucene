//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ReqExclScorer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Set.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/ReqExclScorer.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchReqExclScorer () {
 @public
  OrgApacheLuceneSearchScorer *reqScorer_;
  OrgApacheLuceneSearchDocIdSetIterator *reqApproximation_;
  OrgApacheLuceneSearchDocIdSetIterator *exclApproximation_;
  OrgApacheLuceneSearchTwoPhaseIterator *reqTwoPhaseIterator_;
  OrgApacheLuceneSearchTwoPhaseIterator *exclTwoPhaseIterator_;
}

/*!
 @brief Confirms whether or not the given <code>TwoPhaseIterator</code>
 matches on the current document.
 */
+ (jboolean)matchesWithOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)it;

/*!
 @brief Confirm whether there is a match given the current positions of the
 req and excl approximations.
 This method has 2 important properties:
 - it only calls matches() on excl if the excl approximation is on
 the same doc ID as the req approximation
 - it does NOT call matches() on req if the excl approximation is exact
 and is on the same doc ID as the req approximation 
 */
+ (jboolean)matchesWithInt:(jint)doc
                   withInt:(jint)exclDoc
withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)reqTwoPhaseIterator
withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)exclTwoPhaseIterator;

/*!
 @brief Advance to the next non-excluded doc.
 */
- (jint)toNonExcludedWithInt:(jint)doc;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqExclScorer, reqScorer_, OrgApacheLuceneSearchScorer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqExclScorer, reqApproximation_, OrgApacheLuceneSearchDocIdSetIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqExclScorer, exclApproximation_, OrgApacheLuceneSearchDocIdSetIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqExclScorer, reqTwoPhaseIterator_, OrgApacheLuceneSearchTwoPhaseIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqExclScorer, exclTwoPhaseIterator_, OrgApacheLuceneSearchTwoPhaseIterator *)

__attribute__((unused)) static jboolean OrgApacheLuceneSearchReqExclScorer_matchesWithOrgApacheLuceneSearchTwoPhaseIterator_(OrgApacheLuceneSearchTwoPhaseIterator *it);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchReqExclScorer_matchesWithInt_withInt_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchTwoPhaseIterator_(jint doc, jint exclDoc, OrgApacheLuceneSearchTwoPhaseIterator *reqTwoPhaseIterator, OrgApacheLuceneSearchTwoPhaseIterator *exclTwoPhaseIterator);

__attribute__((unused)) static jint OrgApacheLuceneSearchReqExclScorer_toNonExcludedWithInt_(OrgApacheLuceneSearchReqExclScorer *self, jint doc);

@interface OrgApacheLuceneSearchReqExclScorer_$1 : OrgApacheLuceneSearchTwoPhaseIterator {
 @public
  OrgApacheLuceneSearchReqExclScorer *this$0_;
}

- (jboolean)matches;

- (instancetype)initWithOrgApacheLuceneSearchReqExclScorer:(OrgApacheLuceneSearchReqExclScorer *)outer$
                 withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchReqExclScorer_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchReqExclScorer_$1, this$0_, OrgApacheLuceneSearchReqExclScorer *)

__attribute__((unused)) static void OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchReqExclScorer_$1 *self, OrgApacheLuceneSearchReqExclScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchReqExclScorer_$1 *new_OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchReqExclScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchReqExclScorer_$1 *create_OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchReqExclScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchReqExclScorer_$1)

@implementation OrgApacheLuceneSearchReqExclScorer

- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)reqScorer
                    withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)exclScorer {
  OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(self, reqScorer, exclScorer);
  return self;
}

- (jint)nextDoc {
  return OrgApacheLuceneSearchReqExclScorer_toNonExcludedWithInt_(self, [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(reqApproximation_)) nextDoc]);
}

+ (jboolean)matchesWithOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)it {
  return OrgApacheLuceneSearchReqExclScorer_matchesWithOrgApacheLuceneSearchTwoPhaseIterator_(it);
}

+ (jboolean)matchesWithInt:(jint)doc
                   withInt:(jint)exclDoc
withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)reqTwoPhaseIterator
withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)exclTwoPhaseIterator {
  return OrgApacheLuceneSearchReqExclScorer_matchesWithInt_withInt_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchTwoPhaseIterator_(doc, exclDoc, reqTwoPhaseIterator, exclTwoPhaseIterator);
}

- (jint)toNonExcludedWithInt:(jint)doc {
  return OrgApacheLuceneSearchReqExclScorer_toNonExcludedWithInt_(self, doc);
}

- (jint)docID {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(reqScorer_)) docID];
}

- (jint)freq {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(reqScorer_)) freq];
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(reqScorer_)) cost];
}

- (jfloat)score {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(reqScorer_)) score];
}

- (id<JavaUtilCollection>)getChildren {
  return JavaUtilCollections_singletonWithId_(create_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(reqScorer_, @"MUST"));
}

- (jint)advanceWithInt:(jint)target {
  return OrgApacheLuceneSearchReqExclScorer_toNonExcludedWithInt_(self, [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(reqApproximation_)) advanceWithInt:target]);
}

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator {
  if (reqTwoPhaseIterator_ == nil) {
    return nil;
  }
  return create_OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(self, reqApproximation_);
}

- (void)dealloc {
  RELEASE_(reqScorer_);
  RELEASE_(reqApproximation_);
  RELEASE_(exclApproximation_);
  RELEASE_(reqTwoPhaseIterator_);
  RELEASE_(exclTwoPhaseIterator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchScorer:withOrgApacheLuceneSearchScorer:", "ReqExclScorer", NULL, 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "matchesWithOrgApacheLuceneSearchTwoPhaseIterator:", "matches", "Z", 0xa, "Ljava.io.IOException;", NULL },
    { "matchesWithInt:withInt:withOrgApacheLuceneSearchTwoPhaseIterator:withOrgApacheLuceneSearchTwoPhaseIterator:", "matches", "Z", 0xa, "Ljava.io.IOException;", NULL },
    { "toNonExcludedWithInt:", "toNonExcluded", "I", 0x2, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "getChildren", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/search/Scorer$ChildScorer;>;" },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "asTwoPhaseIterator", NULL, "Lorg.apache.lucene.search.TwoPhaseIterator;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reqScorer_", NULL, 0x12, "Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "reqApproximation_", NULL, 0x12, "Lorg.apache.lucene.search.DocIdSetIterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "exclApproximation_", NULL, 0x12, "Lorg.apache.lucene.search.DocIdSetIterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "reqTwoPhaseIterator_", NULL, 0x12, "Lorg.apache.lucene.search.TwoPhaseIterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "exclTwoPhaseIterator_", NULL, 0x12, "Lorg.apache.lucene.search.TwoPhaseIterator;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchReqExclScorer = { 2, "ReqExclScorer", "org.apache.lucene.search", NULL, 0x0, 12, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchReqExclScorer;
}

@end

void OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchReqExclScorer *self, OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *exclScorer) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, ((OrgApacheLuceneSearchScorer *) nil_chk(reqScorer))->weight_);
  JreStrongAssign(&self->reqScorer_, reqScorer);
  JreStrongAssign(&self->reqTwoPhaseIterator_, [reqScorer asTwoPhaseIterator]);
  if (self->reqTwoPhaseIterator_ == nil) {
    JreStrongAssign(&self->reqApproximation_, reqScorer);
  }
  else {
    JreStrongAssign(&self->reqApproximation_, [self->reqTwoPhaseIterator_ approximation]);
  }
  JreStrongAssign(&self->exclTwoPhaseIterator_, [((OrgApacheLuceneSearchScorer *) nil_chk(exclScorer)) asTwoPhaseIterator]);
  if (self->exclTwoPhaseIterator_ == nil) {
    JreStrongAssign(&self->exclApproximation_, exclScorer);
  }
  else {
    JreStrongAssign(&self->exclApproximation_, [self->exclTwoPhaseIterator_ approximation]);
  }
}

OrgApacheLuceneSearchReqExclScorer *new_OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *exclScorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchReqExclScorer, initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_, reqScorer, exclScorer)
}

OrgApacheLuceneSearchReqExclScorer *create_OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *reqScorer, OrgApacheLuceneSearchScorer *exclScorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchReqExclScorer, initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_, reqScorer, exclScorer)
}

jboolean OrgApacheLuceneSearchReqExclScorer_matchesWithOrgApacheLuceneSearchTwoPhaseIterator_(OrgApacheLuceneSearchTwoPhaseIterator *it) {
  OrgApacheLuceneSearchReqExclScorer_initialize();
  return it == nil || [it matches];
}

jboolean OrgApacheLuceneSearchReqExclScorer_matchesWithInt_withInt_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchTwoPhaseIterator_(jint doc, jint exclDoc, OrgApacheLuceneSearchTwoPhaseIterator *reqTwoPhaseIterator, OrgApacheLuceneSearchTwoPhaseIterator *exclTwoPhaseIterator) {
  OrgApacheLuceneSearchReqExclScorer_initialize();
  JreAssert((exclDoc >= doc), (@"org/apache/lucene/search/ReqExclScorer.java:81 condition failed: assert exclDoc >= doc;"));
  if (doc == exclDoc && OrgApacheLuceneSearchReqExclScorer_matchesWithOrgApacheLuceneSearchTwoPhaseIterator_(exclTwoPhaseIterator)) {
    return false;
  }
  return OrgApacheLuceneSearchReqExclScorer_matchesWithOrgApacheLuceneSearchTwoPhaseIterator_(reqTwoPhaseIterator);
}

jint OrgApacheLuceneSearchReqExclScorer_toNonExcludedWithInt_(OrgApacheLuceneSearchReqExclScorer *self, jint doc) {
  jint exclDoc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(self->exclApproximation_)) docID];
  for (; ; doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(self->reqApproximation_)) nextDoc]) {
    if (doc == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      return OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    }
    if (exclDoc < doc) {
      exclDoc = [self->exclApproximation_ advanceWithInt:doc];
    }
    if (OrgApacheLuceneSearchReqExclScorer_matchesWithInt_withInt_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchTwoPhaseIterator_(doc, exclDoc, self->reqTwoPhaseIterator_, self->exclTwoPhaseIterator_)) {
      return doc;
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchReqExclScorer)

@implementation OrgApacheLuceneSearchReqExclScorer_$1

- (jboolean)matches {
  jint doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(this$0_->reqApproximation_)) docID];
  jint exclDoc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(this$0_->exclApproximation_)) docID];
  if (exclDoc < doc) {
    exclDoc = [this$0_->exclApproximation_ advanceWithInt:doc];
  }
  return OrgApacheLuceneSearchReqExclScorer_matchesWithInt_withInt_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchTwoPhaseIterator_(doc, exclDoc, this$0_->reqTwoPhaseIterator_, this$0_->exclTwoPhaseIterator_);
}

- (instancetype)initWithOrgApacheLuceneSearchReqExclScorer:(OrgApacheLuceneSearchReqExclScorer *)outer$
                 withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0 {
  OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "matches", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchReqExclScorer:withOrgApacheLuceneSearchDocIdSetIterator:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.ReqExclScorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchReqExclScorer", "asTwoPhaseIterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchReqExclScorer_$1 = { 2, "", "org.apache.lucene.search", "ReqExclScorer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchReqExclScorer_$1;
}

@end

void OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchReqExclScorer_$1 *self, OrgApacheLuceneSearchReqExclScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, arg$0);
}

OrgApacheLuceneSearchReqExclScorer_$1 *new_OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchReqExclScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchReqExclScorer_$1, initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_, outer$, arg$0)
}

OrgApacheLuceneSearchReqExclScorer_$1 *create_OrgApacheLuceneSearchReqExclScorer_$1_initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchReqExclScorer *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchReqExclScorer_$1, initWithOrgApacheLuceneSearchReqExclScorer_withOrgApacheLuceneSearchDocIdSetIterator_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchReqExclScorer_$1)