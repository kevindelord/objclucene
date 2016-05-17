//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/UnsortedInputIterator.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/List.h"
#include "java/util/Random.h"
#include "java/util/Set.h"
#include "org/apache/lucene/search/suggest/BufferedInputIterator.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/search/suggest/UnsortedInputIterator.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefArray.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"

@interface OrgApacheLuceneSearchSuggestUnsortedInputIterator () {
 @public
  IOSIntArray *ords_;
  jint currentOrd_;
  OrgApacheLuceneUtilBytesRefBuilder *spare_UnsortedInputIterator_;
  OrgApacheLuceneUtilBytesRefBuilder *payloadSpare_UnsortedInputIterator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestUnsortedInputIterator, ords_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestUnsortedInputIterator, spare_UnsortedInputIterator_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestUnsortedInputIterator, payloadSpare_UnsortedInputIterator_, OrgApacheLuceneUtilBytesRefBuilder *)

@implementation OrgApacheLuceneSearchSuggestUnsortedInputIterator

- (instancetype)initWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)source {
  OrgApacheLuceneSearchSuggestUnsortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_(self, source);
  return self;
}

- (jlong)weight {
  JreAssert((currentOrd_ == IOSIntArray_Get(nil_chk(ords_), curPos_)), (@"org/apache/lucene/search/suggest/UnsortedInputIterator.java:59 condition failed: assert currentOrd == ords[curPos];"));
  return IOSLongArray_Get(nil_chk(freqs_), currentOrd_);
}

- (OrgApacheLuceneUtilBytesRef *)next {
  if (++curPos_ < [((OrgApacheLuceneUtilBytesRefArray *) nil_chk(entries_)) size]) {
    currentOrd_ = IOSIntArray_Get(nil_chk(ords_), curPos_);
    return [((OrgApacheLuceneUtilBytesRefArray *) nil_chk(entries_)) getWithOrgApacheLuceneUtilBytesRefBuilder:spare_UnsortedInputIterator_ withInt:currentOrd_];
  }
  return nil;
}

- (OrgApacheLuceneUtilBytesRef *)payload {
  if ([self hasPayloads] && curPos_ < [((OrgApacheLuceneUtilBytesRefArray *) nil_chk(payloads_)) size]) {
    JreAssert((currentOrd_ == IOSIntArray_Get(nil_chk(ords_), curPos_)), (@"org/apache/lucene/search/suggest/UnsortedInputIterator.java:75 condition failed: assert currentOrd == ords[curPos];"));
    return [((OrgApacheLuceneUtilBytesRefArray *) nil_chk(payloads_)) getWithOrgApacheLuceneUtilBytesRefBuilder:payloadSpare_UnsortedInputIterator_ withInt:currentOrd_];
  }
  return nil;
}

- (id<JavaUtilSet>)contexts {
  if ([self hasContexts] && curPos_ < [((id<JavaUtilList>) nil_chk(contextSets_)) size]) {
    JreAssert((currentOrd_ == IOSIntArray_Get(nil_chk(ords_), curPos_)), (@"org/apache/lucene/search/suggest/UnsortedInputIterator.java:84 condition failed: assert currentOrd == ords[curPos];"));
    return [((id<JavaUtilList>) nil_chk(contextSets_)) getWithInt:currentOrd_];
  }
  return nil;
}

- (void)dealloc {
  RELEASE_(ords_);
  RELEASE_(spare_UnsortedInputIterator_);
  RELEASE_(payloadSpare_UnsortedInputIterator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSuggestInputIterator:", "UnsortedInputIterator", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "weight", NULL, "J", 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "payload", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "contexts", NULL, "Ljava.util.Set;", 0x1, NULL, "()Ljava/util/Set<Lorg/apache/lucene/util/BytesRef;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ords_", NULL, 0x12, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentOrd_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "spare_UnsortedInputIterator_", "spare", 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "payloadSpare_UnsortedInputIterator_", "payloadSpare", 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestUnsortedInputIterator = { 2, "UnsortedInputIterator", "org.apache.lucene.search.suggest", NULL, 0x1, 5, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestUnsortedInputIterator;
}

@end

void OrgApacheLuceneSearchSuggestUnsortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_(OrgApacheLuceneSearchSuggestUnsortedInputIterator *self, id<OrgApacheLuceneSearchSuggestInputIterator> source) {
  OrgApacheLuceneSearchSuggestBufferedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_(self, source);
  self->currentOrd_ = -1;
  JreStrongAssignAndConsume(&self->spare_UnsortedInputIterator_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->payloadSpare_UnsortedInputIterator_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->ords_, [IOSIntArray newArrayWithLength:[((OrgApacheLuceneUtilBytesRefArray *) nil_chk(self->entries_)) size]]);
  JavaUtilRandom *random = create_JavaUtilRandom_init();
  for (jint i = 0; i < self->ords_->size_; i++) {
    *IOSIntArray_GetRef(self->ords_, i) = i;
  }
  for (jint i = 0; i < self->ords_->size_; i++) {
    jint randomPosition = [random nextIntWithInt:self->ords_->size_];
    jint temp = IOSIntArray_Get(self->ords_, i);
    *IOSIntArray_GetRef(self->ords_, i) = IOSIntArray_Get(self->ords_, randomPosition);
    *IOSIntArray_GetRef(self->ords_, randomPosition) = temp;
  }
}

OrgApacheLuceneSearchSuggestUnsortedInputIterator *new_OrgApacheLuceneSearchSuggestUnsortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_(id<OrgApacheLuceneSearchSuggestInputIterator> source) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestUnsortedInputIterator, initWithOrgApacheLuceneSearchSuggestInputIterator_, source)
}

OrgApacheLuceneSearchSuggestUnsortedInputIterator *create_OrgApacheLuceneSearchSuggestUnsortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_(id<OrgApacheLuceneSearchSuggestInputIterator> source) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestUnsortedInputIterator, initWithOrgApacheLuceneSearchSuggestInputIterator_, source)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestUnsortedInputIterator)
