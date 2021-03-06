//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/SortedSetRangeTreeQuery.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/rangetree/RangeTreeReader.h"
#include "org/apache/lucene/rangetree/RangeTreeSortedSetDocValues.h"
#include "org/apache/lucene/rangetree/SortedSetRangeTreeQuery.h"
#include "org/apache/lucene/search/ConstantScoreScorer.h"
#include "org/apache/lucene/search/ConstantScoreWeight.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 : OrgApacheLuceneSearchConstantScoreWeight {
 @public
  OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *this$0_;
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (instancetype)initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery:(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *)outer$
                                         withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1, this$0_, OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *)

__attribute__((unused)) static void OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 *self, OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0);

__attribute__((unused)) static OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 *new_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 *create_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1)

@interface OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 : OrgApacheLuceneIndexSortedNumericDocValues {
 @public
  IOSLongArray *ords_;
  jint count_;
  OrgApacheLuceneIndexSortedSetDocValues *val$ssdv_;
}

- (void)setDocumentWithInt:(jint)doc;

- (jint)count;

- (jlong)valueAtWithInt:(jint)index;

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1, ords_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1, val$ssdv_, OrgApacheLuceneIndexSortedSetDocValues *)

__attribute__((unused)) static void OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 *self, OrgApacheLuceneIndexSortedSetDocValues *capture$0);

__attribute__((unused)) static OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 *new_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 *create_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1)

@implementation OrgApacheLuceneRangetreeSortedSetRangeTreeQuery

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)minValue
                     withBoolean:(jboolean)minInclusive
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)maxValue
                     withBoolean:(jboolean)maxInclusive {
  OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(self, field, minValue, minInclusive, maxValue, maxInclusive);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(self, self);
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [super hash]);
  if (minValue_ != nil) hash_ += ((jint) [minValue_ hash]) ^ (jint) 0x14fa55fb;
  if (maxValue_ != nil) hash_ += ((jint) [maxValue_ hash]) ^ (jint) 0x733fa5fe;
  return hash_ + (((jint) [JavaLangBoolean_valueOfWithBoolean_(minInclusive_) hash]) ^ (jint) 0x14fa55fb) + (((jint) [JavaLangBoolean_valueOfWithBoolean_(maxInclusive_) hash]) ^ (jint) 0x733fa5fe);
}

- (jboolean)isEqual:(id)other {
  if ([super isEqual:other]) {
    OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *q = (OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *) cast_chk(other, [OrgApacheLuceneRangetreeSortedSetRangeTreeQuery class]);
    return ((((OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *) nil_chk(q))->minValue_ == nil ? minValue_ == nil : [q->minValue_ isEqual:minValue_]) && (q->maxValue_ == nil ? maxValue_ == nil : [q->maxValue_ isEqual:maxValue_]) && minInclusive_ == q->minInclusive_ && maxInclusive_ == q->maxInclusive_);
  }
  return false;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithNSString:[[self getClass] getSimpleName]];
  [sb appendWithChar:':'];
  if ([((NSString *) nil_chk(self->field_)) isEqual:field] == false) {
    [sb appendWithNSString:@"field="];
    [sb appendWithNSString:self->field_];
    [sb appendWithChar:':'];
  }
  return [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithChar:minInclusive_ ? '[' : '{'])) appendWithNSString:(minValue_ == nil) ? @"*" : [((OrgApacheLuceneUtilBytesRef *) nil_chk(minValue_)) description]])) appendWithNSString:@" TO "])) appendWithNSString:(maxValue_ == nil) ? @"*" : [((OrgApacheLuceneUtilBytesRef *) nil_chk(maxValue_)) description]])) appendWithChar:maxInclusive_ ? ']' : '}'])) appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])])) description];
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(minValue_);
  RELEASE_(maxValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneUtilBytesRef:withBoolean:withOrgApacheLuceneUtilBytesRef:withBoolean:", "SortedSetRangeTreeQuery", NULL, 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x10, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "minValue_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxValue_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "minInclusive_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxInclusive_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeSortedSetRangeTreeQuery = { 2, "SortedSetRangeTreeQuery", "org.apache.lucene.rangetree", NULL, 0x1, 5, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery;
}

@end

void OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *self, NSString *field, OrgApacheLuceneUtilBytesRef *minValue, jboolean minInclusive, OrgApacheLuceneUtilBytesRef *maxValue, jboolean maxInclusive) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->field_, field);
  self->minInclusive_ = minInclusive;
  JreStrongAssign(&self->minValue_, minValue);
  self->maxInclusive_ = maxInclusive;
  JreStrongAssign(&self->maxValue_, maxValue);
}

OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *new_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *minValue, jboolean minInclusive, OrgApacheLuceneUtilBytesRef *maxValue, jboolean maxInclusive) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery, initWithNSString_withOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_, field, minValue, minInclusive, maxValue, maxInclusive)
}

OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *create_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *minValue, jboolean minInclusive, OrgApacheLuceneUtilBytesRef *maxValue, jboolean maxInclusive) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery, initWithNSString_withOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_, field, minValue, minInclusive, maxValue, maxInclusive)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery)

