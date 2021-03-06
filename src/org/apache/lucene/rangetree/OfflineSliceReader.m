//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/OfflineSliceReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/rangetree/OfflineSliceReader.h"
#include "org/apache/lucene/rangetree/RangeTreeWriter.h"
#include "org/apache/lucene/store/InputStreamDataInput.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneRangetreeOfflineSliceReader () {
 @public
  jlong value_;
  jlong ord_;
  jint docID_;
}

@end

@implementation OrgApacheLuceneRangetreeOfflineSliceReader

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)tempFile
                                            withLong:(jlong)start
                                            withLong:(jlong)count {
  OrgApacheLuceneRangetreeOfflineSliceReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(self, tempFile, start, count);
  return self;
}

- (jboolean)next {
  if (countLeft_ == 0) {
    return false;
  }
  countLeft_--;
  value_ = [((OrgApacheLuceneStoreInputStreamDataInput *) nil_chk(in_)) readLong];
  ord_ = [in_ readLong];
  docID_ = [in_ readInt];
  return true;
}

- (jlong)value {
  return value_;
}

- (jlong)ord {
  return ord_;
}

- (jint)docID {
  return docID_;
}

- (void)close {
  [((OrgApacheLuceneStoreInputStreamDataInput *) nil_chk(in_)) close];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgLukhnosPortmobileFilePath:withLong:withLong:", "OfflineSliceReader", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "next", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "value", NULL, "J", 0x1, NULL, NULL },
    { "ord", NULL, "J", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.InputStreamDataInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "countLeft_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "ord_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "docID_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeOfflineSliceReader = { 2, "OfflineSliceReader", "org.apache.lucene.rangetree", NULL, 0x10, 6, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneRangetreeOfflineSliceReader;
}

@end

void OrgApacheLuceneRangetreeOfflineSliceReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgApacheLuceneRangetreeOfflineSliceReader *self, OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  NSObject_init(self);
  JavaIoInputStream *fis = OrgLukhnosPortmobileFileFiles_newInputStreamWithOrgLukhnosPortmobileFilePath_(tempFile);
  jlong seekFP = start * OrgApacheLuceneRangetreeRangeTreeWriter_BYTES_PER_DOC;
  jlong skipped = 0;
  while (skipped < seekFP) {
    jlong inc = [((JavaIoInputStream *) nil_chk(fis)) skipWithLong:seekFP - skipped];
    skipped += inc;
    if (inc == 0) {
      @throw create_JavaLangRuntimeException_initWithNSString_(@"skip returned 0");
    }
  }
  JreStrongAssignAndConsume(&self->in_, new_OrgApacheLuceneStoreInputStreamDataInput_initWithJavaIoInputStream_(create_JavaIoBufferedInputStream_initWithJavaIoInputStream_(fis)));
  self->countLeft_ = count;
}

OrgApacheLuceneRangetreeOfflineSliceReader *new_OrgApacheLuceneRangetreeOfflineSliceReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeOfflineSliceReader, initWithOrgLukhnosPortmobileFilePath_withLong_withLong_, tempFile, start, count)
}

OrgApacheLuceneRangetreeOfflineSliceReader *create_OrgApacheLuceneRangetreeOfflineSliceReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeOfflineSliceReader, initWithOrgLukhnosPortmobileFilePath_withLong_withLong_, tempFile, start, count)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeOfflineSliceReader)
