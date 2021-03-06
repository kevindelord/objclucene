//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Filter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/FilteredQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/Bits.h"

@implementation OrgApacheLuceneSearchFilter

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return [((OrgApacheLuceneSearchFilteredQuery_FilterStrategy *) nil_chk(JreLoadStatic(OrgApacheLuceneSearchFilteredQuery, RANDOM_ACCESS_FILTER_STRATEGY))) rewriteWithOrgApacheLuceneSearchFilter:self];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchFilter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:", "getDocIdSet", "Lorg.apache.lucene.search.DocIdSet;", 0x401, "Ljava.io.IOException;", NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "init", "Filter", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilter = { 2, "Filter", "org.apache.lucene.search", NULL, 0x401, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchFilter;
}

@end

void OrgApacheLuceneSearchFilter_init(OrgApacheLuceneSearchFilter *self) {
  OrgApacheLuceneSearchQuery_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilter)
