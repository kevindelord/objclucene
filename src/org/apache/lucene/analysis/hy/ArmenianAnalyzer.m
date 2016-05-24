//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hy/ArmenianAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/hy/ArmenianAnalyzer.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/snowball/SnowballFilter.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/util/Version.h"
#include "org/tartarus/snowball/ext/ArmenianStemmer.h"

@interface OrgApacheLuceneAnalysisHyArmenianAnalyzer () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHyArmenianAnalyzer, stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

/*!
 @brief Atomically loads the DEFAULT_STOP_SET in a lazy fashion once the outer class 
 accesses the static final set the first time
 .;
 */
@interface OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_get_DEFAULT_STOP_SET();
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisHyArmenianAnalyzer_DEFAULT_STOPWORD_FILE = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisHyArmenianAnalyzer

+ (NSString *)DEFAULT_STOPWORD_FILE {
  return OrgApacheLuceneAnalysisHyArmenianAnalyzer_DEFAULT_STOPWORD_FILE;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisHyArmenianAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisHyArmenianAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source;
  if ([((OrgApacheLuceneUtilVersion *) nil_chk([self getVersion])) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_7_0)]) {
    source = create_OrgApacheLuceneAnalysisStandardStandardTokenizer_init();
  }
  else {
    source = create_OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40_init();
  }
  OrgApacheLuceneAnalysisTokenStream *result = create_OrgApacheLuceneAnalysisStandardStandardFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source);
  result = create_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_);
  if (![((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(stemExclusionSet_)) isEmpty]) result = create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stemExclusionSet_);
  result = create_OrgApacheLuceneAnalysisSnowballSnowballFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgTartarusSnowballSnowballProgram_(result, create_OrgTartarusSnowballExtArmenianStemmer_init());
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result);
}

- (void)dealloc {
  RELEASE_(stemExclusionSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "ArmenianAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "ArmenianAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:", "ArmenianAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemExclusionSet_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_STOPWORD_FILE", "DEFAULT_STOPWORD_FILE", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisHyArmenianAnalyzer_DEFAULT_STOPWORD_FILE, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.hy.ArmenianAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisHyArmenianAnalyzer = { 2, "ArmenianAnalyzer", "org.apache.lucene.analysis.hy", NULL, 0x11, 5, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisHyArmenianAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisHyArmenianAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisHyArmenianAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET);
}

void OrgApacheLuceneAnalysisHyArmenianAnalyzer_init(OrgApacheLuceneAnalysisHyArmenianAnalyzer *self) {
  OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET));
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer *new_OrgApacheLuceneAnalysisHyArmenianAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer, init)
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer *create_OrgApacheLuceneAnalysisHyArmenianAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer, init)
}

void OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisHyArmenianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET));
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer *new_OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer *create_OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

void OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisHyArmenianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer *new_OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer *create_OrgApacheLuceneAnalysisHyArmenianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisHyArmenianAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(false, OrgApacheLuceneAnalysisHyArmenianAnalyzer_class_(), OrgApacheLuceneAnalysisHyArmenianAnalyzer_DEFAULT_STOPWORD_FILE, @"#"));
      }
      @catch (JavaIoIOException *ex) {
        @throw create_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set");
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultSetHolder", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET", "DEFAULT_STOP_SET", 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.hy", "ArmenianAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder, init)
}

OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisHyArmenianAnalyzer_DefaultSetHolder)