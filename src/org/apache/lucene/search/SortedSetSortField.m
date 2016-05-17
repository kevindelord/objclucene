//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortedSetSortField.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/SortedSetSelector.h"
#include "org/apache/lucene/search/SortedSetSortField.h"

@interface OrgApacheLuceneSearchSortedSetSortField () {
 @public
  OrgApacheLuceneSearchSortedSetSelector_Type *selector_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedSetSortField, selector_, OrgApacheLuceneSearchSortedSetSelector_Type *)

@interface OrgApacheLuceneSearchSortedSetSortField_$1 : OrgApacheLuceneSearchFieldComparator_TermOrdValComparator {
 @public
  OrgApacheLuceneSearchSortedSetSortField *this$0_;
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                        withNSString:(NSString *)field;

- (instancetype)initWithOrgApacheLuceneSearchSortedSetSortField:(OrgApacheLuceneSearchSortedSetSortField *)outer$
                                                        withInt:(jint)arg$0
                                                   withNSString:(NSString *)arg$1
                                                    withBoolean:(jboolean)arg$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedSetSortField_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortedSetSortField_$1, this$0_, OrgApacheLuceneSearchSortedSetSortField *)

__attribute__((unused)) static void OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField_$1 *self, OrgApacheLuceneSearchSortedSetSortField *outer$, jint arg$0, NSString *arg$1, jboolean arg$2);

__attribute__((unused)) static OrgApacheLuceneSearchSortedSetSortField_$1 *new_OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField *outer$, jint arg$0, NSString *arg$1, jboolean arg$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSortedSetSortField_$1 *create_OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField *outer$, jint arg$0, NSString *arg$1, jboolean arg$2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSortField_$1)

@implementation OrgApacheLuceneSearchSortedSetSortField

- (instancetype)initWithNSString:(NSString *)field
                     withBoolean:(jboolean)reverse {
  OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_(self, field, reverse);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
                     withBoolean:(jboolean)reverse
withOrgApacheLuceneSearchSortedSetSelector_Type:(OrgApacheLuceneSearchSortedSetSelector_Type *)selector {
  OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_Type_(self, field, reverse, selector);
  return self;
}

- (OrgApacheLuceneSearchSortedSetSelector_Type *)getSelector {
  return selector_;
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchSortedSetSelector_Type *) nil_chk(selector_)) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (![super isEqual:obj]) return false;
  if ([self getClass] != (id) [nil_chk(obj) getClass]) return false;
  OrgApacheLuceneSearchSortedSetSortField *other = (OrgApacheLuceneSearchSortedSetSortField *) cast_chk(obj, [OrgApacheLuceneSearchSortedSetSortField class]);
  if (selector_ != other->selector_) return false;
  return true;
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<sortedset: \""])) appendWithNSString:[self getField]])) appendWithNSString:@"\">"];
  if ([self getReverse]) [buffer appendWithChar:'!'];
  if (missingValue_ != nil) {
    [buffer appendWithNSString:@" missingValue="];
    [buffer appendWithId:missingValue_];
  }
  [buffer appendWithNSString:@" selector="];
  [buffer appendWithId:selector_];
  return [buffer description];
}

- (void)setMissingValueWithId:(id)missingValue {
  if (missingValue != JreLoadStatic(OrgApacheLuceneSearchSortField, STRING_FIRST) && missingValue != JreLoadStatic(OrgApacheLuceneSearchSortField, STRING_LAST)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"For SORTED_SET type, missing value must be either STRING_FIRST or STRING_LAST");
  }
  JreStrongAssign(&self->missingValue_, missingValue);
}

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos {
  return create_OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(self, numHits, [self getField], missingValue_ == JreLoadStatic(OrgApacheLuceneSearchSortField, STRING_LAST));
}

- (void)dealloc {
  RELEASE_(selector_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withBoolean:", "SortedSetSortField", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withBoolean:withOrgApacheLuceneSearchSortedSetSelector_Type:", "SortedSetSortField", NULL, 0x1, NULL, NULL },
    { "getSelector", NULL, "Lorg.apache.lucene.search.SortedSetSelector$Type;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setMissingValueWithId:", "setMissingValue", "V", 0x1, NULL, NULL },
    { "getComparatorWithInt:withInt:", "getComparator", "Lorg.apache.lucene.search.FieldComparator;", 0x1, "Ljava.io.IOException;", "(II)Lorg/apache/lucene/search/FieldComparator<*>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "selector_", NULL, 0x12, "Lorg.apache.lucene.search.SortedSetSelector$Type;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortedSetSortField = { 2, "SortedSetSortField", "org.apache.lucene.search", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSortedSetSortField;
}

@end

void OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField *self, NSString *field, jboolean reverse) {
  OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_Type_(self, field, reverse, JreLoadEnum(OrgApacheLuceneSearchSortedSetSelector_Type, MIN));
}

OrgApacheLuceneSearchSortedSetSortField *new_OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_(NSString *field, jboolean reverse) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedSetSortField, initWithNSString_withBoolean_, field, reverse)
}

OrgApacheLuceneSearchSortedSetSortField *create_OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_(NSString *field, jboolean reverse) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedSetSortField, initWithNSString_withBoolean_, field, reverse)
}

void OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_Type_(OrgApacheLuceneSearchSortedSetSortField *self, NSString *field, jboolean reverse, OrgApacheLuceneSearchSortedSetSelector_Type *selector) {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(self, field, JreLoadEnum(OrgApacheLuceneSearchSortField_Type, CUSTOM), reverse);
  if (selector == nil) {
    @throw create_JavaLangNullPointerException_init();
  }
  JreStrongAssign(&self->selector_, selector);
}

OrgApacheLuceneSearchSortedSetSortField *new_OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_Type_(NSString *field, jboolean reverse, OrgApacheLuceneSearchSortedSetSelector_Type *selector) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedSetSortField, initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_Type_, field, reverse, selector)
}

OrgApacheLuceneSearchSortedSetSortField *create_OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_Type_(NSString *field, jboolean reverse, OrgApacheLuceneSearchSortedSetSelector_Type *selector) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedSetSortField, initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_Type_, field, reverse, selector)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortedSetSortField)

@implementation OrgApacheLuceneSearchSortedSetSortField_$1

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                        withNSString:(NSString *)field {
  OrgApacheLuceneIndexSortedSetDocValues *sortedSet = OrgApacheLuceneIndexDocValues_getSortedSetWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field);
  return OrgApacheLuceneSearchSortedSetSelector_wrapWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneSearchSortedSetSelector_Type_(sortedSet, this$0_->selector_);
}

- (instancetype)initWithOrgApacheLuceneSearchSortedSetSortField:(OrgApacheLuceneSearchSortedSetSortField *)outer$
                                                        withInt:(jint)arg$0
                                                   withNSString:(NSString *)arg$1
                                                    withBoolean:(jboolean)arg$2 {
  OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(self, outer$, arg$0, arg$1, arg$2);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:withNSString:", "getSortedDocValues", "Lorg.apache.lucene.index.SortedDocValues;", 0x4, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchSortedSetSortField:withInt:withNSString:withBoolean:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.SortedSetSortField;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchSortedSetSortField", "getComparatorWithInt:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortedSetSortField_$1 = { 2, "", "org.apache.lucene.search", "SortedSetSortField", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchSortedSetSortField_$1;
}

@end

void OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField_$1 *self, OrgApacheLuceneSearchSortedSetSortField *outer$, jint arg$0, NSString *arg$1, jboolean arg$2) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(self, arg$0, arg$1, arg$2);
}

OrgApacheLuceneSearchSortedSetSortField_$1 *new_OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField *outer$, jint arg$0, NSString *arg$1, jboolean arg$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSortedSetSortField_$1, initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_, outer$, arg$0, arg$1, arg$2)
}

OrgApacheLuceneSearchSortedSetSortField_$1 *create_OrgApacheLuceneSearchSortedSetSortField_$1_initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField *outer$, jint arg$0, NSString *arg$1, jboolean arg$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSortedSetSortField_$1, initWithOrgApacheLuceneSearchSortedSetSortField_withInt_withNSString_withBoolean_, outer$, arg$0, arg$1, arg$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortedSetSortField_$1)
