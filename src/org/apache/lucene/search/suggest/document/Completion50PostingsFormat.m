//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/Completion50PostingsFormat.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/search/suggest/document/Completion50PostingsFormat.h"
#include "org/apache/lucene/search/suggest/document/CompletionPostingsFormat.h"

@implementation OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneCodecsPostingsFormat *)delegatePostingsFormat {
  return OrgApacheLuceneCodecsPostingsFormat_forNameWithNSString_(@"Lucene50");
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Completion50PostingsFormat", NULL, 0x1, NULL, NULL },
    { "delegatePostingsFormat", NULL, "Lorg.apache.lucene.codecs.PostingsFormat;", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat = { 2, "Completion50PostingsFormat", "org.apache.lucene.search.suggest.document", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat_init(OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat *self) {
  OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_init(self);
}

OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat *new_OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat, init)
}

OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat *create_OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletion50PostingsFormat)