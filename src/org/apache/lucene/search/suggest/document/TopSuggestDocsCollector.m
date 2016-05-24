//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/TopSuggestDocsCollector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/CollectionTerminatedException.h"
#include "org/apache/lucene/search/SimpleCollector.h"
#include "org/apache/lucene/search/suggest/document/SuggestScoreDocPriorityQueue.h"
#include "org/apache/lucene/search/suggest/document/TopSuggestDocs.h"
#include "org/apache/lucene/search/suggest/document/TopSuggestDocsCollector.h"

@interface OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector () {
 @public
  OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *priorityQueue_;
  jint num_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector, priorityQueue_, OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *)

@implementation OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector

- (instancetype)initWithInt:(jint)num {
  OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(self, num);
  return self;
}

- (jint)getCountToCollect {
  return num_;
}

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  docBase_ = ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context))->docBase_;
}

- (void)collectWithInt:(jint)docID
withJavaLangCharSequence:(id<JavaLangCharSequence>)key
withJavaLangCharSequence:(id<JavaLangCharSequence>)context
             withFloat:(jfloat)score {
  OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *current = create_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc_initWithInt_withJavaLangCharSequence_withJavaLangCharSequence_withFloat_(docBase_ + docID, key, context, score);
  if (current == [((OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *) nil_chk(priorityQueue_)) insertWithOverflowWithId:current]) {
    @throw create_OrgApacheLuceneSearchCollectionTerminatedException_init();
  }
}

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs *)get {
  IOSObjectArray *suggestScoreDocs = [((OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *) nil_chk(priorityQueue_)) getResults];
  if (((IOSObjectArray *) nil_chk(suggestScoreDocs))->size_ > 0) {
    return create_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_initWithInt_withOrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDocArray_withFloat_(suggestScoreDocs->size_, suggestScoreDocs, ((OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *) nil_chk(IOSObjectArray_Get(suggestScoreDocs, 0)))->score_);
  }
  else {
    return JreLoadStatic(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs, EMPTY);
  }
}

- (void)collectWithInt:(jint)doc {
}

- (jboolean)needsScores {
  return true;
}

- (void)dealloc {
  RELEASE_(priorityQueue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "TopSuggestDocsCollector", NULL, 0x1, NULL, NULL },
    { "getCountToCollect", NULL, "I", 0x1, NULL, NULL },
    { "doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:", "doSetNextReader", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "collectWithInt:withJavaLangCharSequence:withJavaLangCharSequence:withFloat:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "get", NULL, "Lorg.apache.lucene.search.suggest.document.TopSuggestDocs;", 0x1, "Ljava.io.IOException;", NULL },
    { "collectWithInt:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "needsScores", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "priorityQueue_", NULL, 0x12, "Lorg.apache.lucene.search.suggest.document.SuggestScoreDocPriorityQueue;", NULL, NULL, .constantValue.asLong = 0 },
    { "num_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "docBase_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector = { 2, "TopSuggestDocsCollector", "org.apache.lucene.search.suggest.document", NULL, 0x1, 7, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector;
}

@end

void OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *self, jint num) {
  OrgApacheLuceneSearchSimpleCollector_init(self);
  if (num <= 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"'num' must be > 0");
  }
  self->num_ = num;
  JreStrongAssignAndConsume(&self->priorityQueue_, new_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initWithInt_(num));
}

OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *new_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(jint num) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector, initWithInt_, num)
}

OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *create_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(jint num) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector, initWithInt_, num)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector)