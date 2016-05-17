//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/Tokenizer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NullPointerException.h"
#include "org/apache/lucene/analysis/CharFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@interface OrgApacheLuceneAnalysisTokenizer () {
 @public
  /*!
   @brief Pending reader: not actually assigned to input until reset()
   */
  JavaIoReader *inputPending_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenizer, inputPending_, JavaIoReader *)

inline JavaIoReader *OrgApacheLuceneAnalysisTokenizer_get_ILLEGAL_STATE_READER();
static JavaIoReader *OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisTokenizer, ILLEGAL_STATE_READER, JavaIoReader *)

@interface OrgApacheLuceneAnalysisTokenizer_$1 : JavaIoReader

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len;

- (void)close;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenizer_$1)

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenizer_$1_init(OrgApacheLuceneAnalysisTokenizer_$1 *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisTokenizer_$1 *new_OrgApacheLuceneAnalysisTokenizer_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisTokenizer_$1 *create_OrgApacheLuceneAnalysisTokenizer_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenizer_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisTokenizer)

@implementation OrgApacheLuceneAnalysisTokenizer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

- (void)close {
  [((JavaIoReader *) nil_chk(input_)) close];
  JreStrongAssign(&inputPending_, JreStrongAssign(&input_, OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER));
}

- (jint)correctOffsetWithInt:(jint)currentOff {
  return ([input_ isKindOfClass:[OrgApacheLuceneAnalysisCharFilter class]]) ? [((OrgApacheLuceneAnalysisCharFilter *) nil_chk(((OrgApacheLuceneAnalysisCharFilter *) cast_chk(input_, [OrgApacheLuceneAnalysisCharFilter class])))) correctOffsetWithInt:currentOff] : currentOff;
}

- (void)setReaderWithJavaIoReader:(JavaIoReader *)input {
  if (input == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"input must not be null");
  }
  else if (self->input_ != OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"TokenStream contract violation: close() call missing");
  }
  JreStrongAssign(&self->inputPending_, input);
  [self setReaderTestPoint];
}

- (void)reset {
  [super reset];
  JreStrongAssign(&input_, inputPending_);
  JreStrongAssign(&inputPending_, OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER);
}

- (void)setReaderTestPoint {
}

- (void)dealloc {
  RELEASE_(input_);
  RELEASE_(inputPending_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisTokenizer class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER, new_OrgApacheLuceneAnalysisTokenizer_$1_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisTokenizer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Tokenizer", NULL, 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:", "Tokenizer", NULL, 0x4, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "correctOffsetWithInt:", "correctOffset", "I", 0x14, NULL, NULL },
    { "setReaderWithJavaIoReader:", "setReader", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "setReaderTestPoint", NULL, "V", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "input_", NULL, 0x4, "Ljava.io.Reader;", NULL, NULL, .constantValue.asLong = 0 },
    { "inputPending_", NULL, 0x2, "Ljava.io.Reader;", NULL, NULL, .constantValue.asLong = 0 },
    { "ILLEGAL_STATE_READER", "ILLEGAL_STATE_READER", 0x1a, "Ljava.io.Reader;", &OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenizer = { 2, "Tokenizer", "org.apache.lucene.analysis", NULL, 0x401, 7, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenizer;
}

@end

void OrgApacheLuceneAnalysisTokenizer_init(OrgApacheLuceneAnalysisTokenizer *self) {
  OrgApacheLuceneAnalysisTokenStream_init(self);
  JreStrongAssign(&self->input_, OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER);
  JreStrongAssign(&self->inputPending_, OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER);
}

void OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory) {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  JreStrongAssign(&self->input_, OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER);
  JreStrongAssign(&self->inputPending_, OrgApacheLuceneAnalysisTokenizer_ILLEGAL_STATE_READER);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenizer)

@implementation OrgApacheLuceneAnalysisTokenizer_$1

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"TokenStream contract violation: reset()/close() call missing, reset() called multiple times, or subclass does not call super.reset(). Please see Javadocs of TokenStream class for more information about the correct consuming workflow.");
}

- (void)close {
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenizer_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readWithCharArray:withInt:withInt:", "read", "I", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenizer_$1 = { 2, "", "org.apache.lucene.analysis", "Tokenizer", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenizer_$1;
}

@end

void OrgApacheLuceneAnalysisTokenizer_$1_init(OrgApacheLuceneAnalysisTokenizer_$1 *self) {
  JavaIoReader_init(self);
}

OrgApacheLuceneAnalysisTokenizer_$1 *new_OrgApacheLuceneAnalysisTokenizer_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenizer_$1, init)
}

OrgApacheLuceneAnalysisTokenizer_$1 *create_OrgApacheLuceneAnalysisTokenizer_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenizer_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenizer_$1)
