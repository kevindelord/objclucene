//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/tst/TernaryTreeNode.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/suggest/tst/TernaryTreeNode.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@implementation OrgApacheLuceneSearchSuggestTstTernaryTreeNode

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)sizeInBytes {
  jlong mem = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(self);
  if (loKid_ != nil) {
    mem += [loKid_ sizeInBytes];
  }
  if (eqKid_ != nil) {
    mem += [eqKid_ sizeInBytes];
  }
  if (hiKid_ != nil) {
    mem += [hiKid_ sizeInBytes];
  }
  if (token_ != nil) {
    mem += OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(token_) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER) + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR * ((jint) [((NSString *) nil_chk(token_)) length]);
  }
  mem += OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(val_);
  return mem;
}

- (void)dealloc {
  RELEASE_(loKid_);
  RELEASE_(eqKid_);
  RELEASE_(hiKid_);
  RELEASE_(token_);
  RELEASE_(val_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TernaryTreeNode", NULL, 0x1, NULL, NULL },
    { "sizeInBytes", NULL, "J", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "splitchar_", NULL, 0x0, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "loKid_", NULL, 0x0, "Lorg.apache.lucene.search.suggest.tst.TernaryTreeNode;", NULL, NULL, .constantValue.asLong = 0 },
    { "eqKid_", NULL, 0x0, "Lorg.apache.lucene.search.suggest.tst.TernaryTreeNode;", NULL, NULL, .constantValue.asLong = 0 },
    { "hiKid_", NULL, 0x0, "Lorg.apache.lucene.search.suggest.tst.TernaryTreeNode;", NULL, NULL, .constantValue.asLong = 0 },
    { "token_", NULL, 0x0, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "val_", NULL, 0x0, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestTstTernaryTreeNode = { 2, "TernaryTreeNode", "org.apache.lucene.search.suggest.tst", NULL, 0x1, 2, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestTstTernaryTreeNode;
}

@end

void OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSuggestTstTernaryTreeNode *new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestTstTernaryTreeNode, init)
}

OrgApacheLuceneSearchSuggestTstTernaryTreeNode *create_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestTstTernaryTreeNode, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestTstTernaryTreeNode)