@implementation OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneIndexLeafReader *reader = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader];
  OrgApacheLuceneIndexSortedSetDocValues *ssdv = [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) getSortedSetDocValuesWithNSString:this$0_->field_];
  if (ssdv == nil) {
    return nil;
  }
  if ([ssdv isKindOfClass:[OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues class]] == false) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$@", @"field \"", this$0_->field_, @"\" was not indexed with RangeTreeDocValuesFormat: got: ", ssdv));
  }
  OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues *treeDV = (OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues *) cast_chk(ssdv, [OrgApacheLuceneRangetreeRangeTreeSortedSetDocValues class]);
  OrgApacheLuceneRangetreeRangeTreeReader *tree = [treeDV getRangeTreeReader];
  jlong minOrdIncl;
  if (this$0_->minValue_ == nil) {
    minOrdIncl = 0;
  }
  else {
    jlong ord = [ssdv lookupTermWithOrgApacheLuceneUtilBytesRef:this$0_->minValue_];
    if (ord >= 0) {
      if (this$0_->minInclusive_) {
        minOrdIncl = ord;
      }
      else {
        minOrdIncl = ord + 1;
      }
    }
    else {
      minOrdIncl = -ord - 1;
    }
  }
  jlong maxOrdIncl;
  if (this$0_->maxValue_ == nil) {
    maxOrdIncl = JavaLangLong_MAX_VALUE;
  }
  else {
    jlong ord = [ssdv lookupTermWithOrgApacheLuceneUtilBytesRef:this$0_->maxValue_];
    if (ord >= 0) {
      if (this$0_->maxInclusive_) {
        maxOrdIncl = ord;
      }
      else {
        maxOrdIncl = ord - 1;
      }
    }
    else {
      maxOrdIncl = -ord - 2;
    }
  }
  if (maxOrdIncl < minOrdIncl) {
    return nil;
  }
  OrgApacheLuceneIndexSortedNumericDocValues *ords = create_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(ssdv);
  OrgApacheLuceneSearchDocIdSet *result = [((OrgApacheLuceneRangetreeRangeTreeReader *) nil_chk(tree)) intersectWithLong:minOrdIncl withLong:maxOrdIncl withOrgApacheLuceneIndexSortedNumericDocValues:ords withInt:[((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) maxDoc]];
  OrgApacheLuceneSearchDocIdSetIterator *disi = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(result)) iterator];
  return create_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(self, [self score], disi);
}

- (instancetype)initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery:(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *)outer$
                                         withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0 {
  OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery:withOrgApacheLuceneSearchQuery:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.rangetree.SortedSetRangeTreeQuery;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneRangetreeSortedSetRangeTreeQuery", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 = { 2, "", "org.apache.lucene.rangetree", "SortedSetRangeTreeQuery", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1;
}

@end

void OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 *self, OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(self, arg$0);
}

OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 *new_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1, initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_, outer$, arg$0)
}

OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1 *create_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1, initWithOrgApacheLuceneRangetreeSortedSetRangeTreeQuery_withOrgApacheLuceneSearchQuery_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1)

@implementation OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1

- (void)setDocumentWithInt:(jint)doc {
  [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(val$ssdv_)) setDocumentWithInt:doc];
  jlong ord;
  count_ = 0;
  while ((ord = [val$ssdv_ nextOrd]) != OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS) {
    if (count_ == ((IOSLongArray *) nil_chk(ords_))->size_) {
      JreStrongAssign(&ords_, OrgApacheLuceneUtilArrayUtil_growWithLongArray_withInt_(ords_, count_ + 1));
    }
    *IOSLongArray_GetRef(nil_chk(ords_), count_++) = ord;
  }
}

- (jint)count {
  return count_;
}

- (jlong)valueAtWithInt:(jint)index {
  return IOSLongArray_Get(nil_chk(ords_), index);
}

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)capture$0 {
  OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(ords_);
  RELEASE_(val$ssdv_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setDocumentWithInt:", "setDocument", "V", 0x1, NULL, NULL },
    { "count", NULL, "I", 0x1, NULL, NULL },
    { "valueAtWithInt:", "valueAt", "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexSortedSetDocValues:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ords_", NULL, 0x2, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$ssdv_", NULL, 0x1012, "Lorg.apache.lucene.index.SortedSetDocValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1", "scorerWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 = { 2, "", "org.apache.lucene.rangetree", "SortedSetRangeTreeQuery$", 0x8008, 4, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1;
}

@end

void OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 *self, OrgApacheLuceneIndexSortedSetDocValues *capture$0) {
  JreStrongAssign(&self->val$ssdv_, capture$0);
  OrgApacheLuceneIndexSortedNumericDocValues_init(self);
  JreStrongAssignAndConsume(&self->ords_, [IOSLongArray newArrayWithLength:2]);
}

OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 *new_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1, initWithOrgApacheLuceneIndexSortedSetDocValues_, capture$0)
}

OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1 *create_OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_(OrgApacheLuceneIndexSortedSetDocValues *capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1, initWithOrgApacheLuceneIndexSortedSetDocValues_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeSortedSetRangeTreeQuery_$1_$1)
