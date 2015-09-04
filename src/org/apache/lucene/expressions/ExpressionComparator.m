//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./expressions/src/java/org/apache/lucene/expressions/ExpressionComparator.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/expressions/ExpressionComparator.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/LeafFieldComparator.h"
#include "org/apache/lucene/search/Scorer.h"

@interface OrgApacheLuceneExpressionsExpressionComparator () {
 @public
  IOSDoubleArray *values_;
  jdouble bottom_;
  jdouble topValue_;
  OrgApacheLuceneQueriesFunctionValueSource *source_;
  OrgApacheLuceneQueriesFunctionFunctionValues *scores_;
  OrgApacheLuceneIndexLeafReaderContext *readerContext_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneExpressionsExpressionComparator, values_, IOSDoubleArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneExpressionsExpressionComparator, source_, OrgApacheLuceneQueriesFunctionValueSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneExpressionsExpressionComparator, scores_, OrgApacheLuceneQueriesFunctionFunctionValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneExpressionsExpressionComparator, readerContext_, OrgApacheLuceneIndexLeafReaderContext *)

@implementation OrgApacheLuceneExpressionsExpressionComparator

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                          withInt:(jint)numHits {
  OrgApacheLuceneExpressionsExpressionComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withInt_(self, source, numHits);
  return self;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  JreAssert((readerContext_ != nil), (@"org/apache/lucene/expressions/ExpressionComparator.java:49 condition failed: assert readerContext != null;"));
  @try {
    id<JavaUtilMap> context = [new_JavaUtilHashMap_init() autorelease];
    JreAssert((scorer != nil), (@"org/apache/lucene/expressions/ExpressionComparator.java:52 condition failed: assert scorer != null;"));
    [context putWithId:@"scorer" withId:scorer];
    JreStrongAssign(&scores_, [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext_]);
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2 {
  return JavaLangDouble_compareWithDouble_withDouble_(IOSDoubleArray_Get(nil_chk(values_), slot1), IOSDoubleArray_Get(values_, slot2));
}

- (void)setBottomWithInt:(jint)slot {
  bottom_ = IOSDoubleArray_Get(nil_chk(values_), slot);
}

- (void)setTopValueWithId:(JavaLangDouble *)value {
  topValue_ = [((JavaLangDouble *) nil_chk(value)) doubleValue];
}

- (jint)compareBottomWithInt:(jint)doc {
  return JavaLangDouble_compareWithDouble_withDouble_(bottom_, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(scores_)) doubleValWithInt:doc]);
}

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc {
  *IOSDoubleArray_GetRef(nil_chk(values_), slot) = [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(scores_)) doubleValWithInt:doc];
}

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  JreStrongAssign(&self->readerContext_, context);
  return self;
}

- (JavaLangDouble *)valueWithInt:(jint)slot {
  return JavaLangDouble_valueOfWithDouble_(IOSDoubleArray_Get(nil_chk(values_), slot));
}

- (jint)compareTopWithInt:(jint)doc {
  return JavaLangDouble_compareWithDouble_withDouble_(topValue_, [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(scores_)) doubleValWithInt:doc]);
}

- (void)dealloc {
  RELEASE_(values_);
  RELEASE_(source_);
  RELEASE_(scores_);
  RELEASE_(readerContext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withInt:", "ExpressionComparator", NULL, 0x1, NULL, NULL },
    { "setScorerWithOrgApacheLuceneSearchScorer:", "setScorer", "V", 0x1, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x1, NULL, NULL },
    { "setBottomWithInt:", "setBottom", "V", 0x1, NULL, NULL },
    { "setTopValueWithId:", "setTopValue", "V", 0x1, NULL, NULL },
    { "compareBottomWithInt:", "compareBottom", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "copy__WithInt:withInt:", "copy", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:", "getLeafComparator", "Lorg.apache.lucene.search.LeafFieldComparator;", 0x1, "Ljava.io.IOException;", NULL },
    { "valueWithInt:", "value", "Ljava.lang.Double;", 0x1, NULL, NULL },
    { "compareTopWithInt:", "compareTop", "I", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "values_", NULL, 0x12, "[D", NULL, NULL, .constantValue.asLong = 0 },
    { "bottom_", NULL, 0x2, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "topValue_", NULL, 0x2, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "source_", NULL, 0x2, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "scores_", NULL, 0x2, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "readerContext_", NULL, 0x2, "Lorg.apache.lucene.index.LeafReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Double;"};
  static const J2ObjcClassInfo _OrgApacheLuceneExpressionsExpressionComparator = { 2, "ExpressionComparator", "org.apache.lucene.expressions", NULL, 0x0, 10, methods, 6, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/search/FieldComparator<Ljava/lang/Double;>;Lorg/apache/lucene/search/LeafFieldComparator;" };
  return &_OrgApacheLuceneExpressionsExpressionComparator;
}

@end

void OrgApacheLuceneExpressionsExpressionComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withInt_(OrgApacheLuceneExpressionsExpressionComparator *self, OrgApacheLuceneQueriesFunctionValueSource *source, jint numHits) {
  OrgApacheLuceneSearchFieldComparator_init(self);
  JreStrongAssignAndConsume(&self->values_, [IOSDoubleArray newArrayWithLength:numHits]);
  JreStrongAssign(&self->source_, source);
}

OrgApacheLuceneExpressionsExpressionComparator *new_OrgApacheLuceneExpressionsExpressionComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withInt_(OrgApacheLuceneQueriesFunctionValueSource *source, jint numHits) {
  OrgApacheLuceneExpressionsExpressionComparator *self = [OrgApacheLuceneExpressionsExpressionComparator alloc];
  OrgApacheLuceneExpressionsExpressionComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withInt_(self, source, numHits);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneExpressionsExpressionComparator)