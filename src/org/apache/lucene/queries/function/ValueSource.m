//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/ValueSource.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/util/IdentityHashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/FieldComparatorSource.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/SimpleFieldComparator.h"
#include "org/apache/lucene/search/SortField.h"

@interface OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField () {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *this$0_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField, this$0_, OrgApacheLuceneQueriesFunctionValueSource *)

@interface OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource () {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *this$0_;
  id<JavaUtilMap> context_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource, this$0_, OrgApacheLuceneQueriesFunctionValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource, context_, id<JavaUtilMap>)

@interface OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator () {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *this$0_;
  IOSDoubleArray *values_;
  OrgApacheLuceneQueriesFunctionFunctionValues *docVals_;
  jdouble bottom_;
  id<JavaUtilMap> fcontext_;
  jdouble topValue_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator, this$0_, OrgApacheLuceneQueriesFunctionValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator, values_, IOSDoubleArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator, docVals_, OrgApacheLuceneQueriesFunctionFunctionValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator, fcontext_, id<JavaUtilMap>)

@implementation OrgApacheLuceneQueriesFunctionValueSource

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isEqual:(id)o {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSUInteger)hash {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description__ {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  return [self description__];
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
}

+ (id<JavaUtilMap>)newContextWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  return OrgApacheLuceneQueriesFunctionValueSource_newContextWithOrgApacheLuceneSearchIndexSearcher_(searcher);
}

- (OrgApacheLuceneSearchSortField *)getSortFieldWithBoolean:(jboolean)reverse {
  return create_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_(self, reverse);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "isEqual:", "equals", "Z", 0x401, NULL, NULL },
    { "hash", "hashCode", "I", 0x401, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:", "createWeight", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "newContextWithOrgApacheLuceneSearchIndexSearcher:", "newContext", "Ljava.util.Map;", 0x9, NULL, NULL },
    { "getSortFieldWithBoolean:", "getSortField", "Lorg.apache.lucene.search.SortField;", 0x1, NULL, NULL },
    { "init", "ValueSource", NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queries.function.ValueSource$ValueSourceSortField;", "Lorg.apache.lucene.queries.function.ValueSource$ValueSourceComparatorSource;", "Lorg.apache.lucene.queries.function.ValueSource$ValueSourceComparator;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValueSource = { 2, "ValueSource", "org.apache.lucene.queries.function", NULL, 0x401, 9, methods, 0, NULL, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValueSource;
}

@end

id<JavaUtilMap> OrgApacheLuceneQueriesFunctionValueSource_newContextWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher) {
  OrgApacheLuceneQueriesFunctionValueSource_initialize();
  id<JavaUtilMap> context = create_JavaUtilIdentityHashMap_init();
  [context putWithId:@"searcher" withId:searcher];
  return context;
}

void OrgApacheLuceneQueriesFunctionValueSource_init(OrgApacheLuceneQueriesFunctionValueSource *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValueSource)

@implementation OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)outer$
                                                      withBoolean:(jboolean)reverse {
  OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_(self, outer$, reverse);
  return self;
}

- (OrgApacheLuceneSearchSortField *)rewriteWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  id<JavaUtilMap> context = OrgApacheLuceneQueriesFunctionValueSource_newContextWithOrgApacheLuceneSearchIndexSearcher_(searcher);
  [this$0_ createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
  return create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_([self getField], create_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(this$0_, context), [self getReverse]);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withBoolean:", "ValueSourceSortField", NULL, 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneSearchIndexSearcher:", "rewrite", "Lorg.apache.lucene.search.SortField;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField = { 2, "ValueSourceSortField", "org.apache.lucene.queries.function", "ValueSource", 0x0, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField;
}

@end

void OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField *self, OrgApacheLuceneQueriesFunctionValueSource *outer$, jboolean reverse) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_Type_withBoolean_(self, [outer$ description__], JreLoadEnum(OrgApacheLuceneSearchSortField_Type, REWRITEABLE), reverse);
}

OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField *new_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_(OrgApacheLuceneQueriesFunctionValueSource *outer$, jboolean reverse) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField, initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_, outer$, reverse)
}

OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField *create_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_(OrgApacheLuceneQueriesFunctionValueSource *outer$, jboolean reverse) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField, initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_, outer$, reverse)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField)

@implementation OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)outer$
                                                  withJavaUtilMap:(id<JavaUtilMap>)context {
  OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(self, outer$, context);
  return self;
}

- (OrgApacheLuceneSearchFieldComparator *)newComparatorWithNSString:(NSString *)fieldname
                                                            withInt:(jint)numHits
                                                            withInt:(jint)sortPos
                                                        withBoolean:(jboolean)reversed {
  return create_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_(this$0_, context_, numHits);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withJavaUtilMap:", "ValueSourceComparatorSource", NULL, 0x1, NULL, NULL },
    { "newComparatorWithNSString:withInt:withInt:withBoolean:", "newComparator", "Lorg.apache.lucene.search.FieldComparator;", 0x1, "Ljava.io.IOException;", "(Ljava/lang/String;IIZ)Lorg/apache/lucene/search/FieldComparator<Ljava/lang/Double;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "context_", NULL, 0x12, "Ljava.util.Map;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource = { 2, "ValueSourceComparatorSource", "org.apache.lucene.queries.function", "ValueSource", 0x0, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource;
}

@end

void OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource *self, OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> context) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFieldComparatorSource_init(self);
  JreStrongAssign(&self->context_, context);
}

OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource *new_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> context) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource, initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_, outer$, context)
}

OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource *create_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> context) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource, initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_, outer$, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource)

@implementation OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)outer$
                                                  withJavaUtilMap:(id<JavaUtilMap>)fcontext
                                                          withInt:(jint)numHits {
  OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_(self, outer$, fcontext, numHits);
  return self;
}

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2 {
  return JavaLangDouble_compareWithDouble_withDouble_(IOSDoubleArray_Get(nil_chk(values_), slot1), IOSDoubleArray_Get(values_, slot2));
}

- (jint)compareBottomWithInt:(jint)doc {
  return JavaLangDouble_compareWithDouble_withDouble_(bottom_, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(docVals_)) doubleValWithInt:doc]);
}

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc {
  *IOSDoubleArray_GetRef(nil_chk(values_), slot) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(docVals_)) doubleValWithInt:doc];
}

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  JreStrongAssign(&docVals_, [this$0_ getValuesWithJavaUtilMap:fcontext_ withOrgApacheLuceneIndexLeafReaderContext:context]);
}

- (void)setBottomWithInt:(jint)bottom {
  self->bottom_ = IOSDoubleArray_Get(nil_chk(values_), bottom);
}

- (void)setTopValueWithId:(JavaLangDouble *)value {
  self->topValue_ = [((JavaLangDouble *) nil_chk(value)) doubleValue];
}

- (JavaLangDouble *)valueWithInt:(jint)slot {
  return JavaLangDouble_valueOfWithDouble_(IOSDoubleArray_Get(nil_chk(values_), slot));
}

- (jint)compareTopWithInt:(jint)doc {
  jdouble docValue = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(docVals_)) doubleValWithInt:doc];
  return JavaLangDouble_compareWithDouble_withDouble_(topValue_, docValue);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(values_);
  RELEASE_(docVals_);
  RELEASE_(fcontext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withJavaUtilMap:withInt:", "ValueSourceComparator", NULL, 0x0, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x1, NULL, NULL },
    { "compareBottomWithInt:", "compareBottom", "I", 0x1, NULL, NULL },
    { "copy__WithInt:withInt:", "copy", "V", 0x1, NULL, NULL },
    { "doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:", "doSetNextReader", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "setBottomWithInt:", "setBottom", "V", 0x1, NULL, NULL },
    { "setTopValueWithId:", "setTopValue", "V", 0x1, NULL, NULL },
    { "valueWithInt:", "value", "Ljava.lang.Double;", 0x1, NULL, NULL },
    { "compareTopWithInt:", "compareTop", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "values_", NULL, 0x12, "[D", NULL, NULL, .constantValue.asLong = 0 },
    { "docVals_", NULL, 0x2, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "bottom_", NULL, 0x2, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "fcontext_", NULL, 0x12, "Ljava.util.Map;", NULL, NULL, .constantValue.asLong = 0 },
    { "topValue_", NULL, 0x2, "D", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Double;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator = { 2, "ValueSourceComparator", "org.apache.lucene.queries.function", "ValueSource", 0x0, 9, methods, 6, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/search/SimpleFieldComparator<Ljava/lang/Double;>;" };
  return &_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator;
}

@end

void OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator *self, OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> fcontext, jint numHits) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSimpleFieldComparator_init(self);
  JreStrongAssign(&self->fcontext_, fcontext);
  JreStrongAssignAndConsume(&self->values_, [IOSDoubleArray newArrayWithLength:numHits]);
}

OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator *new_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_(OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> fcontext, jint numHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator, initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_, outer$, fcontext, numHits)
}

OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator *create_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_(OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> fcontext, jint numHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator, initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_, outer$, fcontext, numHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator)
