//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/NodeHash.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/util/fst/Builder.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/NodeHash.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PagedGrowableWriter.h"

@interface OrgApacheLuceneUtilFstNodeHash () {
 @public
  OrgApacheLuceneUtilPackedPagedGrowableWriter *table_;
  jlong count_;
  jlong mask_;
  OrgApacheLuceneUtilFstFST *fst_;
  OrgApacheLuceneUtilFstFST_Arc *scratchArc_;
  OrgApacheLuceneUtilFstFST_BytesReader *in_;
}

- (jboolean)nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node
                                                              withLong:(jlong)address;

- (jlong)hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node;

- (jlong)hash__WithLong:(jlong)node;

- (void)addNewWithLong:(jlong)address;

- (void)rehash;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, table_, OrgApacheLuceneUtilPackedPagedGrowableWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, fst_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, scratchArc_, OrgApacheLuceneUtilFstFST_Arc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, in_, OrgApacheLuceneUtilFstFST_BytesReader *)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node, jlong address);

__attribute__((unused)) static jlong OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node);

__attribute__((unused)) static jlong OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong node);

__attribute__((unused)) static void OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong address);

__attribute__((unused)) static void OrgApacheLuceneUtilFstNodeHash_rehash(OrgApacheLuceneUtilFstNodeHash *self);

@implementation OrgApacheLuceneUtilFstNodeHash

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
        withOrgApacheLuceneUtilFstFST_BytesReader:(OrgApacheLuceneUtilFstFST_BytesReader *)inArg {
  OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(self, fst, inArg);
  return self;
}

- (jboolean)nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node
                                                              withLong:(jlong)address {
  return OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(self, node, address);
}

- (jlong)hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node {
  return OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(self, node);
}

- (jlong)hash__WithLong:(jlong)node {
  return OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, node);
}

- (jlong)addWithOrgApacheLuceneUtilFstBuilder:(OrgApacheLuceneUtilFstBuilder *)builder
withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)nodeIn {
  jlong h = OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(self, nodeIn);
  jlong pos = h & mask_;
  jint c = 0;
  while (true) {
    jlong v = [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(table_)) getWithLong:pos];
    if (v == 0) {
      jlong node = [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) addNodeWithOrgApacheLuceneUtilFstBuilder:builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:nodeIn];
      JreAssert((OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, node) == h), (JreStrcat("$J$J", @"frozenHash=", OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, node), @" vs h=", h)));
      count_++;
      [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(table_)) setWithLong:pos withLong:node];
      if (count_ > 2 * [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(table_)) size] / 3) {
        OrgApacheLuceneUtilFstNodeHash_rehash(self);
      }
      return node;
    }
    else if (OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(self, nodeIn, v)) {
      return v;
    }
    pos = (pos + (++c)) & mask_;
  }
}

- (void)addNewWithLong:(jlong)address {
  OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(self, address);
}

- (void)rehash {
  OrgApacheLuceneUtilFstNodeHash_rehash(self);
}

- (void)dealloc {
  RELEASE_(table_);
  RELEASE_(fst_);
  RELEASE_(scratchArc_);
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilFstFST:withOrgApacheLuceneUtilFstFST_BytesReader:", "NodeHash", NULL, 0x1, NULL, "(Lorg/apache/lucene/util/fst/FST<TT;>;Lorg/apache/lucene/util/fst/FST$BytesReader;)V" },
    { "nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:withLong:", "nodesEqual", "Z", 0x2, "Ljava.io.IOException;", "(Lorg/apache/lucene/util/fst/Builder$UnCompiledNode<TT;>;J)Z" },
    { "hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:", "hash", "J", 0x2, NULL, "(Lorg/apache/lucene/util/fst/Builder$UnCompiledNode<TT;>;)J" },
    { "hash__WithLong:", "hash", "J", 0x2, "Ljava.io.IOException;", NULL },
    { "addWithOrgApacheLuceneUtilFstBuilder:withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:", "add", "J", 0x1, "Ljava.io.IOException;", "(Lorg/apache/lucene/util/fst/Builder<TT;>;Lorg/apache/lucene/util/fst/Builder$UnCompiledNode<TT;>;)J" },
    { "addNewWithLong:", "addNew", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "rehash", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "table_", NULL, 0x2, "Lorg.apache.lucene.util.packed.PagedGrowableWriter;", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "mask_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "fst_", NULL, 0x12, "Lorg.apache.lucene.util.fst.FST;", NULL, "Lorg/apache/lucene/util/fst/FST<TT;>;", .constantValue.asLong = 0 },
    { "scratchArc_", NULL, 0x12, "Lorg.apache.lucene.util.fst.FST$Arc;", NULL, "Lorg/apache/lucene/util/fst/FST$Arc<TT;>;", .constantValue.asLong = 0 },
    { "in_", NULL, 0x12, "Lorg.apache.lucene.util.fst.FST$BytesReader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstNodeHash = { 2, "NodeHash", "org.apache.lucene.util.fst", NULL, 0x10, 7, methods, 6, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneUtilFstNodeHash;
}

@end

void OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->scratchArc_, new_OrgApacheLuceneUtilFstFST_Arc_init());
  JreStrongAssignAndConsume(&self->table_, new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(16, JreLShift32(1, 27), 8, OrgApacheLuceneUtilPackedPackedInts_COMPACT));
  self->mask_ = 15;
  JreStrongAssign(&self->fst_, fst);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilFstNodeHash *new_OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstNodeHash, initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_, fst, inArg)
}

OrgApacheLuceneUtilFstNodeHash *create_OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstNodeHash, initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_, fst, inArg)
}

jboolean OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node, jlong address) {
  [((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_)) readFirstRealTargetArcWithLong:address withOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  if (((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(self->scratchArc_))->bytesPerArc_ != 0 && ((OrgApacheLuceneUtilFstBuilder_UnCompiledNode *) nil_chk(node))->numArcs_ != self->scratchArc_->numArcs_) {
    return false;
  }
  for (jint arcUpto = 0; arcUpto < ((OrgApacheLuceneUtilFstBuilder_UnCompiledNode *) nil_chk(node))->numArcs_; arcUpto++) {
    OrgApacheLuceneUtilFstBuilder_Arc *arc = IOSObjectArray_Get(nil_chk(node->arcs_), arcUpto);
    if (((OrgApacheLuceneUtilFstBuilder_Arc *) nil_chk(arc))->label_ != self->scratchArc_->label_ || ![((id) nil_chk(arc->output_)) isEqual:self->scratchArc_->output_] || ((OrgApacheLuceneUtilFstBuilder_CompiledNode *) nil_chk(((OrgApacheLuceneUtilFstBuilder_CompiledNode *) cast_chk(arc->target_, [OrgApacheLuceneUtilFstBuilder_CompiledNode class]))))->node_ != self->scratchArc_->target_ || ![((id) nil_chk(arc->nextFinalOutput_)) isEqual:self->scratchArc_->nextFinalOutput_] || arc->isFinal_ != [self->scratchArc_ isFinal]) {
      return false;
    }
    if ([self->scratchArc_ isLast]) {
      if (arcUpto == node->numArcs_ - 1) {
        return true;
      }
      else {
        return false;
      }
    }
    [self->fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  }
  return false;
}

jlong OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node) {
  jint PRIME = 31;
  jlong h = 0;
  for (jint arcIdx = 0; arcIdx < ((OrgApacheLuceneUtilFstBuilder_UnCompiledNode *) nil_chk(node))->numArcs_; arcIdx++) {
    OrgApacheLuceneUtilFstBuilder_Arc *arc = IOSObjectArray_Get(nil_chk(node->arcs_), arcIdx);
    h = PRIME * h + ((OrgApacheLuceneUtilFstBuilder_Arc *) nil_chk(arc))->label_;
    jlong n = ((OrgApacheLuceneUtilFstBuilder_CompiledNode *) nil_chk(((OrgApacheLuceneUtilFstBuilder_CompiledNode *) cast_chk(arc->target_, [OrgApacheLuceneUtilFstBuilder_CompiledNode class]))))->node_;
    h = PRIME * h + (jint) (n ^ (JreRShift64(n, 32)));
    h = PRIME * h + ((jint) [((id) nil_chk(arc->output_)) hash]);
    h = PRIME * h + ((jint) [((id) nil_chk(arc->nextFinalOutput_)) hash]);
    if (arc->isFinal_) {
      h += 17;
    }
  }
  return h & JavaLangLong_MAX_VALUE;
}

jlong OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong node) {
  jint PRIME = 31;
  jlong h = 0;
  [((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_)) readFirstRealTargetArcWithLong:node withOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  while (true) {
    h = PRIME * h + ((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(self->scratchArc_))->label_;
    h = PRIME * h + (jint) (self->scratchArc_->target_ ^ (JreRShift64(self->scratchArc_->target_, 32)));
    h = PRIME * h + ((jint) [((id) nil_chk(self->scratchArc_->output_)) hash]);
    h = PRIME * h + ((jint) [((id) nil_chk(self->scratchArc_->nextFinalOutput_)) hash]);
    if ([self->scratchArc_ isFinal]) {
      h += 17;
    }
    if ([self->scratchArc_ isLast]) {
      break;
    }
    [self->fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  }
  return h & JavaLangLong_MAX_VALUE;
}

void OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong address) {
  jlong pos = OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, address) & self->mask_;
  jint c = 0;
  while (true) {
    if ([((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(self->table_)) getWithLong:pos] == 0) {
      [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(self->table_)) setWithLong:pos withLong:address];
      break;
    }
    pos = (pos + (++c)) & self->mask_;
  }
}

void OrgApacheLuceneUtilFstNodeHash_rehash(OrgApacheLuceneUtilFstNodeHash *self) {
  OrgApacheLuceneUtilPackedPagedGrowableWriter *oldTable = self->table_;
  JreStrongAssignAndConsume(&self->table_, new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(2 * [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(oldTable)) size], JreLShift32(1, 30), OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(self->count_), OrgApacheLuceneUtilPackedPackedInts_COMPACT));
  self->mask_ = [self->table_ size] - 1;
  for (jlong idx = 0; idx < [oldTable size]; idx++) {
    jlong address = [oldTable getWithLong:idx];
    if (address != 0) {
      OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(self, address);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstNodeHash)
