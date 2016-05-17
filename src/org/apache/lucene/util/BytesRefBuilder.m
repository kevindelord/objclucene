//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BytesRefBuilder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

@interface OrgApacheLuceneUtilBytesRefBuilder () {
 @public
  OrgApacheLuceneUtilBytesRef *ref_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefBuilder, ref_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneUtilBytesRefBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilBytesRefBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (IOSByteArray *)bytes {
  return ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_;
}

- (jint)length {
  return ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_;
}

- (void)setLengthWithInt:(jint)length {
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(self->ref_))->length_ = length;
}

- (jbyte)byteAtWithInt:(jint)offset {
  return IOSByteArray_Get(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_), offset);
}

- (void)setByteAtWithInt:(jint)offset
                withByte:(jbyte)b {
  *IOSByteArray_GetRef(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_), offset) = b;
}

- (void)growWithInt:(jint)capacity {
  JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(ref_->bytes_, capacity));
}

- (void)appendWithByte:(jbyte)b {
  [self growWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ + 1];
  *IOSByteArray_GetRef(nil_chk(ref_->bytes_), ref_->length_++) = b;
}

- (void)appendWithByteArray:(IOSByteArray *)b
                    withInt:(jint)off
                    withInt:(jint)len {
  [self growWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ + len];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, off, ref_->bytes_, ref_->length_, len);
  ref_->length_ += len;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)ref {
  [self appendWithByteArray:((OrgApacheLuceneUtilBytesRef *) nil_chk(ref))->bytes_ withInt:ref->offset_ withInt:ref->length_];
}

- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)builder {
  [self appendWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(builder)) get]];
}

- (void)clear {
  [self setLengthWithInt:0];
}

- (void)copyBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)off
                       withInt:(jint)len {
  [self clear];
  [self appendWithByteArray:b withInt:off withInt:len];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)ref {
  [self clear];
  [self appendWithOrgApacheLuceneUtilBytesRef:ref];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)builder {
  [self clear];
  [self appendWithOrgApacheLuceneUtilBytesRefBuilder:builder];
}

- (void)copyCharsWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  [self copyCharsWithJavaLangCharSequence:text withInt:0 withInt:[((id<JavaLangCharSequence>) nil_chk(text)) length]];
}

- (void)copyCharsWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                  withInt:(jint)off
                                  withInt:(jint)len {
  [self growWithInt:len * OrgApacheLuceneUtilUnicodeUtil_MAX_UTF8_BYTES_PER_CHAR];
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(text, off, len, ref_->bytes_);
}

- (void)copyCharsWithCharArray:(IOSCharArray *)text
                       withInt:(jint)off
                       withInt:(jint)len {
  [self growWithInt:len * OrgApacheLuceneUtilUnicodeUtil_MAX_UTF8_BYTES_PER_CHAR];
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->length_ = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(text, off, len, ref_->bytes_);
}

- (OrgApacheLuceneUtilBytesRef *)get {
  JreAssert((((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->offset_ == 0), (@"Modifying the offset of the returned ref is illegal"));
  return ref_;
}

- (OrgApacheLuceneUtilBytesRef *)toBytesRef {
  return create_OrgApacheLuceneUtilBytesRef_initWithByteArray_(JavaUtilArrays_copyOfWithByteArray_withInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(ref_))->bytes_, ref_->length_));
}

- (jboolean)isEqual:(id)obj {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (NSUInteger)hash {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)dealloc {
  RELEASE_(ref_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BytesRefBuilder", NULL, 0x1, NULL, NULL },
    { "bytes", NULL, "[B", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "setLengthWithInt:", "setLength", "V", 0x1, NULL, NULL },
    { "byteAtWithInt:", "byteAt", "B", 0x1, NULL, NULL },
    { "setByteAtWithInt:withByte:", "setByteAt", "V", 0x1, NULL, NULL },
    { "growWithInt:", "grow", "V", 0x1, NULL, NULL },
    { "appendWithByte:", "append", "V", 0x1, NULL, NULL },
    { "appendWithByteArray:withInt:withInt:", "append", "V", 0x1, NULL, NULL },
    { "appendWithOrgApacheLuceneUtilBytesRef:", "append", "V", 0x1, NULL, NULL },
    { "appendWithOrgApacheLuceneUtilBytesRefBuilder:", "append", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "copyBytesWithByteArray:withInt:withInt:", "copyBytes", "V", 0x1, NULL, NULL },
    { "copyBytesWithOrgApacheLuceneUtilBytesRef:", "copyBytes", "V", 0x1, NULL, NULL },
    { "copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:", "copyBytes", "V", 0x1, NULL, NULL },
    { "copyCharsWithJavaLangCharSequence:", "copyChars", "V", 0x1, NULL, NULL },
    { "copyCharsWithJavaLangCharSequence:withInt:withInt:", "copyChars", "V", 0x1, NULL, NULL },
    { "copyCharsWithCharArray:withInt:withInt:", "copyChars", "V", 0x1, NULL, NULL },
    { "get", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "toBytesRef", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ref_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRefBuilder = { 2, "BytesRefBuilder", "org.apache.lucene.util", NULL, 0x1, 22, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilBytesRefBuilder;
}

@end

void OrgApacheLuceneUtilBytesRefBuilder_init(OrgApacheLuceneUtilBytesRefBuilder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->ref_, new_OrgApacheLuceneUtilBytesRef_init());
}

OrgApacheLuceneUtilBytesRefBuilder *new_OrgApacheLuceneUtilBytesRefBuilder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRefBuilder, init)
}

OrgApacheLuceneUtilBytesRefBuilder *create_OrgApacheLuceneUtilBytesRefBuilder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRefBuilder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRefBuilder)
