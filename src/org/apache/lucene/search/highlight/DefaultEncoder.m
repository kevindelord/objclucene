//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/DefaultEncoder.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/highlight/DefaultEncoder.h"

@implementation OrgApacheLuceneSearchHighlightDefaultEncoder

- (instancetype)init {
  OrgApacheLuceneSearchHighlightDefaultEncoder_init(self);
  return self;
}

- (NSString *)encodeTextWithNSString:(NSString *)originalText {
  return originalText;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultEncoder", NULL, 0x1, NULL, NULL },
    { "encodeTextWithNSString:", "encodeText", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightDefaultEncoder = { 2, "DefaultEncoder", "org.apache.lucene.search.highlight", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightDefaultEncoder;
}

@end

void OrgApacheLuceneSearchHighlightDefaultEncoder_init(OrgApacheLuceneSearchHighlightDefaultEncoder *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchHighlightDefaultEncoder *new_OrgApacheLuceneSearchHighlightDefaultEncoder_init() {
  OrgApacheLuceneSearchHighlightDefaultEncoder *self = [OrgApacheLuceneSearchHighlightDefaultEncoder alloc];
  OrgApacheLuceneSearchHighlightDefaultEncoder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightDefaultEncoder)