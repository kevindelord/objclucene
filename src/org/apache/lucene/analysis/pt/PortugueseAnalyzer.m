//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/RuntimeException.h"
#include "java/nio/charset/Charset.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/pt/PortugueseAnalyzer.h"
#include "org/apache/lucene/analysis/pt/PortugueseLightStemFilter.h"
#include "org/apache/lucene/analysis/snowball/SnowballFilter.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneAnalysisPtPortugueseAnalyzer () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

/*!
 @brief Atomically loads the DEFAULT_STOP_SET in a lazy fashion once the outer class 
 accesses the static final set the first time
 .;
 */
@interface OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_get_DEFAULT_STOP_SET();
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DEFAULT_STOPWORD_FILE = @"portuguese_stop.txt";

@implementation OrgApacheLuceneAnalysisPtPortugueseAnalyzer

+ (NSString *)DEFAULT_STOPWORD_FILE {
  return OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DEFAULT_STOPWORD_FILE;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisPtPortugueseAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
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
  result = create_OrgApacheLuceneAnalysisPtPortugueseLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result);
}

- (void)dealloc {
  RELEASE_(stemExclusionSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "PortugueseAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "PortugueseAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:", "PortugueseAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemExclusionSet_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_STOPWORD_FILE", "DEFAULT_STOPWORD_FILE", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DEFAULT_STOPWORD_FILE, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.pt.PortugueseAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPtPortugueseAnalyzer = { 2, "PortugueseAnalyzer", "org.apache.lucene.analysis.pt", NULL, 0x11, 5, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPtPortugueseAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisPtPortugueseAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET);
}

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init(OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self) {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET));
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, init)
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *create_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, init)
}

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET));
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *create_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisPtPortugueseAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer *create_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPtPortugueseAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(OrgApacheLuceneAnalysisSnowballSnowballFilter_class_(), OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DEFAULT_STOPWORD_FILE, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))));
      }
      @catch (JavaIoIOException *ex) {
        @throw create_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set");
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultSetHolder", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET", "DEFAULT_STOP_SET", 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.pt", "PortugueseAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, init)
}

OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPtPortugueseAnalyzer_DefaultSetHolder)
