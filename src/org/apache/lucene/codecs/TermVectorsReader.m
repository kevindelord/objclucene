//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/TermVectorsReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/TermVectorsReader.h"
#include "org/apache/lucene/index/Fields.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneCodecsTermVectorsReader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsTermVectorsReader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexFields *)getWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)checkIntegrity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsTermVectorsReader *)clone {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsTermVectorsReader *)getMergeInstance {
  return self;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TermVectorsReader", NULL, 0x4, NULL, NULL },
    { "getWithInt:", "get", "Lorg.apache.lucene.index.Fields;", 0x401, "Ljava.io.IOException;", NULL },
    { "checkIntegrity", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.codecs.TermVectorsReader;", 0x401, NULL, NULL },
    { "getMergeInstance", NULL, "Lorg.apache.lucene.codecs.TermVectorsReader;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsTermVectorsReader = { 2, "TermVectorsReader", "org.apache.lucene.codecs", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsTermVectorsReader;
}

@end

void OrgApacheLuceneCodecsTermVectorsReader_init(OrgApacheLuceneCodecsTermVectorsReader *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsTermVectorsReader)