//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FilterDirectoryReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/FilterDirectoryReader.h"
#include "org/apache/lucene/index/IndexCommit.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/store/Directory.h"

@interface OrgApacheLuceneIndexFilterDirectoryReader ()

- (OrgApacheLuceneIndexDirectoryReader *)wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg;

@end

__attribute__((unused)) static OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexFilterDirectoryReader *self, OrgApacheLuceneIndexDirectoryReader *inArg);

@interface OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper ()

- (IOSObjectArray *)wrapWithJavaUtilList:(id<JavaUtilList>)readers;

@end

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *self, id<JavaUtilList> readers);

@implementation OrgApacheLuceneIndexFilterDirectoryReader

+ (OrgApacheLuceneIndexDirectoryReader *)unwrapWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)reader {
  return OrgApacheLuceneIndexFilterDirectoryReader_unwrapWithOrgApacheLuceneIndexDirectoryReader_(reader);
}

- (instancetype)initWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg
withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper:(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *)wrapper {
  OrgApacheLuceneIndexFilterDirectoryReader_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_(self, inArg, wrapper);
  return self;
}

- (OrgApacheLuceneIndexDirectoryReader *)doWrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexDirectoryReader *)wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, inArg);
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChanged {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) doOpenIfChanged]);
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:commit]);
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                                withBoolean:(jboolean)applyAllDeletes {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:writer withBoolean:applyAllDeletes]);
}

- (jlong)getVersion {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) getVersion];
}

- (jboolean)isCurrent {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) isCurrent];
}

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) getIndexCommit];
}

- (void)doClose {
  [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) close];
}

- (OrgApacheLuceneIndexDirectoryReader *)getDelegate {
  return in_;
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "unwrapWithOrgApacheLuceneIndexDirectoryReader:", "unwrap", "Lorg.apache.lucene.index.DirectoryReader;", 0x9, NULL, NULL },
    { "initWithOrgApacheLuceneIndexDirectoryReader:withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper:", "FilterDirectoryReader", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "doWrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:", "doWrapDirectoryReader", "Lorg.apache.lucene.index.DirectoryReader;", 0x404, "Ljava.io.IOException;", NULL },
    { "wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:", "wrapDirectoryReader", "Lorg.apache.lucene.index.DirectoryReader;", 0x12, "Ljava.io.IOException;", NULL },
    { "doOpenIfChanged", NULL, "Lorg.apache.lucene.index.DirectoryReader;", 0x14, "Ljava.io.IOException;", NULL },
    { "doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:", "doOpenIfChanged", "Lorg.apache.lucene.index.DirectoryReader;", 0x14, "Ljava.io.IOException;", NULL },
    { "doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:withBoolean:", "doOpenIfChanged", "Lorg.apache.lucene.index.DirectoryReader;", 0x14, "Ljava.io.IOException;", NULL },
    { "getVersion", NULL, "J", 0x1, NULL, NULL },
    { "isCurrent", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "getIndexCommit", NULL, "Lorg.apache.lucene.index.IndexCommit;", 0x1, "Ljava.io.IOException;", NULL },
    { "doClose", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "getDelegate", NULL, "Lorg.apache.lucene.index.DirectoryReader;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x14, "Lorg.apache.lucene.index.DirectoryReader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.FilterDirectoryReader$SubReaderWrapper;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterDirectoryReader = { 2, "FilterDirectoryReader", "org.apache.lucene.index", NULL, 0x401, 12, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterDirectoryReader;
}

@end

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexFilterDirectoryReader_unwrapWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexDirectoryReader *reader) {
  OrgApacheLuceneIndexFilterDirectoryReader_initialize();
  while ([reader isKindOfClass:[OrgApacheLuceneIndexFilterDirectoryReader class]]) {
    reader = ((OrgApacheLuceneIndexFilterDirectoryReader *) nil_chk(((OrgApacheLuceneIndexFilterDirectoryReader *) cast_chk(reader, [OrgApacheLuceneIndexFilterDirectoryReader class]))))->in_;
  }
  return reader;
}

void OrgApacheLuceneIndexFilterDirectoryReader_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_(OrgApacheLuceneIndexFilterDirectoryReader *self, OrgApacheLuceneIndexDirectoryReader *inArg, OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *wrapper) {
  OrgApacheLuceneIndexDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(inArg)) directory], OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(nil_chk(wrapper), [inArg getSequentialSubReaders]));
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexFilterDirectoryReader *self, OrgApacheLuceneIndexDirectoryReader *inArg) {
  return inArg == nil ? nil : [self doWrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:inArg];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterDirectoryReader)

@implementation OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper

- (IOSObjectArray *)wrapWithJavaUtilList:(id<JavaUtilList>)readers {
  return OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(self, readers);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexLeafReader *)wrapWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "wrapWithJavaUtilList:", "wrap", "[Lorg.apache.lucene.index.LeafReader;", 0x2, NULL, "(Ljava/util/List<+Lorg/apache/lucene/index/LeafReader;>;)[Lorg/apache/lucene/index/LeafReader;" },
    { "init", "SubReaderWrapper", NULL, 0x1, NULL, NULL },
    { "wrapWithOrgApacheLuceneIndexLeafReader:", "wrap", "Lorg.apache.lucene.index.LeafReader;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper = { 2, "SubReaderWrapper", "org.apache.lucene.index", "FilterDirectoryReader", 0x409, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper;
}

@end

IOSObjectArray *OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *self, id<JavaUtilList> readers) {
  IOSObjectArray *wrapped = [IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(readers)) size] type:OrgApacheLuceneIndexLeafReader_class_()];
  for (jint i = 0; i < [readers size]; i++) {
    IOSObjectArray_Set(wrapped, i, [self wrapWithOrgApacheLuceneIndexLeafReader:[readers getWithInt:i]]);
  }
  return wrapped;
}

void OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_init(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper)
