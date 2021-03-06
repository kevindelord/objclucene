//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MultiBits.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/MultiBits.h"
#include "org/apache/lucene/index/ReaderSlice.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/util/Bits.h"

@interface OrgApacheLuceneIndexMultiBits () {
 @public
  IOSObjectArray *subs_;
  IOSIntArray *starts_;
  jboolean defaultValue_;
}

- (jboolean)checkLengthWithInt:(jint)reader
                       withInt:(jint)doc;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiBits, subs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiBits, starts_, IOSIntArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneIndexMultiBits_checkLengthWithInt_withInt_(OrgApacheLuceneIndexMultiBits *self, jint reader, jint doc);

@implementation OrgApacheLuceneIndexMultiBits

- (instancetype)initWithOrgApacheLuceneUtilBitsArray:(IOSObjectArray *)subs
                                        withIntArray:(IOSIntArray *)starts
                                         withBoolean:(jboolean)defaultValue {
  OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(self, subs, starts, defaultValue);
  return self;
}

- (jboolean)checkLengthWithInt:(jint)reader
                       withInt:(jint)doc {
  return OrgApacheLuceneIndexMultiBits_checkLengthWithInt_withInt_(self, reader, doc);
}

- (jboolean)getWithInt:(jint)doc {
  jint reader = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(doc, starts_);
  JreAssert((reader != -1), (@"org/apache/lucene/index/MultiBits.java:54 condition failed: assert reader != -1;"));
  id<OrgApacheLuceneUtilBits> bits = IOSObjectArray_Get(nil_chk(subs_), reader);
  if (bits == nil) {
    return defaultValue_;
  }
  else {
    JreAssert((OrgApacheLuceneIndexMultiBits_checkLengthWithInt_withInt_(self, reader, doc)), (@"org/apache/lucene/index/MultiBits.java:59 condition failed: assert checkLength(reader, doc);"));
    return [bits getWithInt:doc - IOSIntArray_Get(nil_chk(starts_), reader)];
  }
}

- (NSString *)description {
  JavaLangStringBuilder *b = create_JavaLangStringBuilder_init();
  [b appendWithNSString:JreStrcat("I$", ((IOSObjectArray *) nil_chk(subs_))->size_, @" subs: ")];
  for (jint i = 0; i < subs_->size_; i++) {
    if (i != 0) {
      [b appendWithNSString:@"; "];
    }
    if (IOSObjectArray_Get(subs_, i) == nil) {
      [b appendWithNSString:JreStrcat("$I$", @"s=", IOSIntArray_Get(nil_chk(starts_), i), @" l=null")];
    }
    else {
      [b appendWithNSString:JreStrcat("$I$I$@", @"s=", IOSIntArray_Get(nil_chk(starts_), i), @" l=", [((id<OrgApacheLuceneUtilBits>) nil_chk(IOSObjectArray_Get(subs_, i))) length], @" b=", IOSObjectArray_Get(subs_, i))];
    }
  }
  [b appendWithNSString:JreStrcat("$I", @" end=", IOSIntArray_Get(nil_chk(starts_), subs_->size_))];
  return [b description];
}

- (OrgApacheLuceneIndexMultiBits_SubResult *)getMatchingSubWithOrgApacheLuceneIndexReaderSlice:(OrgApacheLuceneIndexReaderSlice *)slice {
  jint reader = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(((OrgApacheLuceneIndexReaderSlice *) nil_chk(slice))->start_, starts_);
  JreAssert((reader != -1), (@"org/apache/lucene/index/MultiBits.java:101 condition failed: assert reader != -1;"));
  JreAssert((reader < ((IOSObjectArray *) nil_chk(subs_))->size_), (JreStrcat("$@$I", @"slice=", slice, @" starts[-1]=", IOSIntArray_Get(starts_, ((IOSIntArray *) nil_chk(starts_))->size_ - 1))));
  OrgApacheLuceneIndexMultiBits_SubResult *subResult = create_OrgApacheLuceneIndexMultiBits_SubResult_init();
  if (IOSIntArray_Get(starts_, reader) == slice->start_ && IOSIntArray_Get(starts_, 1 + reader) == slice->start_ + slice->length_) {
    subResult->matches_ = true;
    JreStrongAssign(&subResult->result_, IOSObjectArray_Get(subs_, reader));
  }
  else {
    subResult->matches_ = false;
  }
  return subResult;
}

- (jint)length {
  return IOSIntArray_Get(starts_, ((IOSIntArray *) nil_chk(starts_))->size_ - 1);
}

- (void)dealloc {
  RELEASE_(subs_);
  RELEASE_(starts_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilBitsArray:withIntArray:withBoolean:", "MultiBits", NULL, 0x1, NULL, NULL },
    { "checkLengthWithInt:withInt:", "checkLength", "Z", 0x2, NULL, NULL },
    { "getWithInt:", "get", "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getMatchingSubWithOrgApacheLuceneIndexReaderSlice:", "getMatchingSub", "Lorg.apache.lucene.index.MultiBits$SubResult;", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "subs_", NULL, 0x12, "[Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
    { "starts_", NULL, 0x12, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultValue_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.MultiBits$SubResult;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMultiBits = { 2, "MultiBits", "org.apache.lucene.index", NULL, 0x10, 6, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexMultiBits;
}

@end

void OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(OrgApacheLuceneIndexMultiBits *self, IOSObjectArray *subs, IOSIntArray *starts, jboolean defaultValue) {
  NSObject_init(self);
  JreAssert((((IOSIntArray *) nil_chk(starts))->size_ == 1 + ((IOSObjectArray *) nil_chk(subs))->size_), (@"org/apache/lucene/index/MultiBits.java:39 condition failed: assert starts.length == 1+subs.length;"));
  JreStrongAssign(&self->subs_, subs);
  JreStrongAssign(&self->starts_, starts);
  self->defaultValue_ = defaultValue;
}

OrgApacheLuceneIndexMultiBits *new_OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(IOSObjectArray *subs, IOSIntArray *starts, jboolean defaultValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexMultiBits, initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_, subs, starts, defaultValue)
}

OrgApacheLuceneIndexMultiBits *create_OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(IOSObjectArray *subs, IOSIntArray *starts, jboolean defaultValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexMultiBits, initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_, subs, starts, defaultValue)
}

jboolean OrgApacheLuceneIndexMultiBits_checkLengthWithInt_withInt_(OrgApacheLuceneIndexMultiBits *self, jint reader, jint doc) {
  jint length = IOSIntArray_Get(nil_chk(self->starts_), 1 + reader) - IOSIntArray_Get(self->starts_, reader);
  JreAssert((doc - IOSIntArray_Get(self->starts_, reader) < length), (JreStrcat("$I$I$I$I", @"doc=", doc, @" reader=", reader, @" starts[reader]=", IOSIntArray_Get(self->starts_, reader), @" length=", length)));
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMultiBits)

@implementation OrgApacheLuceneIndexMultiBits_SubResult

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexMultiBits_SubResult_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(result_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SubResult", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "matches_", NULL, 0x1, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "result_", NULL, 0x1, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMultiBits_SubResult = { 2, "SubResult", "org.apache.lucene.index", "MultiBits", 0x19, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexMultiBits_SubResult;
}

@end

void OrgApacheLuceneIndexMultiBits_SubResult_init(OrgApacheLuceneIndexMultiBits_SubResult *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexMultiBits_SubResult *new_OrgApacheLuceneIndexMultiBits_SubResult_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexMultiBits_SubResult, init)
}

OrgApacheLuceneIndexMultiBits_SubResult *create_OrgApacheLuceneIndexMultiBits_SubResult_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexMultiBits_SubResult, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMultiBits_SubResult)
