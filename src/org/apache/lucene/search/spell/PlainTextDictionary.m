//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/PlainTextDictionary.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/Reader.h"
#include "java/nio/charset/Charset.h"
#include "org/apache/lucene/search/spell/PlainTextDictionary.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneSearchSpellPlainTextDictionary () {
 @public
  JavaIoBufferedReader *in_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellPlainTextDictionary, in_, JavaIoBufferedReader *)

@interface OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator () {
 @public
  OrgApacheLuceneSearchSpellPlainTextDictionary *this$0_;
  jboolean done_;
  OrgApacheLuceneUtilBytesRefBuilder *spare_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator, this$0_, OrgApacheLuceneSearchSpellPlainTextDictionary *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator, spare_, OrgApacheLuceneUtilBytesRefBuilder *)

@implementation OrgApacheLuceneSearchSpellPlainTextDictionary

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path {
  OrgApacheLuceneSearchSpellPlainTextDictionary_initWithOrgLukhnosPortmobileFilePath_(self, path);
  return self;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)dictFile {
  OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoInputStream_(self, dictFile);
  return self;
}

- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader {
  OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoReader_(self, reader);
  return self;
}

- (id<OrgApacheLuceneSearchSuggestInputIterator>)getEntryIterator {
  return create_OrgApacheLuceneSearchSuggestInputIterator_InputIteratorWrapper_initWithOrgApacheLuceneUtilBytesRefIterator_(create_OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(self));
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgLukhnosPortmobileFilePath:", "PlainTextDictionary", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithJavaIoInputStream:", "PlainTextDictionary", NULL, 0x1, NULL, NULL },
    { "initWithJavaIoReader:", "PlainTextDictionary", NULL, 0x1, NULL, NULL },
    { "getEntryIterator", NULL, "Lorg.apache.lucene.search.suggest.InputIterator;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x2, "Ljava.io.BufferedReader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.spell.PlainTextDictionary$FileIterator;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellPlainTextDictionary = { 2, "PlainTextDictionary", "org.apache.lucene.search.spell", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSpellPlainTextDictionary;
}

@end

void OrgApacheLuceneSearchSpellPlainTextDictionary_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneSearchSpellPlainTextDictionary *self, OrgLukhnosPortmobileFilePath *path) {
  NSObject_init(self);
  JreStrongAssign(&self->in_, OrgLukhnosPortmobileFileFiles_newBufferedReaderWithOrgLukhnosPortmobileFilePath_withJavaNioCharsetCharset_(path, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8)));
}

OrgApacheLuceneSearchSpellPlainTextDictionary *new_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary, initWithOrgLukhnosPortmobileFilePath_, path)
}

OrgApacheLuceneSearchSpellPlainTextDictionary *create_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary, initWithOrgLukhnosPortmobileFilePath_, path)
}

void OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoInputStream_(OrgApacheLuceneSearchSpellPlainTextDictionary *self, JavaIoInputStream *dictFile) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->in_, new_JavaIoBufferedReader_initWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(dictFile, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))));
}

OrgApacheLuceneSearchSpellPlainTextDictionary *new_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoInputStream_(JavaIoInputStream *dictFile) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary, initWithJavaIoInputStream_, dictFile)
}

OrgApacheLuceneSearchSpellPlainTextDictionary *create_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoInputStream_(JavaIoInputStream *dictFile) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary, initWithJavaIoInputStream_, dictFile)
}

void OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoReader_(OrgApacheLuceneSearchSpellPlainTextDictionary *self, JavaIoReader *reader) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->in_, new_JavaIoBufferedReader_initWithJavaIoReader_(reader));
}

OrgApacheLuceneSearchSpellPlainTextDictionary *new_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoReader_(JavaIoReader *reader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary, initWithJavaIoReader_, reader)
}

OrgApacheLuceneSearchSpellPlainTextDictionary *create_OrgApacheLuceneSearchSpellPlainTextDictionary_initWithJavaIoReader_(JavaIoReader *reader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary, initWithJavaIoReader_, reader)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellPlainTextDictionary)

@implementation OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator

- (OrgApacheLuceneUtilBytesRef *)next {
  if (done_) {
    return nil;
  }
  jboolean success = false;
  OrgApacheLuceneUtilBytesRef *result;
  @try {
    NSString *line;
    if ((line = [((JavaIoBufferedReader *) nil_chk(this$0_->in_)) readLine]) != nil) {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) copyCharsWithJavaLangCharSequence:line];
      result = [spare_ get];
    }
    else {
      done_ = true;
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ this$0_->in_ } count:1 type:JavaIoCloseable_class_()]);
      result = nil;
    }
    success = true;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ this$0_->in_ } count:1 type:JavaIoCloseable_class_()]);
    }
  }
  return result;
}

- (instancetype)initWithOrgApacheLuceneSearchSpellPlainTextDictionary:(OrgApacheLuceneSearchSpellPlainTextDictionary *)outer$ {
  OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(spare_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchSpellPlainTextDictionary:", "FileIterator", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.spell.PlainTextDictionary;", NULL, NULL, .constantValue.asLong = 0 },
    { "done_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "spare_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator = { 2, "FileIterator", "org.apache.lucene.search.spell", "PlainTextDictionary", 0x10, 2, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator;
}

@end

void OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator *self, OrgApacheLuceneSearchSpellPlainTextDictionary *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  self->done_ = false;
  JreStrongAssignAndConsume(&self->spare_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
}

OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator *new_OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(OrgApacheLuceneSearchSpellPlainTextDictionary *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator, initWithOrgApacheLuceneSearchSpellPlainTextDictionary_, outer$)
}

OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator *create_OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator_initWithOrgApacheLuceneSearchSpellPlainTextDictionary_(OrgApacheLuceneSearchSpellPlainTextDictionary *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator, initWithOrgApacheLuceneSearchSpellPlainTextDictionary_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellPlainTextDictionary_FileIterator)
