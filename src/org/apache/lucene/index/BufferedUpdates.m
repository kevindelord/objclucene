//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BufferedUpdates.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/index/BufferedUpdates.h"
#include "org/apache/lucene/index/DocValuesUpdate.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

#define OrgApacheLuceneIndexBufferedUpdates_VERBOSE_DELETES NO

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, VERBOSE_DELETES, jboolean)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexBufferedUpdates)

jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_TERM_;
jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_DOCID_;
jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_QUERY_;
jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_FIELD_ENTRY_;
jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_UPDATE_ENTRY_;
jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_FIELD_ENTRY_;
jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_UPDATE_ENTRY_;
JavaLangInteger *OrgApacheLuceneIndexBufferedUpdates_MAX_INT_;

@implementation OrgApacheLuceneIndexBufferedUpdates

- (instancetype)init {
  OrgApacheLuceneIndexBufferedUpdates_init(self);
  return self;
}

- (NSString *)description {
  {
    NSString *s = JreStrcat("$J", @"gen=", gen_);
    if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numTermDeletes_)) get] != 0) {
      JreStrAppend(&s, "CI$IC", ' ', [numTermDeletes_ get], @" deleted terms (unique count=", [((id<JavaUtilMap>) nil_chk(terms_)) size], ')');
    }
    if ([((id<JavaUtilMap>) nil_chk(queries_)) size] != 0) {
      JreStrAppend(&s, "CI$", ' ', [queries_ size], @" deleted queries");
    }
    if ([((id<JavaUtilList>) nil_chk(docIDs_)) size] != 0) {
      JreStrAppend(&s, "CI$", ' ', [docIDs_ size], @" deleted docIDs");
    }
    if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numNumericUpdates_)) get] != 0) {
      JreStrAppend(&s, "CI$IC", ' ', [numNumericUpdates_ get], @" numeric updates (unique count=", [((id<JavaUtilMap>) nil_chk(numericUpdates_)) size], ')');
    }
    if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numBinaryUpdates_)) get] != 0) {
      JreStrAppend(&s, "CI$IC", ' ', [numBinaryUpdates_ get], @" binary updates (unique count=", [((id<JavaUtilMap>) nil_chk(binaryUpdates_)) size], ')');
    }
    if ([((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) get] != 0) {
      JreStrAppend(&s, "$J", @" bytesUsed=", [bytesUsed_ get]);
    }
    return s;
  }
}

- (void)addQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                       withInt:(jint)docIDUpto {
  JavaLangInteger *current = [((id<JavaUtilMap>) nil_chk(queries_)) putWithId:query withId:JavaLangInteger_valueOfWithInt_(docIDUpto)];
  if (current == nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_QUERY_];
  }
}

- (void)addDocIDWithInt:(jint)docID {
  [((id<JavaUtilList>) nil_chk(docIDs_)) addWithId:JavaLangInteger_valueOfWithInt_(docID)];
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_DOCID_];
}

- (void)addTermWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                    withInt:(jint)docIDUpto {
  JavaLangInteger *current = [((id<JavaUtilMap>) nil_chk(terms_)) getWithId:term];
  if (current != nil && docIDUpto < [current intValue]) {
    return;
  }
  [terms_ putWithId:term withId:JavaLangInteger_valueOfWithInt_(docIDUpto)];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numTermDeletes_)) incrementAndGet];
  if (current == nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_TERM_ + ((OrgApacheLuceneUtilBytesRef *) nil_chk(((OrgApacheLuceneIndexTerm *) nil_chk(term))->bytes_))->length_ + (OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR * ((jint) [((NSString *) nil_chk([term field])) length]))];
  }
}

- (void)addNumericUpdateWithOrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate:(OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate *)update
                                                                               withInt:(jint)docIDUpto {
  JavaUtilLinkedHashMap *fieldUpdates = [((id<JavaUtilMap>) nil_chk(numericUpdates_)) getWithId:((OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate *) nil_chk(update))->field_];
  if (fieldUpdates == nil) {
    fieldUpdates = [new_JavaUtilLinkedHashMap_init() autorelease];
    [numericUpdates_ putWithId:update->field_ withId:fieldUpdates];
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_FIELD_ENTRY_];
  }
  OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate *current = [((JavaUtilLinkedHashMap *) nil_chk(fieldUpdates)) getWithId:update->term_];
  if (current != nil && docIDUpto < current->docIDUpto_) {
    return;
  }
  update->docIDUpto_ = docIDUpto;
  if (current != nil) {
    [fieldUpdates removeWithId:update->term_];
  }
  [fieldUpdates putWithId:update->term_ withId:update];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numNumericUpdates_)) incrementAndGet];
  if (current == nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_UPDATE_ENTRY_ + [update sizeInBytes]];
  }
}

- (void)addBinaryUpdateWithOrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate:(OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate *)update
                                                                             withInt:(jint)docIDUpto {
  JavaUtilLinkedHashMap *fieldUpdates = [((id<JavaUtilMap>) nil_chk(binaryUpdates_)) getWithId:((OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate *) nil_chk(update))->field_];
  if (fieldUpdates == nil) {
    fieldUpdates = [new_JavaUtilLinkedHashMap_init() autorelease];
    [binaryUpdates_ putWithId:update->field_ withId:fieldUpdates];
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_FIELD_ENTRY_];
  }
  OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate *current = [((JavaUtilLinkedHashMap *) nil_chk(fieldUpdates)) getWithId:update->term_];
  if (current != nil && docIDUpto < current->docIDUpto_) {
    return;
  }
  update->docIDUpto_ = docIDUpto;
  if (current != nil) {
    [fieldUpdates removeWithId:update->term_];
  }
  [fieldUpdates putWithId:update->term_ withId:update];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numBinaryUpdates_)) incrementAndGet];
  if (current == nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_UPDATE_ENTRY_ + [update sizeInBytes]];
  }
}

- (void)clear {
  [((id<JavaUtilMap>) nil_chk(terms_)) clear];
  [((id<JavaUtilMap>) nil_chk(queries_)) clear];
  [((id<JavaUtilList>) nil_chk(docIDs_)) clear];
  [((id<JavaUtilMap>) nil_chk(numericUpdates_)) clear];
  [((id<JavaUtilMap>) nil_chk(binaryUpdates_)) clear];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numTermDeletes_)) setWithInt:0];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numNumericUpdates_)) setWithInt:0];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numBinaryUpdates_)) setWithInt:0];
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) setWithLong:0];
}

- (jboolean)any {
  return [((id<JavaUtilMap>) nil_chk(terms_)) size] > 0 || [((id<JavaUtilList>) nil_chk(docIDs_)) size] > 0 || [((id<JavaUtilMap>) nil_chk(queries_)) size] > 0 || [((id<JavaUtilMap>) nil_chk(numericUpdates_)) size] > 0 || [((id<JavaUtilMap>) nil_chk(binaryUpdates_)) size] > 0;
}

- (void)dealloc {
  RELEASE_(numTermDeletes_);
  RELEASE_(numNumericUpdates_);
  RELEASE_(numBinaryUpdates_);
  RELEASE_(terms_);
  RELEASE_(queries_);
  RELEASE_(docIDs_);
  RELEASE_(numericUpdates_);
  RELEASE_(binaryUpdates_);
  RELEASE_(bytesUsed_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexBufferedUpdates class]) {
    OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_TERM_ = 9 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + 7 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + 10 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
    OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_DOCID_ = 2 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
    OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_QUERY_ = 5 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + 2 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + 24;
    OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_FIELD_ENTRY_ = 7 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + 3 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER_) + 5 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT;
    OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_UPDATE_ENTRY_ = 7 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
    OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_FIELD_ENTRY_ = 7 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + 3 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER_) + 5 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT;
    OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_UPDATE_ENTRY_ = 7 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
    JreStrongAssign(&OrgApacheLuceneIndexBufferedUpdates_MAX_INT_, JavaLangInteger_valueOfWithInt_(JavaLangInteger_MAX_VALUE));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexBufferedUpdates)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BufferedUpdates", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "addQueryWithOrgApacheLuceneSearchQuery:withInt:", "addQuery", "V", 0x1, NULL, NULL },
    { "addDocIDWithInt:", "addDocID", "V", 0x1, NULL, NULL },
    { "addTermWithOrgApacheLuceneIndexTerm:withInt:", "addTerm", "V", 0x1, NULL, NULL },
    { "addNumericUpdateWithOrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate:withInt:", "addNumericUpdate", "V", 0x1, NULL, NULL },
    { "addBinaryUpdateWithOrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate:withInt:", "addBinaryUpdate", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x0, NULL, NULL },
    { "any", NULL, "Z", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BYTES_PER_DEL_TERM_", NULL, 0x18, "I", &OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_TERM_, NULL, .constantValue.asLong = 0 },
    { "BYTES_PER_DEL_DOCID_", NULL, 0x18, "I", &OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_DOCID_, NULL, .constantValue.asLong = 0 },
    { "BYTES_PER_DEL_QUERY_", NULL, 0x18, "I", &OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_QUERY_, NULL, .constantValue.asLong = 0 },
    { "BYTES_PER_NUMERIC_FIELD_ENTRY_", NULL, 0x18, "I", &OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_FIELD_ENTRY_, NULL, .constantValue.asLong = 0 },
    { "BYTES_PER_NUMERIC_UPDATE_ENTRY_", NULL, 0x18, "I", &OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_UPDATE_ENTRY_, NULL, .constantValue.asLong = 0 },
    { "BYTES_PER_BINARY_FIELD_ENTRY_", NULL, 0x18, "I", &OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_FIELD_ENTRY_, NULL, .constantValue.asLong = 0 },
    { "BYTES_PER_BINARY_UPDATE_ENTRY_", NULL, 0x18, "I", &OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_UPDATE_ENTRY_, NULL, .constantValue.asLong = 0 },
    { "numTermDeletes_", NULL, 0x10, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
    { "numNumericUpdates_", NULL, 0x10, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
    { "numBinaryUpdates_", NULL, 0x10, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
    { "terms_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lorg/apache/lucene/index/Term;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "queries_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lorg/apache/lucene/search/Query;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "docIDs_", NULL, 0x10, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "numericUpdates_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/DocValuesUpdate$NumericDocValuesUpdate;>;>;", .constantValue.asLong = 0 },
    { "binaryUpdates_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Lorg/apache/lucene/index/Term;Lorg/apache/lucene/index/DocValuesUpdate$BinaryDocValuesUpdate;>;>;", .constantValue.asLong = 0 },
    { "MAX_INT_", NULL, 0x19, "Ljava.lang.Integer;", &OrgApacheLuceneIndexBufferedUpdates_MAX_INT_, NULL, .constantValue.asLong = 0 },
    { "bytesUsed_", NULL, 0x10, "Ljava.util.concurrent.atomic.AtomicLong;", NULL, NULL, .constantValue.asLong = 0 },
    { "VERBOSE_DELETES", "VERBOSE_DELETES", 0x1a, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneIndexBufferedUpdates_VERBOSE_DELETES },
    { "gen_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBufferedUpdates = { 2, "BufferedUpdates", "org.apache.lucene.index", NULL, 0x0, 9, methods, 19, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexBufferedUpdates;
}

@end

void OrgApacheLuceneIndexBufferedUpdates_init(OrgApacheLuceneIndexBufferedUpdates *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->numTermDeletes_, new_JavaUtilConcurrentAtomicAtomicInteger_init());
  JreStrongAssignAndConsume(&self->numNumericUpdates_, new_JavaUtilConcurrentAtomicAtomicInteger_init());
  JreStrongAssignAndConsume(&self->numBinaryUpdates_, new_JavaUtilConcurrentAtomicAtomicInteger_init());
  JreStrongAssignAndConsume(&self->terms_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->queries_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->docIDs_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->numericUpdates_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->binaryUpdates_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->bytesUsed_, new_JavaUtilConcurrentAtomicAtomicLong_init());
}

OrgApacheLuceneIndexBufferedUpdates *new_OrgApacheLuceneIndexBufferedUpdates_init() {
  OrgApacheLuceneIndexBufferedUpdates *self = [OrgApacheLuceneIndexBufferedUpdates alloc];
  OrgApacheLuceneIndexBufferedUpdates_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBufferedUpdates)