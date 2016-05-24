//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadSpanCollector.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/payloads/PayloadSpanCollector.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneSearchPayloadsPayloadSpanCollector () {
 @public
  id<JavaUtilCollection> payloads_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadSpanCollector, payloads_, id<JavaUtilCollection>)

@implementation OrgApacheLuceneSearchPayloadsPayloadSpanCollector

- (void)collectLeafWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                withInt:(jint)position
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneUtilBytesRef *payload = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postings)) getPayload];
  if (payload == nil) return;
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:payload->length_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(payload->bytes_, payload->offset_, bytes, 0, payload->length_);
  [((id<JavaUtilCollection>) nil_chk(payloads_)) addWithId:bytes];
}

- (void)reset {
  [((id<JavaUtilCollection>) nil_chk(payloads_)) clear];
}

- (id<JavaUtilCollection>)getPayloads {
  return payloads_;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(payloads_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "collectLeafWithOrgApacheLuceneIndexPostingsEnum:withInt:withOrgApacheLuceneIndexTerm:", "collectLeaf", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "getPayloads", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<[LB;>;" },
    { "init", "PayloadSpanCollector", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "payloads_", NULL, 0x12, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<[LB;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadSpanCollector = { 2, "PayloadSpanCollector", "org.apache.lucene.search.payloads", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsPayloadSpanCollector;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(OrgApacheLuceneSearchPayloadsPayloadSpanCollector *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->payloads_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneSearchPayloadsPayloadSpanCollector *new_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadSpanCollector, init)
}

OrgApacheLuceneSearchPayloadsPayloadSpanCollector *create_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadSpanCollector, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadSpanCollector)