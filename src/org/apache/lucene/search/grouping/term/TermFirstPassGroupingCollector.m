//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/term/TermFirstPassGroupingCollector.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/System.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.h"
#include "org/apache/lucene/search/grouping/term/TermFirstPassGroupingCollector.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector () {
 @public
  OrgApacheLuceneIndexSortedDocValues *index_;
  NSString *groupField_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector, index_, OrgApacheLuceneIndexSortedDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector, groupField_, NSString *)

@implementation OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector

- (instancetype)initWithNSString:(NSString *)groupField
   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
                         withInt:(jint)topNGroups {
  OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(self, groupField, groupSort, topNGroups);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)getDocGroupValueWithInt:(jint)doc {
  jint ord = [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(index_)) getOrdWithInt:doc];
  if (ord == -1) {
    return nil;
  }
  else {
    return [index_ lookupOrdWithInt:ord];
  }
}

- (OrgApacheLuceneUtilBytesRef *)copyDocGroupValueWithId:(OrgApacheLuceneUtilBytesRef *)groupValue
                                                  withId:(OrgApacheLuceneUtilBytesRef *)reuse {
  if (groupValue == nil) {
    return nil;
  }
  else if (reuse != nil) {
    JreStrongAssign(&reuse->bytes_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(reuse->bytes_, groupValue->length_));
    reuse->offset_ = 0;
    reuse->length_ = groupValue->length_;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(groupValue->bytes_, groupValue->offset_, reuse->bytes_, 0, groupValue->length_);
    return reuse;
  }
  else {
    return OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(groupValue);
  }
}

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  [super doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:readerContext];
  JreStrongAssign(&index_, OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(readerContext)) reader], groupField_));
}

- (jboolean)needsScores {
  return YES;
}

- (void)dealloc {
  RELEASE_(index_);
  RELEASE_(groupField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneSearchSort:withInt:", "TermFirstPassGroupingCollector", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "getDocGroupValueWithInt:", "getDocGroupValue", "Lorg.apache.lucene.util.BytesRef;", 0x4, NULL, NULL },
    { "copyDocGroupValueWithId:withId:", "copyDocGroupValue", "Lorg.apache.lucene.util.BytesRef;", 0x4, NULL, NULL },
    { "doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:", "doSetNextReader", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "needsScores", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "index_", NULL, 0x2, "Lorg.apache.lucene.index.SortedDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "groupField_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.BytesRef;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector = { 2, "TermFirstPassGroupingCollector", "org.apache.lucene.search.grouping.term", NULL, 0x1, 5, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector<Lorg/apache/lucene/util/BytesRef;>;" };
  return &_OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector;
}

@end

void OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector *self, NSString *groupField, OrgApacheLuceneSearchSort *groupSort, jint topNGroups) {
  OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_(self, groupSort, topNGroups);
  JreStrongAssign(&self->groupField_, groupField);
}

OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector *new_OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(NSString *groupField, OrgApacheLuceneSearchSort *groupSort, jint topNGroups) {
  OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector *self = [OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector alloc];
  OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(self, groupField, groupSort, topNGroups);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingTermTermFirstPassGroupingCollector)