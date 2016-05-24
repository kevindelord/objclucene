//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ga/IrishAnalyzer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/ga/IrishAnalyzer.h"
#include "org/apache/lucene/analysis/ga/IrishLowerCaseFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/snowball/SnowballFilter.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ElisionFilter.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/util/Version.h"
#include "org/tartarus/snowball/ext/IrishStemmer.h"

@interface OrgApacheLuceneAnalysisGaIrishAnalyzer () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisGaIrishAnalyzer, stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_get_DEFAULT_ARTICLES();
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_ARTICLES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisGaIrishAnalyzer, DEFAULT_ARTICLES, OrgApacheLuceneAnalysisUtilCharArraySet *)

/*!
 @brief When StandardTokenizer splits t‑athair into {t, athair}, we don't
 want to cause a position increment, otherwise there will be problems
 with phrase queries versus tAthair (which would not have a gap).
 */
inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_get_HYPHENATIONS();
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_HYPHENATIONS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisGaIrishAnalyzer, HYPHENATIONS, OrgApacheLuceneAnalysisUtilCharArraySet *)

/*!
 @brief Atomically loads the DEFAULT_STOP_SET in a lazy fashion once the outer class 
 accesses the static final set the first time
 .;
 */
@interface OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder)

inline OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_get_DEFAULT_STOP_SET();
static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisGaIrishAnalyzer)

NSString *OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_STOPWORD_FILE = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisGaIrishAnalyzer

+ (NSString *)DEFAULT_STOPWORD_FILE {
  return OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_STOPWORD_FILE;
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisGaIrishAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisGaIrishAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
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
  result = create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, OrgApacheLuceneAnalysisGaIrishAnalyzer_HYPHENATIONS);
  result = create_OrgApacheLuceneAnalysisUtilElisionFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_ARTICLES);
  result = create_OrgApacheLuceneAnalysisGaIrishLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result);
  result = create_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_);
  if (![((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(stemExclusionSet_)) isEmpty]) result = create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stemExclusionSet_);
  result = create_OrgApacheLuceneAnalysisSnowballSnowballFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgTartarusSnowballSnowballProgram_(result, create_OrgTartarusSnowballExtIrishStemmer_init());
  return create_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result);
}

- (void)dealloc {
  RELEASE_(stemExclusionSet_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisGaIrishAnalyzer class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_ARTICLES, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"d", @"m", @"b" } count:3 type:NSString_class_()]), true)));
    JreStrongAssign(&OrgApacheLuceneAnalysisGaIrishAnalyzer_HYPHENATIONS, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"h", @"n", @"t" } count:3 type:NSString_class_()]), true)));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisGaIrishAnalyzer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "IrishAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "IrishAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:", "IrishAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemExclusionSet_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_STOPWORD_FILE", "DEFAULT_STOPWORD_FILE", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_STOPWORD_FILE, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_ARTICLES", "DEFAULT_ARTICLES", 0x1a, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_ARTICLES, NULL, .constantValue.asLong = 0 },
    { "HYPHENATIONS", "HYPHENATIONS", 0x1a, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisGaIrishAnalyzer_HYPHENATIONS, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.ga.IrishAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisGaIrishAnalyzer = { 2, "IrishAnalyzer", "org.apache.lucene.analysis.ga", NULL, 0x11, 5, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisGaIrishAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisGaIrishAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET);
}

void OrgApacheLuceneAnalysisGaIrishAnalyzer_init(OrgApacheLuceneAnalysisGaIrishAnalyzer *self) {
  OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET));
}

OrgApacheLuceneAnalysisGaIrishAnalyzer *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer, init)
}

OrgApacheLuceneAnalysisGaIrishAnalyzer *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer, init)
}

void OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisGaIrishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET));
}

OrgApacheLuceneAnalysisGaIrishAnalyzer *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

OrgApacheLuceneAnalysisGaIrishAnalyzer *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords)
}

void OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisGaIrishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisGaIrishAnalyzer *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

OrgApacheLuceneAnalysisGaIrishAnalyzer *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer, initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_, stopwords, stemExclusionSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisGaIrishAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(false, OrgApacheLuceneAnalysisGaIrishAnalyzer_class_(), OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_STOPWORD_FILE, @"#"));
      }
      @catch (JavaIoIOException *ex) {
        @throw create_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set");
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultSetHolder", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET", "DEFAULT_STOP_SET", 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.ga", "IrishAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder, init)
}

OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisGaIrishAnalyzer_DefaultSetHolder)