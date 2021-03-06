//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/ScaleFloatFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/ScaleFloatFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

@class OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo;

@interface OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction ()

- (OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *)createScaleInfoWithJavaUtilMap:(id<JavaUtilMap>)context
                                                                withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

@end

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_createScaleInfoWithJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *self, id<JavaUtilMap> context, OrgApacheLuceneIndexLeafReaderContext *readerContext);

@interface OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo : NSObject {
 @public
  jfloat minVal_;
  jfloat maxVal_;
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *self);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *new_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo)

@interface OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$vals_;
  jfloat val$minSource_;
  jfloat val$scale_;
  jfloat val$maxSource_;
}

- (jboolean)existsWithInt:(jint)doc;

- (jfloat)floatValWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *)outer$
                                   withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                                                          withFloat:(jfloat)capture$1
                                                                          withFloat:(jfloat)capture$2
                                                                          withFloat:(jfloat)capture$3
                                      withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1, this$0_, OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1, val$vals_, OrgApacheLuceneQueriesFunctionFunctionValues *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, jfloat capture$1, jfloat capture$2, jfloat capture$3, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, jfloat capture$1, jfloat capture$2, jfloat capture$3, OrgApacheLuceneQueriesFunctionValueSource *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 *create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, jfloat capture$1, jfloat capture$2, jfloat capture$3, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                        withFloat:(jfloat)min
                                                        withFloat:(jfloat)max {
  OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(self, source, min, max);
  return self;
}

- (NSString *)description__ {
  return JreStrcat("$$CFCFC", @"scale(", [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) description__], ',', min_, ',', max_, ')');
}

- (OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *)createScaleInfoWithJavaUtilMap:(id<JavaUtilMap>)context
                                                                withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_createScaleInfoWithJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(self, context, readerContext);
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *scaleInfo = (OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *) cast_chk([((id<JavaUtilMap>) nil_chk(context)) getWithId:self], [OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo class]);
  if (scaleInfo == nil) {
    scaleInfo = OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_createScaleInfoWithJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(self, context, readerContext);
  }
  jfloat scale_ = (((OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *) nil_chk(scaleInfo))->maxVal_ - scaleInfo->minVal_ == 0) ? 0 : (max_ - min_) / (scaleInfo->maxVal_ - scaleInfo->minVal_);
  jfloat minSource = scaleInfo->minVal_;
  jfloat maxSource = scaleInfo->maxVal_;
  OrgApacheLuceneQueriesFunctionFunctionValues *vals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  return create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(self, vals, minSource, scale_, maxSource, self);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSUInteger)hash {
  jint h = JavaLangFloat_floatToIntBitsWithFloat_(min_);
  h = h * 29;
  h += JavaLangFloat_floatToIntBitsWithFloat_(max_);
  h = h * 29;
  h += ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) hash]);
  return h;
}

- (jboolean)isEqual:(id)o {
  if (OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_class_() != (id) [nil_chk(o) getClass]) return false;
  OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction class]);
  return self->min_ == other->min_ && self->max_ == other->max_ && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) isEqual:other->source_];
}

- (void)dealloc {
  RELEASE_(source_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withFloat:withFloat:", "ScaleFloatFunction", NULL, 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "createScaleInfoWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "createScaleInfo", "Lorg.apache.lucene.queries.function.valuesource.ScaleFloatFunction$ScaleInfo;", 0x2, "Ljava.io.IOException;", NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:", "createWeight", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", NULL, 0x14, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "min_", NULL, 0x14, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "max_", NULL, 0x14, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queries.function.valuesource.ScaleFloatFunction$ScaleInfo;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction = { 2, "ScaleFloatFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 7, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->source_, source);
  self->min_ = min;
  self->max_ = max;
}

OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_, source, min, max)
}

OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat min, jfloat max) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction, initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_, source, min, max)
}

OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_createScaleInfoWithJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *self, id<JavaUtilMap> context, OrgApacheLuceneIndexLeafReaderContext *readerContext) {
  id<JavaUtilList> leaves = [((OrgApacheLuceneIndexIndexReaderContext *) nil_chk(OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(readerContext))) leaves];
  jfloat minVal = JavaLangFloat_POSITIVE_INFINITY;
  jfloat maxVal = JavaLangFloat_NEGATIVE_INFINITY;
  for (OrgApacheLuceneIndexLeafReaderContext * __strong leaf in nil_chk(leaves)) {
    jint maxDoc = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(leaf)) reader])) maxDoc];
    OrgApacheLuceneQueriesFunctionFunctionValues *vals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:leaf];
    for (jint i = 0; i < maxDoc; i++) {
      if (![((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) existsWithInt:i]) {
        continue;
      }
      jfloat val = [vals floatValWithInt:i];
      if ((JavaLangFloat_floatToRawIntBitsWithFloat_(val) & (JreLShift32((jint) 0xff, 23))) == JreLShift32((jint) 0xff, 23)) {
        continue;
      }
      if (val < minVal) {
        minVal = val;
      }
      if (val > maxVal) {
        maxVal = val;
      }
    }
  }
  if (minVal == JavaLangFloat_POSITIVE_INFINITY) {
    minVal = maxVal = 0;
  }
  OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *scaleInfo = create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init();
  scaleInfo->minVal_ = minVal;
  scaleInfo->maxVal_ = maxVal;
  [((id<JavaUtilMap>) nil_chk(context)) putWithId:self withId:scaleInfo];
  return scaleInfo;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ScaleInfo", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "minVal_", NULL, 0x0, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "maxVal_", NULL, 0x0, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo = { 2, "ScaleInfo", "org.apache.lucene.queries.function.valuesource", "ScaleFloatFunction", 0xa, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *new_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo, init)
}

OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo *create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_ScaleInfo)

@implementation OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1

- (jboolean)existsWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) existsWithInt:doc];
}

- (jfloat)floatValWithInt:(jint)doc {
  return ([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) floatValWithInt:doc] - val$minSource_) * val$scale_ + this$0_->min_;
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$$$F$F$F$FC", @"scale(", [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) toStringWithInt:doc], @",toMin=", this$0_->min_, @",toMax=", this$0_->max_, @",fromMin=", val$minSource_, @",fromMax=", val$maxSource_, ')');
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *)outer$
                                   withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                                                          withFloat:(jfloat)capture$1
                                                                          withFloat:(jfloat)capture$2
                                                                          withFloat:(jfloat)capture$3
                                      withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, capture$2, capture$3, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$vals_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "existsWithInt:", "exists", "Z", 0x1, NULL, NULL },
    { "floatValWithInt:", "floatVal", "F", 0x1, NULL, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction:withOrgApacheLuceneQueriesFunctionFunctionValues:withFloat:withFloat:withFloat:withOrgApacheLuceneQueriesFunctionValueSource:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.ScaleFloatFunction;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$vals_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$minSource_", NULL, 0x1012, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "val$scale_", NULL, 0x1012, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "val$maxSource_", NULL, 0x1012, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "ScaleFloatFunction", 0x8008, 4, methods, 5, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, jfloat capture$1, jfloat capture$2, jfloat capture$3, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$vals_, capture$0);
  self->val$minSource_ = capture$1;
  self->val$scale_ = capture$2;
  self->val$maxSource_ = capture$3;
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, arg$0);
}

OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, jfloat capture$1, jfloat capture$2, jfloat capture$3, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1, initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, capture$2, capture$3, arg$0)
}

OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1 *create_OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, jfloat capture$1, jfloat capture$2, jfloat capture$3, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1, initWithOrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withFloat_withFloat_withFloat_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, capture$2, capture$3, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceScaleFloatFunction_$1)
