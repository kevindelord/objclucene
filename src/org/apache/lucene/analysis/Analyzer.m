//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/Analyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/ReusableStringReader.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/util/CloseableThreadLocal.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisAnalyzer () {
 @public
  OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *reuseStrategy_;
  OrgApacheLuceneUtilVersion *version__;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisAnalyzer, reuseStrategy_, OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisAnalyzer, version__, OrgApacheLuceneUtilVersion *)

__attribute__((unused)) static id OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_getStoredValueWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

__attribute__((unused)) static void OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_setStoredValueWithOrgApacheLuceneAnalysisAnalyzer_withId_(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, id storedValue);

@interface OrgApacheLuceneAnalysisAnalyzer_$1 : OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                                                                       withNSString:(NSString *)fieldName;

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
       withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisAnalyzer_$1)

__attribute__((unused)) static void OrgApacheLuceneAnalysisAnalyzer_$1_init(OrgApacheLuceneAnalysisAnalyzer_$1 *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisAnalyzer_$1 *new_OrgApacheLuceneAnalysisAnalyzer_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisAnalyzer_$1)

@interface OrgApacheLuceneAnalysisAnalyzer_$2 : OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                                                                       withNSString:(NSString *)fieldName;

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
       withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisAnalyzer_$2)

__attribute__((unused)) static void OrgApacheLuceneAnalysisAnalyzer_$2_init(OrgApacheLuceneAnalysisAnalyzer_$2 *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisAnalyzer_$2 *new_OrgApacheLuceneAnalysisAnalyzer_$2_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisAnalyzer_$2)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisAnalyzer)

OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *OrgApacheLuceneAnalysisAnalyzer_GLOBAL_REUSE_STRATEGY_;
OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *OrgApacheLuceneAnalysisAnalyzer_PER_FIELD_REUSE_STRATEGY_;

@implementation OrgApacheLuceneAnalysisAnalyzer

- (instancetype)init {
  OrgApacheLuceneAnalysisAnalyzer_init(self);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy:(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)reuseStrategy {
  OrgApacheLuceneAnalysisAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(self, reuseStrategy);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithNSString:(NSString *)fieldName
                                               withJavaIoReader:(JavaIoReader *)reader {
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *components = [((OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *) nil_chk(reuseStrategy_)) getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:fieldName];
  JavaIoReader *r = [self initReaderWithNSString:fieldName withJavaIoReader:reader];
  if (components == nil) {
    components = [self createComponentsWithNSString:fieldName];
    [reuseStrategy_ setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:fieldName withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:components];
  }
  [((OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *) nil_chk(components)) setReaderWithJavaIoReader:r];
  return [components getTokenStream];
}

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithNSString:(NSString *)fieldName
                                                   withNSString:(NSString *)text {
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *components = [((OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *) nil_chk(reuseStrategy_)) getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:fieldName];
  OrgApacheLuceneAnalysisReusableStringReader *strReader = (components == nil || components->reusableStringReader_ == nil) ? [new_OrgApacheLuceneAnalysisReusableStringReader_init() autorelease] : components->reusableStringReader_;
  [strReader setValueWithNSString:text];
  JavaIoReader *r = [self initReaderWithNSString:fieldName withJavaIoReader:strReader];
  if (components == nil) {
    components = [self createComponentsWithNSString:fieldName];
    [reuseStrategy_ setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:fieldName withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:components];
  }
  [((OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *) nil_chk(components)) setReaderWithJavaIoReader:r];
  JreStrongAssign(&components->reusableStringReader_, strReader);
  return [components getTokenStream];
}

- (JavaIoReader *)initReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader {
  return reader;
}

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName {
  return 0;
}

- (jint)getOffsetGapWithNSString:(NSString *)fieldName {
  return 1;
}

- (OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)getReuseStrategy {
  return reuseStrategy_;
}

- (void)setVersionWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)v {
  JreStrongAssign(&version__, v);
}

- (OrgApacheLuceneUtilVersion *)getVersion {
  return version__;
}

- (void)close {
  if (storedValue_ != nil) {
    [storedValue_ close];
    JreStrongAssign(&storedValue_, nil);
  }
}

- (void)dealloc {
  RELEASE_(reuseStrategy_);
  RELEASE_(version__);
  RELEASE_(storedValue_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisAnalyzer class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisAnalyzer_GLOBAL_REUSE_STRATEGY_, new_OrgApacheLuceneAnalysisAnalyzer_$1_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisAnalyzer_PER_FIELD_REUSE_STRATEGY_, new_OrgApacheLuceneAnalysisAnalyzer_$2_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisAnalyzer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Analyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy:", "Analyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x404, NULL, NULL },
    { "tokenStreamWithNSString:withJavaIoReader:", "tokenStream", "Lorg.apache.lucene.analysis.TokenStream;", 0x11, "Ljava.io.IOException;", NULL },
    { "tokenStreamWithNSString:withNSString:", "tokenStream", "Lorg.apache.lucene.analysis.TokenStream;", 0x11, "Ljava.io.IOException;", NULL },
    { "initReaderWithNSString:withJavaIoReader:", "initReader", "Ljava.io.Reader;", 0x4, NULL, NULL },
    { "getPositionIncrementGapWithNSString:", "getPositionIncrementGap", "I", 0x1, NULL, NULL },
    { "getOffsetGapWithNSString:", "getOffsetGap", "I", 0x1, NULL, NULL },
    { "getReuseStrategy", NULL, "Lorg.apache.lucene.analysis.Analyzer$ReuseStrategy;", 0x11, NULL, NULL },
    { "setVersionWithOrgApacheLuceneUtilVersion:", "setVersion", "V", 0x1, NULL, NULL },
    { "getVersion", NULL, "Lorg.apache.lucene.util.Version;", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reuseStrategy_", NULL, 0x12, "Lorg.apache.lucene.analysis.Analyzer$ReuseStrategy;", NULL, NULL, .constantValue.asLong = 0 },
    { "version__", "version", 0x2, "Lorg.apache.lucene.util.Version;", NULL, NULL, .constantValue.asLong = 0 },
    { "storedValue_", NULL, 0x0, "Lorg.apache.lucene.util.CloseableThreadLocal;", NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/lang/Object;>;", .constantValue.asLong = 0 },
    { "GLOBAL_REUSE_STRATEGY_", NULL, 0x19, "Lorg.apache.lucene.analysis.Analyzer$ReuseStrategy;", &OrgApacheLuceneAnalysisAnalyzer_GLOBAL_REUSE_STRATEGY_, NULL, .constantValue.asLong = 0 },
    { "PER_FIELD_REUSE_STRATEGY_", NULL, 0x19, "Lorg.apache.lucene.analysis.Analyzer$ReuseStrategy;", &OrgApacheLuceneAnalysisAnalyzer_PER_FIELD_REUSE_STRATEGY_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", "Lorg.apache.lucene.analysis.Analyzer$ReuseStrategy;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisAnalyzer = { 2, "Analyzer", "org.apache.lucene.analysis", NULL, 0x401, 12, methods, 5, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisAnalyzer;
}

@end

void OrgApacheLuceneAnalysisAnalyzer_init(OrgApacheLuceneAnalysisAnalyzer *self) {
  OrgApacheLuceneAnalysisAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(self, OrgApacheLuceneAnalysisAnalyzer_GLOBAL_REUSE_STRATEGY_);
}

void OrgApacheLuceneAnalysisAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(OrgApacheLuceneAnalysisAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *reuseStrategy) {
  NSObject_init(self);
  JreStrongAssign(&self->version__, JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST_));
  JreStrongAssignAndConsume(&self->storedValue_, new_OrgApacheLuceneUtilCloseableThreadLocal_init());
  JreStrongAssign(&self->reuseStrategy_, reuseStrategy);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisAnalyzer)

@implementation OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents

- (instancetype)initWithOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source
                  withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)result {
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, source, result);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source {
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(self, source);
  return self;
}

- (void)setReaderWithJavaIoReader:(JavaIoReader *)reader {
  [((OrgApacheLuceneAnalysisTokenizer *) nil_chk(source_)) setReaderWithJavaIoReader:reader];
}

- (OrgApacheLuceneAnalysisTokenStream *)getTokenStream {
  return sink_;
}

- (OrgApacheLuceneAnalysisTokenizer *)getTokenizer {
  return source_;
}

- (void)dealloc {
  RELEASE_(source_);
  RELEASE_(sink_);
  RELEASE_(reusableStringReader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenizer:withOrgApacheLuceneAnalysisTokenStream:", "TokenStreamComponents", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenizer:", "TokenStreamComponents", NULL, 0x1, NULL, NULL },
    { "setReaderWithJavaIoReader:", "setReader", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "getTokenStream", NULL, "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
    { "getTokenizer", NULL, "Lorg.apache.lucene.analysis.Tokenizer;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", NULL, 0x14, "Lorg.apache.lucene.analysis.Tokenizer;", NULL, NULL, .constantValue.asLong = 0 },
    { "sink_", NULL, 0x14, "Lorg.apache.lucene.analysis.TokenStream;", NULL, NULL, .constantValue.asLong = 0 },
    { "reusableStringReader_", NULL, 0x80, "Lorg.apache.lucene.analysis.ReusableStringReader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents = { 2, "TokenStreamComponents", "org.apache.lucene.analysis", "Analyzer", 0x9, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
}

@end

void OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *self, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  NSObject_init(self);
  JreStrongAssign(&self->source_, source);
  JreStrongAssign(&self->sink_, result);
}

OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *self = [OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents alloc];
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, source, result);
  return self;
}

void OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *self, OrgApacheLuceneAnalysisTokenizer *source) {
  NSObject_init(self);
  JreStrongAssign(&self->source_, source);
  JreStrongAssign(&self->sink_, source);
}

OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(OrgApacheLuceneAnalysisTokenizer *source) {
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *self = [OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents alloc];
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(self, source);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)

@implementation OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy

- (instancetype)init {
  OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_init(self);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                                                                       withNSString:(NSString *)fieldName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
       withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)getStoredValueWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_getStoredValueWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
}

- (void)setStoredValueWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                   withId:(id)storedValue {
  OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_setStoredValueWithOrgApacheLuceneAnalysisAnalyzer_withId_(self, analyzer, storedValue);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ReuseStrategy", NULL, 0x1, NULL, NULL },
    { "getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:withNSString:", "getReusableComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x401, NULL, NULL },
    { "setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:withNSString:withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:", "setReusableComponents", "V", 0x401, NULL, NULL },
    { "getStoredValueWithOrgApacheLuceneAnalysisAnalyzer:", "getStoredValue", "Ljava.lang.Object;", 0x14, NULL, NULL },
    { "setStoredValueWithOrgApacheLuceneAnalysisAnalyzer:withId:", "setStoredValue", "V", 0x14, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy = { 2, "ReuseStrategy", "org.apache.lucene.analysis", "Analyzer", 0x409, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy;
}

@end

void OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_init(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *self) {
  NSObject_init(self);
}

id OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_getStoredValueWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  if (((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer))->storedValue_ == nil) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Analyzer is closed") autorelease];
  }
  return [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(analyzer->storedValue_)) get];
}

void OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_setStoredValueWithOrgApacheLuceneAnalysisAnalyzer_withId_(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, id storedValue) {
  if (((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer))->storedValue_ == nil) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Analyzer is closed") autorelease];
  }
  [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(analyzer->storedValue_)) setWithId:storedValue];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy)

@implementation OrgApacheLuceneAnalysisAnalyzer_$1

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                                                                       withNSString:(NSString *)fieldName {
  return (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *) check_class_cast(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_getStoredValueWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer), [OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents class]);
}

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
       withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components {
  OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_setStoredValueWithOrgApacheLuceneAnalysisAnalyzer_withId_(self, analyzer, components);
}

- (instancetype)init {
  OrgApacheLuceneAnalysisAnalyzer_$1_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:withNSString:", "getReusableComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x1, NULL, NULL },
    { "setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:withNSString:withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:", "setReusableComponents", "V", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisAnalyzer_$1 = { 2, "", "org.apache.lucene.analysis", "Analyzer", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisAnalyzer_$1;
}

@end

void OrgApacheLuceneAnalysisAnalyzer_$1_init(OrgApacheLuceneAnalysisAnalyzer_$1 *self) {
  OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_init(self);
}

OrgApacheLuceneAnalysisAnalyzer_$1 *new_OrgApacheLuceneAnalysisAnalyzer_$1_init() {
  OrgApacheLuceneAnalysisAnalyzer_$1 *self = [OrgApacheLuceneAnalysisAnalyzer_$1 alloc];
  OrgApacheLuceneAnalysisAnalyzer_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisAnalyzer_$1)

@implementation OrgApacheLuceneAnalysisAnalyzer_$2

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                                                                       withNSString:(NSString *)fieldName {
  id<JavaUtilMap> componentsPerField = (id<JavaUtilMap>) check_protocol_cast(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_getStoredValueWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer), JavaUtilMap_class_());
  return componentsPerField != nil ? [componentsPerField getWithId:fieldName] : nil;
}

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                    withNSString:(NSString *)fieldName
       withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components {
  id<JavaUtilMap> componentsPerField = (id<JavaUtilMap>) check_protocol_cast(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_getStoredValueWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer), JavaUtilMap_class_());
  if (componentsPerField == nil) {
    componentsPerField = [new_JavaUtilHashMap_init() autorelease];
    OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_setStoredValueWithOrgApacheLuceneAnalysisAnalyzer_withId_(self, analyzer, componentsPerField);
  }
  [((id<JavaUtilMap>) nil_chk(componentsPerField)) putWithId:fieldName withId:components];
}

- (instancetype)init {
  OrgApacheLuceneAnalysisAnalyzer_$2_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:withNSString:", "getReusableComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x1, NULL, NULL },
    { "setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:withNSString:withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:", "setReusableComponents", "V", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisAnalyzer_$2 = { 2, "", "org.apache.lucene.analysis", "Analyzer", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisAnalyzer_$2;
}

@end

void OrgApacheLuceneAnalysisAnalyzer_$2_init(OrgApacheLuceneAnalysisAnalyzer_$2 *self) {
  OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_init(self);
}

OrgApacheLuceneAnalysisAnalyzer_$2 *new_OrgApacheLuceneAnalysisAnalyzer_$2_init() {
  OrgApacheLuceneAnalysisAnalyzer_$2 *self = [OrgApacheLuceneAnalysisAnalyzer_$2 alloc];
  OrgApacheLuceneAnalysisAnalyzer_$2_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisAnalyzer_$2)