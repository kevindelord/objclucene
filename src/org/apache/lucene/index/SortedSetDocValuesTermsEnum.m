//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SortedSetDocValuesTermsEnum.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/index/OrdTermState.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValuesTermsEnum.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"

@interface OrgApacheLuceneIndexSortedSetDocValuesTermsEnum () {
 @public
  OrgApacheLuceneIndexSortedSetDocValues *values_;
  jlong currentOrd_;
  OrgApacheLuceneUtilBytesRefBuilder *scratch_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum, values_, OrgApacheLuceneIndexSortedSetDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum, scratch_, OrgApacheLuceneUtilBytesRefBuilder *)

@implementation OrgApacheLuceneIndexSortedSetDocValuesTermsEnum

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)values {
  OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(self, values);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  jlong ord = [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(values_)) lookupTermWithOrgApacheLuceneUtilBytesRef:text];
  if (ord >= 0) {
    currentOrd_ = ord;
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:text];
    return JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, FOUND);
  }
  else {
    currentOrd_ = -ord - 1;
    if (currentOrd_ == [values_ getValueCount]) {
      return JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, END);
    }
    else {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:[values_ lookupOrdWithLong:currentOrd_]];
      return JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, NOT_FOUND);
    }
  }
}

- (jboolean)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  jlong ord = [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(values_)) lookupTermWithOrgApacheLuceneUtilBytesRef:text];
  if (ord >= 0) {
    currentOrd_ = ord;
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:text];
    return true;
  }
  else {
    return false;
  }
}

- (void)seekExactWithLong:(jlong)ord {
  JreAssert((ord >= 0 && ord < [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(values_)) getValueCount]), (@"org/apache/lucene/index/SortedSetDocValuesTermsEnum.java:72 condition failed: assert ord >= 0 && ord < values.getValueCount();"));
  currentOrd_ = (jint) ord;
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(values_)) lookupOrdWithLong:currentOrd_]];
}

- (OrgApacheLuceneUtilBytesRef *)next {
  currentOrd_++;
  if (currentOrd_ >= [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(values_)) getValueCount]) {
    return nil;
  }
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:[values_ lookupOrdWithLong:currentOrd_]];
  return [scratch_ get];
}

- (OrgApacheLuceneUtilBytesRef *)term {
  return [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) get];
}

- (jlong)ord {
  return currentOrd_;
}

- (jint)docFreq {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jlong)totalTermFreq {
  return -1;
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state {
  JreAssert((state != nil && [state isKindOfClass:[OrgApacheLuceneIndexOrdTermState class]]), (@"org/apache/lucene/index/SortedSetDocValuesTermsEnum.java:114 condition failed: assert state != null && state instanceof OrdTermState;"));
  [self seekExactWithLong:((OrgApacheLuceneIndexOrdTermState *) nil_chk(((OrgApacheLuceneIndexOrdTermState *) cast_chk(state, [OrgApacheLuceneIndexOrdTermState class]))))->ord_];
}

- (OrgApacheLuceneIndexTermState *)termState {
  OrgApacheLuceneIndexOrdTermState *state = create_OrgApacheLuceneIndexOrdTermState_init();
  state->ord_ = currentOrd_;
  return state;
}

- (void)dealloc {
  RELEASE_(values_);
  RELEASE_(scratch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexSortedSetDocValues:", "SortedSetDocValuesTermsEnum", NULL, 0x1, NULL, NULL },
    { "seekCeilWithOrgApacheLuceneUtilBytesRef:", "seekCeil", "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", 0x1, "Ljava.io.IOException;", NULL },
    { "seekExactWithOrgApacheLuceneUtilBytesRef:", "seekExact", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "seekExactWithLong:", "seekExact", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "term", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "ord", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "docFreq", NULL, "I", 0x1, NULL, NULL },
    { "totalTermFreq", NULL, "J", 0x1, NULL, NULL },
    { "postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x1, "Ljava.io.IOException;", NULL },
    { "seekExactWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermState:", "seekExact", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "termState", NULL, "Lorg.apache.lucene.index.TermState;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "values_", NULL, 0x12, "Lorg.apache.lucene.index.SortedSetDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "currentOrd_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "scratch_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSortedSetDocValuesTermsEnum = { 2, "SortedSetDocValuesTermsEnum", "org.apache.lucene.index", NULL, 0x0, 12, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum;
}

@end

void OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum *self, OrgApacheLuceneIndexSortedSetDocValues *values) {
  OrgApacheLuceneIndexTermsEnum_init(self);
  self->currentOrd_ = -1;
  JreStrongAssign(&self->values_, values);
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
}

OrgApacheLuceneIndexSortedSetDocValuesTermsEnum *new_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *values) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum, initWithOrgApacheLuceneIndexSortedSetDocValues_, values)
}

OrgApacheLuceneIndexSortedSetDocValuesTermsEnum *create_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *values) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum, initWithOrgApacheLuceneIndexSortedSetDocValues_, values)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSortedSetDocValuesTermsEnum)
