//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.h"
#include "org/apache/lucene/codecs/blocktree/BlockTreeTermsWriter.h"
#include "org/apache/lucene/index/FilteredTermsEnum.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/StringHelper.h"

@interface OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter () {
 @public
  jint minItemsInPrefix_;
  jint maxItemsInPrefix_;
  OrgApacheLuceneUtilBytesRefBuilder *lastTerm_;
  IOSIntArray *prefixStarts_;
  id<JavaUtilList> pending_;
}

- (void)pushTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text;

- (void)savePrefixWithInt:(jint)prefixLength
                  withInt:(jint)floorLeadStart
                  withInt:(jint)floorLeadEnd;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter, lastTerm_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter, prefixStarts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter, pending_, id<JavaUtilList>)

__attribute__((unused)) static void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_pushTermWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *self, OrgApacheLuceneUtilBytesRef *text);

__attribute__((unused)) static void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_savePrefixWithInt_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *self, jint prefixLength, jint floorLeadStart, jint floorLeadEnd);

@interface OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm ()

+ (OrgApacheLuceneUtilBytesRef *)toBytesRefWithByteArray:(IOSByteArray *)prefix
                                                 withInt:(jint)floorLeadStart;

@end

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_toBytesRefWithByteArray_withInt_(IOSByteArray *prefix, jint floorLeadStart);

@interface OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 : OrgApacheLuceneIndexFilteredTermsEnum {
 @public
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *this$0_;
  OrgApacheLuceneUtilBytesRef *val$prefixRef_;
}

- (OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum *)acceptWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

- (instancetype)initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm:(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *)outer$
                                                       withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)capture$0
                                                     withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1, this$0_, OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1, val$prefixRef_, OrgApacheLuceneUtilBytesRef *)

__attribute__((unused)) static void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1_initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 *self, OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *outer$, OrgApacheLuceneUtilBytesRef *capture$0, OrgApacheLuceneIndexTermsEnum *arg$0);

__attribute__((unused)) static OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 *new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1_initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *outer$, OrgApacheLuceneUtilBytesRef *capture$0, OrgApacheLuceneIndexTermsEnum *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1)

@implementation OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter

+ (NSString *)brToStringWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b {
  return OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_brToStringWithOrgApacheLuceneUtilBytesRef_(b);
}

- (instancetype)initWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                          withInt:(jint)minItemsInPrefix
                                          withInt:(jint)maxItemsInPrefix {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initWithOrgApacheLuceneIndexTerms_withInt_withInt_(self, terms, minItemsInPrefix, maxItemsInPrefix);
  return self;
}

- (void)pushTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_pushTermWithOrgApacheLuceneUtilBytesRef_(self, text);
}

- (void)savePrefixesWithInt:(jint)prefixLength
                    withInt:(jint)count {
  JreAssert((count > 0), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:273 condition failed: assert count > 0;"));
  jint lastSuffixLeadLabel = -2;
  jint start = [((id<JavaUtilList>) nil_chk(pending_)) size] - count;
  JreAssert((start >= 0), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:287 condition failed: assert start >=0;"));
  id o = [pending_ getWithInt:start];
  jboolean skippedEmptyStringSuffix = NO;
  if ([o isKindOfClass:[IOSByteArray class]]) {
    if (((IOSByteArray *) nil_chk(((IOSByteArray *) check_class_cast(o, [IOSByteArray class]))))->size_ == prefixLength) {
      start++;
      count--;
      skippedEmptyStringSuffix = YES;
    }
  }
  else {
    OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *prefix = (OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *) check_class_cast(o, [OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm class]);
    if (((IOSByteArray *) nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(((OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *) nil_chk(prefix))->term_))->bytes_))->size_ == prefixLength) {
      start++;
      count--;
      skippedEmptyStringSuffix = YES;
    }
  }
  jint end = [pending_ size];
  jint nextBlockStart = start;
  jint nextFloorLeadLabel = -1;
  jint prefixCount = 0;
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *lastPTEntry = nil;
  for (jint i = start; i < end; i++) {
    IOSByteArray *termBytes;
    o = [pending_ getWithInt:i];
    OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *ptEntry;
    if ([o isKindOfClass:[IOSByteArray class]]) {
      ptEntry = nil;
      termBytes = (IOSByteArray *) check_class_cast(o, [IOSByteArray class]);
    }
    else {
      ptEntry = (OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *) check_class_cast(o, [OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm class]);
      termBytes = ((OrgApacheLuceneUtilBytesRef *) nil_chk(((OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *) nil_chk(ptEntry))->term_))->bytes_;
      if (((IOSByteArray *) nil_chk(ptEntry->prefix_))->size_ != prefixLength) {
        JreAssert((ptEntry->prefix_->size_ > prefixLength), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:329 condition failed: assert ptEntry.prefix.length > prefixLength;"));
        ptEntry = nil;
      }
    }
    JreAssert((((IOSByteArray *) nil_chk(termBytes))->size_ > prefixLength), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:337 condition failed: assert termBytes.length > prefixLength;"));
    jint suffixLeadLabel = IOSByteArray_Get(termBytes, prefixLength) & (jint) 0xff;
    if (suffixLeadLabel != lastSuffixLeadLabel) {
      JreAssert((suffixLeadLabel > lastSuffixLeadLabel), (JreStrcat("$I$I", @"suffixLeadLabel=", suffixLeadLabel, @" vs lastSuffixLeadLabel=", lastSuffixLeadLabel)));
      jint itemsInBlock = i - nextBlockStart;
      if (itemsInBlock >= minItemsInPrefix_ && end - nextBlockStart > maxItemsInPrefix_) {
        if (lastPTEntry != nil) {
          lastSuffixLeadLabel = lastPTEntry->floorLeadEnd_;
        }
        OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_savePrefixWithInt_withInt_withInt_(self, prefixLength, nextFloorLeadLabel, lastSuffixLeadLabel);
        prefixCount++;
        nextFloorLeadLabel = suffixLeadLabel;
        nextBlockStart = i;
      }
      if (nextFloorLeadLabel == -1) {
        nextFloorLeadLabel = suffixLeadLabel;
      }
      lastSuffixLeadLabel = suffixLeadLabel;
    }
    lastPTEntry = ptEntry;
  }
  if (nextBlockStart < end) {
    if (lastPTEntry != nil) {
      lastSuffixLeadLabel = lastPTEntry->floorLeadEnd_;
    }
    JreAssert((lastSuffixLeadLabel >= nextFloorLeadLabel), (JreStrcat("$I$I", @"lastSuffixLeadLabel=", lastSuffixLeadLabel, @" nextFloorLeadLabel=", nextFloorLeadLabel)));
    if (prefixCount == 0) {
      if (prefixLength > 0) {
        OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_savePrefixWithInt_withInt_withInt_(self, prefixLength, -2, (jint) 0xff);
        prefixCount++;
        if (skippedEmptyStringSuffix) {
          count++;
        }
      }
      else {
      }
    }
    else {
      if (lastSuffixLeadLabel == -2) {
        lastSuffixLeadLabel = (jint) 0xff;
      }
      OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_savePrefixWithInt_withInt_withInt_(self, prefixLength, nextFloorLeadLabel, lastSuffixLeadLabel);
      prefixCount++;
    }
  }
  [((id<JavaUtilList>) nil_chk([pending_ subListWithInt:[pending_ size] - count withInt:[pending_ size]])) clear];
  for (jint i = 0; i < prefixCount; i++) {
    OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *pt = [prefixes_ getWithInt:[((id<JavaUtilList>) nil_chk(prefixes_)) size] - (prefixCount - i)];
    [pending_ addWithId:pt];
  }
}

- (void)savePrefixWithInt:(jint)prefixLength
                  withInt:(jint)floorLeadStart
                  withInt:(jint)floorLeadEnd {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_savePrefixWithInt_withInt_withInt_(self, prefixLength, floorLeadStart, floorLeadEnd);
}

- (void)dealloc {
  RELEASE_(prefixes_);
  RELEASE_(lastTerm_);
  RELEASE_(prefixStarts_);
  RELEASE_(pending_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "brToStringWithOrgApacheLuceneUtilBytesRef:", "brToString", "Ljava.lang.String;", 0x8, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerms:withInt:withInt:", "AutoPrefixTermsWriter", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "pushTermWithOrgApacheLuceneUtilBytesRef:", "pushTerm", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "savePrefixesWithInt:withInt:", "savePrefixes", "V", 0x0, "Ljava.io.IOException;", NULL },
    { "savePrefixWithInt:withInt:withInt:", "savePrefix", "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "prefixes_", NULL, 0x10, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter$PrefixTerm;>;", .constantValue.asLong = 0 },
    { "minItemsInPrefix_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxItemsInPrefix_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lastTerm_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "prefixStarts_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "pending_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/Object;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.blocktree.AutoPrefixTermsWriter$PrefixTerm;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter = { 2, "AutoPrefixTermsWriter", "org.apache.lucene.codecs.blocktree", NULL, 0x0, 5, methods, 6, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter;
}

@end

NSString *OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_brToStringWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *b) {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initialize();
  @try {
    return JreStrcat("$C@", [((OrgApacheLuceneUtilBytesRef *) nil_chk(b)) utf8ToString], ' ', b);
  }
  @catch (JavaLangThrowable *t) {
    return [((OrgApacheLuceneUtilBytesRef *) nil_chk(b)) description];
  }
}

void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initWithOrgApacheLuceneIndexTerms_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *self, OrgApacheLuceneIndexTerms *terms, jint minItemsInPrefix, jint maxItemsInPrefix) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->prefixes_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->lastTerm_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->prefixStarts_, [IOSIntArray newArrayWithLength:8]);
  JreStrongAssignAndConsume(&self->pending_, new_JavaUtilArrayList_init());
  self->minItemsInPrefix_ = minItemsInPrefix;
  self->maxItemsInPrefix_ = maxItemsInPrefix;
  OrgApacheLuceneIndexTermsEnum *termsEnum = [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator];
  while (YES) {
    OrgApacheLuceneUtilBytesRef *term = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next];
    if (term == nil) {
      break;
    }
    OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_pushTermWithOrgApacheLuceneUtilBytesRef_(self, term);
  }
  if ([self->pending_ size] > 1) {
    OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_pushTermWithOrgApacheLuceneUtilBytesRef_(self, JreLoadStatic(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsWriter, EMPTY_BYTES_REF_));
    while ([self->pending_ size] >= minItemsInPrefix) {
      [self savePrefixesWithInt:0 withInt:[self->pending_ size]];
    }
  }
  JavaUtilCollections_sortWithJavaUtilList_(self->prefixes_);
}

OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initWithOrgApacheLuceneIndexTerms_withInt_withInt_(OrgApacheLuceneIndexTerms *terms, jint minItemsInPrefix, jint maxItemsInPrefix) {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *self = [OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter alloc];
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_initWithOrgApacheLuceneIndexTerms_withInt_withInt_(self, terms, minItemsInPrefix, maxItemsInPrefix);
  return self;
}

void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_pushTermWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *self, OrgApacheLuceneUtilBytesRef *text) {
  jint limit = JavaLangMath_minWithInt_withInt_([((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(self->lastTerm_)) length], ((OrgApacheLuceneUtilBytesRef *) nil_chk(text))->length_);
  jint pos = 0;
  while (pos < limit && [self->lastTerm_ byteAtWithInt:pos] == IOSByteArray_Get(nil_chk(text->bytes_), text->offset_ + pos)) {
    pos++;
  }
  for (jint i = [self->lastTerm_ length] - 1; i >= pos; i--) {
    jint prefixTopSize = [((id<JavaUtilList>) nil_chk(self->pending_)) size] - IOSIntArray_Get(nil_chk(self->prefixStarts_), i);
    while (prefixTopSize >= self->minItemsInPrefix_) {
      [self savePrefixesWithInt:i + 1 withInt:prefixTopSize];
      prefixTopSize = [self->pending_ size] - IOSIntArray_Get(self->prefixStarts_, i);
    }
  }
  if (((IOSIntArray *) nil_chk(self->prefixStarts_))->size_ < text->length_) {
    JreStrongAssign(&self->prefixStarts_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(self->prefixStarts_, text->length_));
  }
  for (jint i = pos; i < text->length_; i++) {
    *IOSIntArray_GetRef(nil_chk(self->prefixStarts_), i) = [((id<JavaUtilList>) nil_chk(self->pending_)) size];
  }
  [self->lastTerm_ copyBytesWithOrgApacheLuceneUtilBytesRef:text];
  if (text->length_ > 0 || [((id<JavaUtilList>) nil_chk(self->pending_)) isEmpty]) {
    IOSByteArray *termBytes = [IOSByteArray arrayWithLength:text->length_];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(text->bytes_, text->offset_, termBytes, 0, text->length_);
    [((id<JavaUtilList>) nil_chk(self->pending_)) addWithId:termBytes];
  }
}

void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_savePrefixWithInt_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter *self, jint prefixLength, jint floorLeadStart, jint floorLeadEnd) {
  IOSByteArray *prefix = [IOSByteArray arrayWithLength:prefixLength];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(self->lastTerm_)) bytes], 0, prefix, 0, prefixLength);
  JreAssert((floorLeadStart != -1), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:429 condition failed: assert floorLeadStart != -1;"));
  JreAssert((floorLeadEnd != -1), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:430 condition failed: assert floorLeadEnd != -1;"));
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *pt = [new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(prefix, floorLeadStart, floorLeadEnd) autorelease];
  [((id<JavaUtilList>) nil_chk(self->prefixes_)) addWithId:pt];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter)

@implementation OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm

- (instancetype)initWithByteArray:(IOSByteArray *)prefix
                          withInt:(jint)floorLeadStart
                          withInt:(jint)floorLeadEnd {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(self, prefix, floorLeadStart, floorLeadEnd);
  return self;
}

- (NSString *)description {
  NSString *s = OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_brToStringWithOrgApacheLuceneUtilBytesRef_([new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(prefix_) autorelease]);
  if (floorLeadStart_ == -2) {
    JreStrAppend(&s, "$$C", @"[-", JavaLangInteger_toHexStringWithInt_(floorLeadEnd_), ']');
  }
  else {
    JreStrAppend(&s, "C$C$C", '[', JavaLangInteger_toHexStringWithInt_(floorLeadStart_), '-', JavaLangInteger_toHexStringWithInt_(floorLeadEnd_), ']');
  }
  return s;
}

- (jint)compareToWithId:(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *)other {
  check_class_cast(other, [OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm class]);
  jint cmp = [((OrgApacheLuceneUtilBytesRef *) nil_chk(term_)) compareToWithId:((OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *) nil_chk(other))->term_];
  if (cmp == 0) {
    if (((IOSByteArray *) nil_chk(prefix_))->size_ != other->prefix_->size_) {
      return prefix_->size_ - other->prefix_->size_;
    }
    cmp = other->floorLeadEnd_ - floorLeadEnd_;
  }
  return cmp;
}

+ (OrgApacheLuceneUtilBytesRef *)toBytesRefWithByteArray:(IOSByteArray *)prefix
                                                 withInt:(jint)floorLeadStart {
  return OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_toBytesRefWithByteArray_withInt_(prefix, floorLeadStart);
}

- (jint)compareToWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term {
  return [((OrgApacheLuceneUtilBytesRef *) nil_chk(self->term_)) compareToWithId:term];
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)inArg {
  OrgApacheLuceneUtilBytesRef *prefixRef = [new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(prefix_) autorelease];
  return [new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1_initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermsEnum_(self, prefixRef, inArg) autorelease];
}

- (void)dealloc {
  RELEASE_(prefix_);
  RELEASE_(term_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:withInt:withInt:", "PrefixTerm", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "toBytesRefWithByteArray:withInt:", "toBytesRef", "Lorg.apache.lucene.util.BytesRef;", 0xa, NULL, NULL },
    { "compareToWithOrgApacheLuceneUtilBytesRef:", "compareTo", "I", 0x1, NULL, NULL },
    { "getTermsEnumWithOrgApacheLuceneIndexTermsEnum:", "getTermsEnum", "Lorg.apache.lucene.index.TermsEnum;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "prefix_", NULL, 0x11, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "floorLeadStart_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "floorLeadEnd_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "term_", NULL, 0x11, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm = { 2, "PrefixTerm", "org.apache.lucene.codecs.blocktree", "AutoPrefixTermsWriter", 0x19, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter$PrefixTerm;>;" };
  return &_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm;
}

@end

void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *self, IOSByteArray *prefix, jint floorLeadStart, jint floorLeadEnd) {
  NSObject_init(self);
  JreStrongAssign(&self->prefix_, prefix);
  self->floorLeadStart_ = floorLeadStart;
  self->floorLeadEnd_ = floorLeadEnd;
  JreStrongAssign(&self->term_, OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_toBytesRefWithByteArray_withInt_(prefix, floorLeadStart));
  JreAssert((floorLeadEnd >= floorLeadStart), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:75 condition failed: assert floorLeadEnd >= floorLeadStart;"));
  JreAssert((floorLeadEnd >= 0), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:76 condition failed: assert floorLeadEnd >= 0;"));
  JreAssert((floorLeadStart == -2 || floorLeadStart >= 0), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:77 condition failed: assert floorLeadStart == -2 || floorLeadStart >= 0;"));
  JreAssert((((IOSByteArray *) nil_chk(prefix))->size_ > 0 || floorLeadStart != -2 || floorLeadEnd != (jint) 0xff), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:80 condition failed: assert prefix.length > 0 || floorLeadStart != -2 || floorLeadEnd != 0xff;"));
}

OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(IOSByteArray *prefix, jint floorLeadStart, jint floorLeadEnd) {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *self = [OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm alloc];
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initWithByteArray_withInt_withInt_(self, prefix, floorLeadStart, floorLeadEnd);
  return self;
}

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_toBytesRefWithByteArray_withInt_(IOSByteArray *prefix, jint floorLeadStart) {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_initialize();
  OrgApacheLuceneUtilBytesRef *br;
  if (floorLeadStart != -2) {
    JreAssert((floorLeadStart >= 0), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:116 condition failed: assert floorLeadStart >= 0;"));
    br = [new_OrgApacheLuceneUtilBytesRef_initWithInt_(((IOSByteArray *) nil_chk(prefix))->size_ + 1) autorelease];
  }
  else {
    br = [new_OrgApacheLuceneUtilBytesRef_initWithInt_(((IOSByteArray *) nil_chk(prefix))->size_) autorelease];
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(prefix, 0, ((OrgApacheLuceneUtilBytesRef *) nil_chk(br))->bytes_, 0, ((IOSByteArray *) nil_chk(prefix))->size_);
  br->length_ = prefix->size_;
  if (floorLeadStart != -2) {
    JreAssert((floorLeadStart >= 0), (@"org/apache/lucene/codecs/blocktree/AutoPrefixTermsWriter.java:124 condition failed: assert floorLeadStart >= 0;"));
    *IOSByteArray_GetRef(nil_chk(br->bytes_), br->length_++) = (jbyte) floorLeadStart;
  }
  return br;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm)

@implementation OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1

- (OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum *)acceptWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term {
  if (OrgApacheLuceneUtilStringHelper_startsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(term, val$prefixRef_) && (this$0_->floorLeadEnd_ == -1 || ((OrgApacheLuceneUtilBytesRef *) nil_chk(term))->length_ == ((OrgApacheLuceneUtilBytesRef *) nil_chk(val$prefixRef_))->length_ || (IOSByteArray_Get(nil_chk(term->bytes_), term->offset_ + val$prefixRef_->length_) & (jint) 0xff) <= this$0_->floorLeadEnd_)) {
    return JreLoadStatic(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum, YES);
  }
  else {
    return JreLoadStatic(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum, END);
  }
}

- (instancetype)initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm:(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *)outer$
                                                       withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)capture$0
                                                     withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)arg$0 {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1_initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermsEnum_(self, outer$, capture$0, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$prefixRef_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "acceptWithOrgApacheLuceneUtilBytesRef:", "accept", "Lorg.apache.lucene.index.FilteredTermsEnum$AcceptStatus;", 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermsEnum:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.codecs.blocktree.AutoPrefixTermsWriter$PrefixTerm;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$prefixRef_", NULL, 0x1012, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm", "getTermsEnumWithOrgApacheLuceneIndexTermsEnum:" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 = { 2, "", "org.apache.lucene.codecs.blocktree", "AutoPrefixTermsWriter$PrefixTerm", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1;
}

@end

void OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1_initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 *self, OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *outer$, OrgApacheLuceneUtilBytesRef *capture$0, OrgApacheLuceneIndexTermsEnum *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$prefixRef_, capture$0);
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(self, arg$0);
  {
    [self setInitialSeekTermWithOrgApacheLuceneUtilBytesRef:outer$->term_];
  }
}

OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 *new_OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1_initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm *outer$, OrgApacheLuceneUtilBytesRef *capture$0, OrgApacheLuceneIndexTermsEnum *arg$0) {
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 *self = [OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1 alloc];
  OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1_initWithOrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneIndexTermsEnum_(self, outer$, capture$0, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeAutoPrefixTermsWriter_PrefixTerm_$1)