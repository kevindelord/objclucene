//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/fst/BytesRefSorter.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/suggest/fst/BytesRefSorter.h"

@interface OrgApacheLuceneSearchSuggestFstBytesRefSorter : NSObject

@end

@implementation OrgApacheLuceneSearchSuggestFstBytesRefSorter

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addWithOrgApacheLuceneUtilBytesRef:", "add", "V", 0x401, "Ljava.io.IOException;Ljava.lang.IllegalStateException;", NULL },
    { "iterator", NULL, "Lorg.apache.lucene.util.BytesRefIterator;", 0x401, "Ljava.io.IOException;", NULL },
    { "getComparator", NULL, "Ljava.util.Comparator;", 0x401, NULL, "()Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestFstBytesRefSorter = { 2, "BytesRefSorter", "org.apache.lucene.search.suggest.fst", NULL, 0x609, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestFstBytesRefSorter;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestFstBytesRefSorter)