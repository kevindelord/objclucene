//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TermsEnum.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/DocsAndPositionsEnum.h"
#include "org/apache/lucene/index/DocsEnum.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneIndexTermsEnum () {
 @public
  OrgApacheLuceneUtilAttributeSource *atts_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermsEnum, atts_, OrgApacheLuceneUtilAttributeSource *)

__attribute__((unused)) static OrgApacheLuceneIndexDocsEnum *OrgApacheLuceneIndexTermsEnum_docsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsEnum_withInt_(OrgApacheLuceneIndexTermsEnum *self, id<OrgApacheLuceneUtilBits> liveDocs, OrgApacheLuceneIndexDocsEnum *reuse, jint flags);

__attribute__((unused)) static OrgApacheLuceneIndexDocsAndPositionsEnum *OrgApacheLuceneIndexTermsEnum_docsAndPositionsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsAndPositionsEnum_withInt_(OrgApacheLuceneIndexTermsEnum *self, id<OrgApacheLuceneUtilBits> liveDocs, OrgApacheLuceneIndexDocsAndPositionsEnum *reuse, jint flags);

__attribute__((unused)) static void OrgApacheLuceneIndexTermsEnum_SeekStatus_initWithNSString_withInt_(OrgApacheLuceneIndexTermsEnum_SeekStatus *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneIndexTermsEnum_$2 : OrgApacheLuceneIndexTermState

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)other OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermsEnum_$2)

__attribute__((unused)) static void OrgApacheLuceneIndexTermsEnum_$2_init(OrgApacheLuceneIndexTermsEnum_$2 *self);

__attribute__((unused)) static OrgApacheLuceneIndexTermsEnum_$2 *new_OrgApacheLuceneIndexTermsEnum_$2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexTermsEnum_$2 *create_OrgApacheLuceneIndexTermsEnum_$2_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermsEnum_$2)

@interface OrgApacheLuceneIndexTermsEnum_$1 : OrgApacheLuceneIndexTermsEnum

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

- (void)seekExactWithLong:(jlong)ord;

- (OrgApacheLuceneUtilBytesRef *)term;

- (jint)docFreq;

- (jlong)totalTermFreq;

- (jlong)ord;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags;

- (OrgApacheLuceneUtilBytesRef *)next;

- (OrgApacheLuceneUtilAttributeSource *)attributes;

- (OrgApacheLuceneIndexTermState *)termState;

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermsEnum_$1)

__attribute__((unused)) static void OrgApacheLuceneIndexTermsEnum_$1_init(OrgApacheLuceneIndexTermsEnum_$1 *self);

__attribute__((unused)) static OrgApacheLuceneIndexTermsEnum_$1 *new_OrgApacheLuceneIndexTermsEnum_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexTermsEnum_$1 *create_OrgApacheLuceneIndexTermsEnum_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermsEnum_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexTermsEnum)

OrgApacheLuceneIndexTermsEnum *OrgApacheLuceneIndexTermsEnum_EMPTY;

@implementation OrgApacheLuceneIndexTermsEnum

+ (OrgApacheLuceneIndexTermsEnum *)EMPTY {
  return OrgApacheLuceneIndexTermsEnum_EMPTY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexTermsEnum_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilAttributeSource *)attributes {
  if (atts_ == nil) JreStrongAssignAndConsume(&atts_, new_OrgApacheLuceneUtilAttributeSource_init());
  return atts_;
}

