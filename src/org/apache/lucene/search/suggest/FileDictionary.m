//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/FileDictionary.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/Reader.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/RuntimeException.h"
#include "java/nio/charset/Charset.h"
#include "java/util/Set.h"
#include "org/apache/lucene/search/suggest/FileDictionary.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneSearchSuggestFileDictionary () {
 @public
  JavaIoBufferedReader *in_;
  NSString *line_;
  jboolean done_;
  NSString *fieldDelimiter_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFileDictionary, in_, JavaIoBufferedReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFileDictionary, line_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFileDictionary, fieldDelimiter_, NSString *)

@interface OrgApacheLuceneSearchSuggestFileDictionary_FileIterator () {
 @public
  OrgApacheLuceneSearchSuggestFileDictionary *this$0_;
  jlong curWeight_;
  OrgApacheLuceneUtilBytesRefBuilder *spare_;
  OrgApacheLuceneUtilBytesRefBuilder *curPayload_;
  jboolean isFirstLine_;
  jboolean hasPayloads_;
}

- (instancetype)initWithOrgApacheLuceneSearchSuggestFileDictionary:(OrgApacheLuceneSearchSuggestFileDictionary *)outer$;

- (void)readWeightWithNSString:(NSString *)weight;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator, this$0_, OrgApacheLuceneSearchSuggestFileDictionary *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator, spare_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator, curPayload_, OrgApacheLuceneUtilBytesRefBuilder *)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *self, OrgApacheLuceneSearchSuggestFileDictionary *outer$);

__attribute__((unused)) static OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *new_OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(OrgApacheLuceneSearchSuggestFileDictionary *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *create_OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(OrgApacheLuceneSearchSuggestFileDictionary *outer$);

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_readWeightWithNSString_(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *self, NSString *weight);

NSString *OrgApacheLuceneSearchSuggestFileDictionary_DEFAULT_FIELD_DELIMITER = @"\t";

@implementation OrgApacheLuceneSearchSuggestFileDictionary

+ (NSString *)DEFAULT_FIELD_DELIMITER {
  return OrgApacheLuceneSearchSuggestFileDictionary_DEFAULT_FIELD_DELIMITER;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)dictFile {
  OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_(self, dictFile);
  return self;
}

- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader {
  OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_(self, reader);
  return self;
}

- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader
                        withNSString:(NSString *)fieldDelimiter {
  OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_withNSString_(self, reader, fieldDelimiter);
  return self;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)dictFile
                             withNSString:(NSString *)fieldDelimiter {
  OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_withNSString_(self, dictFile, fieldDelimiter);
  return self;
}

- (id<OrgApacheLuceneSearchSuggestInputIterator>)getEntryIterator {
  @try {
    return create_OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(self);
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

- (void)dealloc {
  RELEASE_(in_);
  RELEASE_(line_);
  RELEASE_(fieldDelimiter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoInputStream:", "FileDictionary", NULL, 0x1, NULL, NULL },
    { "initWithJavaIoReader:", "FileDictionary", NULL, 0x1, NULL, NULL },
    { "initWithJavaIoReader:withNSString:", "FileDictionary", NULL, 0x1, NULL, NULL },
    { "initWithJavaIoInputStream:withNSString:", "FileDictionary", NULL, 0x1, NULL, NULL },
    { "getEntryIterator", NULL, "Lorg.apache.lucene.search.suggest.InputIterator;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_FIELD_DELIMITER", "DEFAULT_FIELD_DELIMITER", 0x19, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestFileDictionary_DEFAULT_FIELD_DELIMITER, NULL, .constantValue.asLong = 0 },
    { "in_", NULL, 0x2, "Ljava.io.BufferedReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "line_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "done_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldDelimiter_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.suggest.FileDictionary$FileIterator;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestFileDictionary = { 2, "FileDictionary", "org.apache.lucene.search.suggest", NULL, 0x1, 5, methods, 5, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestFileDictionary;
}

@end

void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoInputStream *dictFile) {
  OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_withNSString_(self, dictFile, OrgApacheLuceneSearchSuggestFileDictionary_DEFAULT_FIELD_DELIMITER);
}

OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_(JavaIoInputStream *dictFile) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoInputStream_, dictFile)
}

OrgApacheLuceneSearchSuggestFileDictionary *create_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_(JavaIoInputStream *dictFile) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoInputStream_, dictFile)
}

void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoReader *reader) {
  OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_withNSString_(self, reader, OrgApacheLuceneSearchSuggestFileDictionary_DEFAULT_FIELD_DELIMITER);
}

OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_(JavaIoReader *reader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoReader_, reader)
}

OrgApacheLuceneSearchSuggestFileDictionary *create_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_(JavaIoReader *reader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoReader_, reader)
}

void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_withNSString_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoReader *reader, NSString *fieldDelimiter) {
  NSObject_init(self);
  self->done_ = false;
  JreStrongAssignAndConsume(&self->in_, new_JavaIoBufferedReader_initWithJavaIoReader_(reader));
  JreStrongAssign(&self->fieldDelimiter_, fieldDelimiter);
}

OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_withNSString_(JavaIoReader *reader, NSString *fieldDelimiter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoReader_withNSString_, reader, fieldDelimiter)
}

OrgApacheLuceneSearchSuggestFileDictionary *create_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_withNSString_(JavaIoReader *reader, NSString *fieldDelimiter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoReader_withNSString_, reader, fieldDelimiter)
}

void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_withNSString_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoInputStream *dictFile, NSString *fieldDelimiter) {
  NSObject_init(self);
  self->done_ = false;
  JreStrongAssignAndConsume(&self->in_, new_JavaIoBufferedReader_initWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(dictFile, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))));
  JreStrongAssign(&self->fieldDelimiter_, fieldDelimiter);
}

OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_withNSString_(JavaIoInputStream *dictFile, NSString *fieldDelimiter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoInputStream_withNSString_, dictFile, fieldDelimiter)
}

OrgApacheLuceneSearchSuggestFileDictionary *create_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_withNSString_(JavaIoInputStream *dictFile, NSString *fieldDelimiter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFileDictionary, initWithJavaIoInputStream_withNSString_, dictFile, fieldDelimiter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestFileDictionary)

@implementation OrgApacheLuceneSearchSuggestFileDictionary_FileIterator

- (instancetype)initWithOrgApacheLuceneSearchSuggestFileDictionary:(OrgApacheLuceneSearchSuggestFileDictionary *)outer$ {
  OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(self, outer$);
  return self;
}

- (jlong)weight {
  return curWeight_;
}

- (OrgApacheLuceneUtilBytesRef *)next {
  if (this$0_->done_) {
    return nil;
  }
  if (isFirstLine_) {
    isFirstLine_ = false;
    return [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) get];
  }
  JreStrongAssign(&this$0_->line_, [((JavaIoBufferedReader *) nil_chk(this$0_->in_)) readLine]);
  if (this$0_->line_ != nil) {
    IOSObjectArray *fields = [this$0_->line_ split:this$0_->fieldDelimiter_];
    if (((IOSObjectArray *) nil_chk(fields))->size_ > 3) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"More than 3 fields in one line");
    }
    else if (fields->size_ == 3) {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 0)];
      OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_readWeightWithNSString_(self, IOSObjectArray_Get(fields, 1));
      if (hasPayloads_) {
        [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(curPayload_)) copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 2)];
      }
    }
    else if (fields->size_ == 2) {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 0)];
      OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_readWeightWithNSString_(self, IOSObjectArray_Get(fields, 1));
      if (hasPayloads_) {
        JreStrongAssignAndConsume(&curPayload_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
      }
    }
    else {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 0)];
      curWeight_ = 1;
      if (hasPayloads_) {
        JreStrongAssignAndConsume(&curPayload_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
      }
    }
    return [spare_ get];
  }
  else {
    this$0_->done_ = true;
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ this$0_->in_ } count:1 type:JavaIoCloseable_class_()]);
    return nil;
  }
}

- (OrgApacheLuceneUtilBytesRef *)payload {
  return (hasPayloads_) ? [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(curPayload_)) get] : nil;
}

- (jboolean)hasPayloads {
  return hasPayloads_;
}

- (void)readWeightWithNSString:(NSString *)weight {
  OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_readWeightWithNSString_(self, weight);
}

- (id<JavaUtilSet>)contexts {
  return nil;
}

- (jboolean)hasContexts {
  return false;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(spare_);
  RELEASE_(curPayload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSuggestFileDictionary:", "FileIterator", NULL, 0x2, NULL, NULL },
    { "weight", NULL, "J", 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "payload", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "hasPayloads", NULL, "Z", 0x1, NULL, NULL },
    { "readWeightWithNSString:", "readWeight", "V", 0x2, NULL, NULL },
    { "contexts", NULL, "Ljava.util.Set;", 0x1, NULL, "()Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;" },
    { "hasContexts", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.suggest.FileDictionary;", NULL, NULL, .constantValue.asLong = 0 },
    { "curWeight_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "spare_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "curPayload_", NULL, 0x2, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "isFirstLine_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hasPayloads_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestFileDictionary_FileIterator = { 2, "FileIterator", "org.apache.lucene.search.suggest", "FileDictionary", 0x10, 8, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestFileDictionary_FileIterator;
}

@end

void OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *self, OrgApacheLuceneSearchSuggestFileDictionary *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->spare_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->curPayload_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  self->isFirstLine_ = true;
  self->hasPayloads_ = false;
  JreStrongAssign(&outer$->line_, [((JavaIoBufferedReader *) nil_chk(outer$->in_)) readLine]);
  if (outer$->line_ == nil) {
    outer$->done_ = true;
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ outer$->in_ } count:1 type:JavaIoCloseable_class_()]);
  }
  else {
    IOSObjectArray *fields = [outer$->line_ split:outer$->fieldDelimiter_];
    if (((IOSObjectArray *) nil_chk(fields))->size_ > 3) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"More than 3 fields in one line");
    }
    else if (fields->size_ == 3) {
      self->hasPayloads_ = true;
      [self->spare_ copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 0)];
      OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_readWeightWithNSString_(self, IOSObjectArray_Get(fields, 1));
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(self->curPayload_)) copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 2)];
    }
    else if (fields->size_ == 2) {
      [self->spare_ copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 0)];
      OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_readWeightWithNSString_(self, IOSObjectArray_Get(fields, 1));
    }
    else {
      [self->spare_ copyCharsWithJavaLangCharSequence:IOSObjectArray_Get(fields, 0)];
      self->curWeight_ = 1;
    }
  }
}

OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *new_OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(OrgApacheLuceneSearchSuggestFileDictionary *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator, initWithOrgApacheLuceneSearchSuggestFileDictionary_, outer$)
}

OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *create_OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_initWithOrgApacheLuceneSearchSuggestFileDictionary_(OrgApacheLuceneSearchSuggestFileDictionary *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator, initWithOrgApacheLuceneSearchSuggestFileDictionary_, outer$)
}

void OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_readWeightWithNSString_(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator *self, NSString *weight) {
  @try {
    self->curWeight_ = JavaLangLong_parseLongWithNSString_(weight);
  }
  @catch (JavaLangNumberFormatException *e) {
    self->curWeight_ = JreFpToLong(JavaLangDouble_parseDoubleWithNSString_(weight));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator)