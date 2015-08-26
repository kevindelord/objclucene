//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/docvalues/FloatDocValues.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueFloat.h"

@interface OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 : OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller {
 @public
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *this$0_;
  OrgApacheLuceneUtilMutableMutableValueFloat *mval_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)getValue;

- (void)fillValueWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues:(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1, this$0_, OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1, mval_, OrgApacheLuceneUtilMutableMutableValueFloat *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1_initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 *self, OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *outer$);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 *new_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1_initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1)

@implementation OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
  return self;
}

- (jbyte)byteValWithInt:(jint)doc {
  return (jbyte) JreFpToInt([self floatValWithInt:doc]);
}

- (jshort)shortValWithInt:(jint)doc {
  return (jshort) JreFpToInt([self floatValWithInt:doc]);
}

- (jfloat)floatValWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)intValWithInt:(jint)doc {
  return JreFpToInt([self floatValWithInt:doc]);
}

- (jlong)longValWithInt:(jint)doc {
  return JreFpToLong([self floatValWithInt:doc]);
}

- (jdouble)doubleValWithInt:(jint)doc {
  return (jdouble) [self floatValWithInt:doc];
}

- (NSString *)strValWithInt:(jint)doc {
  return JavaLangFloat_toStringWithFloat_([self floatValWithInt:doc]);
}

- (id)objectValWithInt:(jint)doc {
  return [self existsWithInt:doc] ? JavaLangFloat_valueOfWithFloat_([self floatValWithInt:doc]) : nil;
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$C$", [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(vs_)) description__], '=', [self strValWithInt:doc]);
}

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller {
  return [new_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1_initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_(self) autorelease];
}

- (void)dealloc {
  RELEASE_(vs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:", "FloatDocValues", NULL, 0x1, NULL, NULL },
    { "byteValWithInt:", "byteVal", "B", 0x1, NULL, NULL },
    { "shortValWithInt:", "shortVal", "S", 0x1, NULL, NULL },
    { "floatValWithInt:", "floatVal", "F", 0x401, NULL, NULL },
    { "intValWithInt:", "intVal", "I", 0x1, NULL, NULL },
    { "longValWithInt:", "longVal", "J", 0x1, NULL, NULL },
    { "doubleValWithInt:", "doubleVal", "D", 0x1, NULL, NULL },
    { "strValWithInt:", "strVal", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "objectValWithInt:", "objectVal", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValueFiller", NULL, "Lorg.apache.lucene.queries.function.FunctionValues$ValueFiller;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "vs_", NULL, 0x14, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues = { 2, "FloatDocValues", "org.apache.lucene.queries.function.docvalues", NULL, 0x401, 11, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues;
}

@end

void OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *self, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  OrgApacheLuceneQueriesFunctionFunctionValues_init(self);
  JreStrongAssign(&self->vs_, vs);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues)

@implementation OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1

- (OrgApacheLuceneUtilMutableMutableValue *)getValue {
  return mval_;
}

- (void)fillValueWithInt:(jint)doc {
  ((OrgApacheLuceneUtilMutableMutableValueFloat *) nil_chk(mval_))->value_ = [this$0_ floatValWithInt:doc];
  mval_->exists_ = [this$0_ existsWithInt:doc];
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues:(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *)outer$ {
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1_initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(mval_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "Lorg.apache.lucene.util.mutable.MutableValue;", 0x1, NULL, NULL },
    { "fillValueWithInt:", "fillValue", "V", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.docvalues.FloatDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "mval_", NULL, 0x12, "Lorg.apache.lucene.util.mutable.MutableValueFloat;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues", "getValueFiller" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 = { 2, "", "org.apache.lucene.queries.function.docvalues", "FloatDocValues", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1;
}

@end

void OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1_initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 *self, OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_init(self);
  JreStrongAssignAndConsume(&self->mval_, new_OrgApacheLuceneUtilMutableMutableValueFloat_init());
}

OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 *new_OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1_initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues *outer$) {
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 *self = [OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1 alloc];
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1_initWithOrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_$1)