- (jboolean)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  return [self seekCeilWithOrgApacheLuceneUtilBytesRef:text] == JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, FOUND);
}

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)seekExactWithLong:(jlong)ord {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state {
  if (![self seekExactWithOrgApacheLuceneUtilBytesRef:term]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$", @"term=", term, @" does not exist"));
  }
}

- (OrgApacheLuceneUtilBytesRef *)term {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)ord {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)docFreq {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)totalTermFreq {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse {
  return [self postingsWithOrgApacheLuceneIndexPostingsEnum:reuse withInt:OrgApacheLuceneIndexPostingsEnum_FREQS];
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexTermState *)termState {
  return create_OrgApacheLuceneIndexTermsEnum_$2_init();
}

- (OrgApacheLuceneIndexDocsEnum *)docsWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                 withOrgApacheLuceneIndexDocsEnum:(OrgApacheLuceneIndexDocsEnum *)reuse {
  return OrgApacheLuceneIndexTermsEnum_docsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsEnum_withInt_(self, liveDocs, reuse, OrgApacheLuceneIndexDocsEnum_FLAG_FREQS);
}

- (OrgApacheLuceneIndexDocsEnum *)docsWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                 withOrgApacheLuceneIndexDocsEnum:(OrgApacheLuceneIndexDocsEnum *)reuse
                                                          withInt:(jint)flags {
  return OrgApacheLuceneIndexTermsEnum_docsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsEnum_withInt_(self, liveDocs, reuse, flags);
}

- (OrgApacheLuceneIndexDocsAndPositionsEnum *)docsAndPositionsWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                             withOrgApacheLuceneIndexDocsAndPositionsEnum:(OrgApacheLuceneIndexDocsAndPositionsEnum *)reuse {
  return OrgApacheLuceneIndexTermsEnum_docsAndPositionsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsAndPositionsEnum_withInt_(self, liveDocs, reuse, OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_OFFSETS | OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_PAYLOADS);
}

- (OrgApacheLuceneIndexDocsAndPositionsEnum *)docsAndPositionsWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                             withOrgApacheLuceneIndexDocsAndPositionsEnum:(OrgApacheLuceneIndexDocsAndPositionsEnum *)reuse
                                                                                  withInt:(jint)flags {
  return OrgApacheLuceneIndexTermsEnum_docsAndPositionsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsAndPositionsEnum_withInt_(self, liveDocs, reuse, flags);
}

+ (IOSObjectArray *)__annotations_docsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsEnum_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_docsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsEnum_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_docsAndPositionsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsAndPositionsEnum_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_docsAndPositionsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsAndPositionsEnum_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(atts_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexTermsEnum class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexTermsEnum_EMPTY, new_OrgApacheLuceneIndexTermsEnum_$1_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexTermsEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TermsEnum", NULL, 0x4, NULL, NULL },
    { "attributes", NULL, "Lorg.apache.lucene.util.AttributeSource;", 0x1, NULL, NULL },
    { "seekExactWithOrgApacheLuceneUtilBytesRef:", "seekExact", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "seekCeilWithOrgApacheLuceneUtilBytesRef:", "seekCeil", "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", 0x401, "Ljava.io.IOException;", NULL },
    { "seekExactWithLong:", "seekExact", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "seekExactWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermState:", "seekExact", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "term", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x401, "Ljava.io.IOException;", NULL },
    { "ord", NULL, "J", 0x401, "Ljava.io.IOException;", NULL },
    { "docFreq", NULL, "I", 0x401, "Ljava.io.IOException;", NULL },
    { "totalTermFreq", NULL, "J", 0x401, "Ljava.io.IOException;", NULL },
    { "postingsWithOrgApacheLuceneIndexPostingsEnum:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x11, "Ljava.io.IOException;", NULL },
    { "postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x401, "Ljava.io.IOException;", NULL },
    { "termState", NULL, "Lorg.apache.lucene.index.TermState;", 0x1, "Ljava.io.IOException;", NULL },
    { "docsWithOrgApacheLuceneUtilBits:withOrgApacheLuceneIndexDocsEnum:", "docs", "Lorg.apache.lucene.index.DocsEnum;", 0x11, "Ljava.io.IOException;", NULL },
    { "docsWithOrgApacheLuceneUtilBits:withOrgApacheLuceneIndexDocsEnum:withInt:", "docs", "Lorg.apache.lucene.index.DocsEnum;", 0x11, "Ljava.io.IOException;", NULL },
    { "docsAndPositionsWithOrgApacheLuceneUtilBits:withOrgApacheLuceneIndexDocsAndPositionsEnum:", "docsAndPositions", "Lorg.apache.lucene.index.DocsAndPositionsEnum;", 0x11, "Ljava.io.IOException;", NULL },
    { "docsAndPositionsWithOrgApacheLuceneUtilBits:withOrgApacheLuceneIndexDocsAndPositionsEnum:withInt:", "docsAndPositions", "Lorg.apache.lucene.index.DocsAndPositionsEnum;", 0x11, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "atts_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "EMPTY", "EMPTY", 0x19, "Lorg.apache.lucene.index.TermsEnum;", &OrgApacheLuceneIndexTermsEnum_EMPTY, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.TermsEnum$SeekStatus;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsEnum = { 2, "TermsEnum", "org.apache.lucene.index", NULL, 0x401, 17, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexTermsEnum;
}

@end

void OrgApacheLuceneIndexTermsEnum_init(OrgApacheLuceneIndexTermsEnum *self) {
  NSObject_init(self);
  JreStrongAssign(&self->atts_, nil);
}

OrgApacheLuceneIndexDocsEnum *OrgApacheLuceneIndexTermsEnum_docsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsEnum_withInt_(OrgApacheLuceneIndexTermsEnum *self, id<OrgApacheLuceneUtilBits> liveDocs, OrgApacheLuceneIndexDocsEnum *reuse, jint flags) {
  jint newFlags;
  if (flags == OrgApacheLuceneIndexDocsEnum_FLAG_FREQS) {
    newFlags = OrgApacheLuceneIndexPostingsEnum_FREQS;
  }
  else if (flags == OrgApacheLuceneIndexDocsEnum_FLAG_NONE) {
    newFlags = OrgApacheLuceneIndexPostingsEnum_NONE;
  }
  else {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Invalid legacy docs flags: ", flags));
  }
  OrgApacheLuceneIndexPostingsEnum *actualReuse = OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapWithOrgApacheLuceneIndexDocsEnum_(reuse);
  OrgApacheLuceneIndexPostingsEnum *postings = [self postingsWithOrgApacheLuceneIndexPostingsEnum:actualReuse withInt:newFlags];
  if (postings == nil) {
    @throw create_JavaLangAssertionError_init();
  }
  else if (postings == actualReuse && liveDocs == OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapliveDocsWithOrgApacheLuceneIndexDocsEnum_(reuse)) {
    return reuse;
  }
  else {
    return OrgApacheLuceneIndexDocsAndPositionsEnum_wrapWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneUtilBits_(postings, liveDocs);
  }
}

OrgApacheLuceneIndexDocsAndPositionsEnum *OrgApacheLuceneIndexTermsEnum_docsAndPositionsWithOrgApacheLuceneUtilBits_withOrgApacheLuceneIndexDocsAndPositionsEnum_withInt_(OrgApacheLuceneIndexTermsEnum *self, id<OrgApacheLuceneUtilBits> liveDocs, OrgApacheLuceneIndexDocsAndPositionsEnum *reuse, jint flags) {
  jint newFlags;
  if (flags == (OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_OFFSETS | OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_PAYLOADS)) {
    newFlags = OrgApacheLuceneIndexPostingsEnum_OFFSETS | OrgApacheLuceneIndexPostingsEnum_PAYLOADS;
  }
  else if (flags == OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_OFFSETS) {
    newFlags = OrgApacheLuceneIndexPostingsEnum_OFFSETS;
  }
  else if (flags == OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_PAYLOADS) {
    newFlags = OrgApacheLuceneIndexPostingsEnum_PAYLOADS;
  }
  else if (flags == OrgApacheLuceneIndexDocsEnum_FLAG_NONE) {
    newFlags = OrgApacheLuceneIndexPostingsEnum_POSITIONS;
  }
  else {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Invalid legacy docsAndPositions flags: ", flags));
  }
  OrgApacheLuceneIndexPostingsEnum *actualReuse = OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapWithOrgApacheLuceneIndexDocsEnum_(reuse);
  OrgApacheLuceneIndexPostingsEnum *postings = [self postingsWithOrgApacheLuceneIndexPostingsEnum:actualReuse withInt:newFlags | OrgApacheLuceneIndexDocsAndPositionsEnum_OLD_NULL_SEMANTICS];
  if (postings == nil) {
    return nil;
  }
  else if (postings == actualReuse && liveDocs == OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapliveDocsWithOrgApacheLuceneIndexDocsEnum_(reuse)) {
    return reuse;
  }
  else {
    return OrgApacheLuceneIndexDocsAndPositionsEnum_wrapWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneUtilBits_(postings, liveDocs);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsEnum)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexTermsEnum_SeekStatus)

OrgApacheLuceneIndexTermsEnum_SeekStatus *OrgApacheLuceneIndexTermsEnum_SeekStatus_values_[3];

@implementation OrgApacheLuceneIndexTermsEnum_SeekStatus

+ (OrgApacheLuceneIndexTermsEnum_SeekStatus *)END {
  return JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, END);
}

+ (OrgApacheLuceneIndexTermsEnum_SeekStatus *)FOUND {
  return JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, FOUND);
}

+ (OrgApacheLuceneIndexTermsEnum_SeekStatus *)NOT_FOUND {
  return JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, NOT_FOUND);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneIndexTermsEnum_SeekStatus_values();
}

+ (OrgApacheLuceneIndexTermsEnum_SeekStatus *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneIndexTermsEnum_SeekStatus_valueOfWithNSString_(name);
}

- (OrgApacheLuceneIndexTermsEnum_SeekStatus_Enum)toNSEnum {
  return (OrgApacheLuceneIndexTermsEnum_SeekStatus_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexTermsEnum_SeekStatus class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 3 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, END) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexTermsEnum_SeekStatus_initWithNSString_withInt_(e, @"END", 0);
    (JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, FOUND) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexTermsEnum_SeekStatus_initWithNSString_withInt_(e, @"FOUND", 1);
    (JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, NOT_FOUND) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexTermsEnum_SeekStatus_initWithNSString_withInt_(e, @"NOT_FOUND", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexTermsEnum_SeekStatus)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "END", "END", 0x4019, "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", &JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, END), NULL, .constantValue.asLong = 0 },
    { "FOUND", "FOUND", 0x4019, "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", &JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, FOUND), NULL, .constantValue.asLong = 0 },
    { "NOT_FOUND", "NOT_FOUND", 0x4019, "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", &JreEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, NOT_FOUND), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.index.TermsEnum$SeekStatus;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsEnum_SeekStatus = { 2, "SeekStatus", "org.apache.lucene.index", "TermsEnum", 0x4019, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/index/TermsEnum$SeekStatus;>;" };
  return &_OrgApacheLuceneIndexTermsEnum_SeekStatus;
}

@end

void OrgApacheLuceneIndexTermsEnum_SeekStatus_initWithNSString_withInt_(OrgApacheLuceneIndexTermsEnum_SeekStatus *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneIndexTermsEnum_SeekStatus_values() {
  OrgApacheLuceneIndexTermsEnum_SeekStatus_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneIndexTermsEnum_SeekStatus_values_ count:3 type:OrgApacheLuceneIndexTermsEnum_SeekStatus_class_()];
}

OrgApacheLuceneIndexTermsEnum_SeekStatus *OrgApacheLuceneIndexTermsEnum_SeekStatus_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneIndexTermsEnum_SeekStatus_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneIndexTermsEnum_SeekStatus *e = OrgApacheLuceneIndexTermsEnum_SeekStatus_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneIndexTermsEnum_SeekStatus *OrgApacheLuceneIndexTermsEnum_SeekStatus_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneIndexTermsEnum_SeekStatus_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return OrgApacheLuceneIndexTermsEnum_SeekStatus_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsEnum_SeekStatus)

@implementation OrgApacheLuceneIndexTermsEnum_$2

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)other {
  @throw create_JavaLangUnsupportedOperationException_init();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexTermsEnum_$2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "copyFromWithOrgApacheLuceneIndexTermState:", "copyFrom", "V", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneIndexTermsEnum", "termState" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsEnum_$2 = { 2, "", "org.apache.lucene.index", "TermsEnum", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneIndexTermsEnum_$2;
}

@end

void OrgApacheLuceneIndexTermsEnum_$2_init(OrgApacheLuceneIndexTermsEnum_$2 *self) {
  OrgApacheLuceneIndexTermState_init(self);
}

OrgApacheLuceneIndexTermsEnum_$2 *new_OrgApacheLuceneIndexTermsEnum_$2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexTermsEnum_$2, init)
}

OrgApacheLuceneIndexTermsEnum_$2 *create_OrgApacheLuceneIndexTermsEnum_$2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexTermsEnum_$2, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsEnum_$2)

@implementation OrgApacheLuceneIndexTermsEnum_$1

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term {
  return JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, END);
}

- (void)seekExactWithLong:(jlong)ord {
}

- (OrgApacheLuceneUtilBytesRef *)term {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"this method should never be called");
}

- (jint)docFreq {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"this method should never be called");
}

- (jlong)totalTermFreq {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"this method should never be called");
}

- (jlong)ord {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"this method should never be called");
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"this method should never be called");
}

- (OrgApacheLuceneUtilBytesRef *)next {
  return nil;
}

- (OrgApacheLuceneUtilAttributeSource *)attributes {
  @synchronized(self) {
    return [super attributes];
  }
}

- (OrgApacheLuceneIndexTermState *)termState {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"this method should never be called");
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state {
  @throw create_JavaLangIllegalStateException_initWithNSString_(@"this method should never be called");
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexTermsEnum_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "seekCeilWithOrgApacheLuceneUtilBytesRef:", "seekCeil", "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", 0x1, NULL, NULL },
    { "seekExactWithLong:", "seekExact", "V", 0x1, NULL, NULL },
    { "term", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "docFreq", NULL, "I", 0x1, NULL, NULL },
    { "totalTermFreq", NULL, "J", 0x1, NULL, NULL },
    { "ord", NULL, "J", 0x1, NULL, NULL },
    { "postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "attributes", NULL, "Lorg.apache.lucene.util.AttributeSource;", 0x21, NULL, NULL },
    { "termState", NULL, "Lorg.apache.lucene.index.TermState;", 0x1, NULL, NULL },
    { "seekExactWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermState:", "seekExact", "V", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsEnum_$1 = { 2, "", "org.apache.lucene.index", "TermsEnum", 0x8008, 12, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexTermsEnum_$1;
}

@end

void OrgApacheLuceneIndexTermsEnum_$1_init(OrgApacheLuceneIndexTermsEnum_$1 *self) {
  OrgApacheLuceneIndexTermsEnum_init(self);
}

OrgApacheLuceneIndexTermsEnum_$1 *new_OrgApacheLuceneIndexTermsEnum_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexTermsEnum_$1, init)
}

OrgApacheLuceneIndexTermsEnum_$1 *create_OrgApacheLuceneIndexTermsEnum_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexTermsEnum_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsEnum_$1)