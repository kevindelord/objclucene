//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestWord.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/spell/SuggestWord.h"

@implementation OrgApacheLuceneSearchSpellSuggestWord

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpellSuggestWord_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(string_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SuggestWord", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "score_", NULL, 0x1, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "freq_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "string_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellSuggestWord = { 2, "SuggestWord", "org.apache.lucene.search.spell", NULL, 0x11, 1, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpellSuggestWord;
}

@end

void OrgApacheLuceneSearchSpellSuggestWord_init(OrgApacheLuceneSearchSpellSuggestWord *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSpellSuggestWord *new_OrgApacheLuceneSearchSpellSuggestWord_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellSuggestWord, init)
}

OrgApacheLuceneSearchSpellSuggestWord *create_OrgApacheLuceneSearchSpellSuggestWord_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellSuggestWord, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellSuggestWord)
