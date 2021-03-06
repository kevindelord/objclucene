//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fr/FrenchAnalyzer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/RuntimeException.h"
#include "java/nio/charset/Charset.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/fr/FrenchAnalyzer.h"
#include "org/apache/lucene/analysis/fr/FrenchLightStemFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/snowball/SnowballFilter.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ElisionFilter.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneAnalysisFrFrenchAnalyzer () {
 @public
  /*!
   @brief Contains words that should be indexed but not stemmed.
   */
  OrgApacheLuceneAnalysisUtilCharArraySet *excltable_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisFrFrenchAnalyzer, excltable_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@interface OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_get_DEFAULT_STOP_SET();
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisFrFrenchAnalyzer)

NSString *OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_STOPWORD_FILE = @"french_stop.txt";
OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_ARTICLES;

@implementation OrgApacheLuceneAnalysisFrFrenchAnalyzer

+ (NSString *)DEFAULT_STOPWORD_FILE {
  return OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_STOPWORD_FILE;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)DEFAULT_ARTICLES {
  return OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_ARTICLES;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisFrFrenchAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisFrFrenchAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclutionSet {
  OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclutionSet);
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
  result = create_OrgApacheLuceneAnalysisUtilElisionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_ARTICLES);
  result = create_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_);
  if (![((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(excltable_)) isEmpty]) result = create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, excltable_);
  result = create_OrgApacheLuceneAnalysisFrFrenchLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result);
}

- (void)dealloc {
  RELEASE_(excltable_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisFrFrenchAnalyzer class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_ARTICLES, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"l", @"m", @"t", @"qu", @"n", @"s", @"j", @"d", @"c", @"jusqu", @"quoiqu", @"lorsqu", @"puisqu" } count:13 type:NSString_class_()]), true)));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisFrFrenchAnalyzer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "FrenchAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "FrenchAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:", "FrenchAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE", "DEFAULT_STOPWORD_FILE", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_STOPWORD_FILE, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_ARTICLES", "DEFAULT_ARTICLES", 0x19, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_ARTICLES, NULL, .constantValue.asLong = 0 },
    { "excltable_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.fr.FrenchAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFrFrenchAnalyzer = { 2, "FrenchAnalyzer", "org.apache.lucene.analysis.fr", NULL, 0x11, 5, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisFrFrenchAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisFrFrenchAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisFrFrenchAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET);
}

void OrgApacheLuceneAnalysisFrFrenchAnalyzer_init(OrgApacheLuceneAnalysisFrFrenchAnalyzer *self) {
  OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET));
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer *new_OrgApacheLuceneAnalysisFrFrenchAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer, init)
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer *create_OrgApacheLuceneAnalysisFrFrenchAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer, init)
}

void OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisFrFrenchAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET));
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer *new_OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer *create_OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

void OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisFrFrenchAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclutionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->excltable_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclutionSet)));
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer *new_OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclutionSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclutionSet)
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer *create_OrgApacheLuceneAnalysisFrFrenchAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclutionSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclutionSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFrFrenchAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(OrgApacheLuceneAnalysisSnowballSnowballFilter_class_(), OrgApacheLuceneAnalysisFrFrenchAnalyzer_DEFAULT_STOPWORD_FILE, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))));
      }
      @catch (JavaIoIOException *ex) {
        @throw create_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set");
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultSetHolder", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET", "DEFAULT_STOP_SET", 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.fr", "FrenchAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder, init)
}

OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFrFrenchAnalyzer_DefaultSetHolder)
