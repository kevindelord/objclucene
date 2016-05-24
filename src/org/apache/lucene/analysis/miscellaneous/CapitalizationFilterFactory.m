//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/CapitalizationFilterFactory.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/CapitalizationFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/CapitalizationFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP = @"keep";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_IGNORE_CASE = @"keepIgnoreCase";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_OK_PREFIX = @"okPrefix";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MIN_WORD_LENGTH = @"minWordLength";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_WORD_COUNT = @"maxWordCount";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_TOKEN_LENGTH = @"maxTokenLength";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_ONLY_FIRST_WORD = @"onlyFirstWord";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_FORCE_FIRST_LETTER = @"forceFirstLetter";

@implementation OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory

+ (NSString *)KEEP {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP;
}

+ (NSString *)KEEP_IGNORE_CASE {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_IGNORE_CASE;
}

+ (NSString *)OK_PREFIX {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_OK_PREFIX;
}

+ (NSString *)MIN_WORD_LENGTH {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MIN_WORD_LENGTH;
}

+ (NSString *)MAX_WORD_COUNT {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_WORD_COUNT;
}

+ (NSString *)MAX_TOKEN_LENGTH {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_TOKEN_LENGTH;
}

+ (NSString *)ONLY_FIRST_WORD {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_ONLY_FIRST_WORD;
}

+ (NSString *)FORCE_FIRST_LETTER {
  return OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_FORCE_FIRST_LETTER;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_withJavaUtilCollection_withInt_withInt_withInt_(input, onlyFirstWord_, keep_, forceFirstLetter_, okPrefix_, minWordLength_, maxWordCount_, maxTokenLength_);
}

- (void)dealloc {
  RELEASE_(keep_);
  RELEASE_(okPrefix_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "CapitalizationFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.miscellaneous.CapitalizationFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "KEEP", "KEEP", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP, NULL, .constantValue.asLong = 0 },
    { "KEEP_IGNORE_CASE", "KEEP_IGNORE_CASE", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_IGNORE_CASE, NULL, .constantValue.asLong = 0 },
    { "OK_PREFIX", "OK_PREFIX", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_OK_PREFIX, NULL, .constantValue.asLong = 0 },
    { "MIN_WORD_LENGTH", "MIN_WORD_LENGTH", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MIN_WORD_LENGTH, NULL, .constantValue.asLong = 0 },
    { "MAX_WORD_COUNT", "MAX_WORD_COUNT", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_WORD_COUNT, NULL, .constantValue.asLong = 0 },
    { "MAX_TOKEN_LENGTH", "MAX_TOKEN_LENGTH", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_TOKEN_LENGTH, NULL, .constantValue.asLong = 0 },
    { "ONLY_FIRST_WORD", "ONLY_FIRST_WORD", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_ONLY_FIRST_WORD, NULL, .constantValue.asLong = 0 },
    { "FORCE_FIRST_LETTER", "FORCE_FIRST_LETTER", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_FORCE_FIRST_LETTER, NULL, .constantValue.asLong = 0 },
    { "keep_", NULL, 0x0, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "okPrefix_", NULL, 0x0, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<[LC;>;", .constantValue.asLong = 0 },
    { "minWordLength_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxWordCount_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxTokenLength_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "onlyFirstWord_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "forceFirstLetter_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory = { 2, "CapitalizationFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 2, methods, 15, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->okPrefix_, JavaUtilCollections_emptyList());
  jboolean ignoreCase = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_IGNORE_CASE withBoolean:false];
  id<JavaUtilSet> k = [self getSetWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP];
  if (k != nil) {
    JreStrongAssignAndConsume(&self->keep_, new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(10, ignoreCase));
    [self->keep_ addAllWithJavaUtilCollection:k];
  }
  k = [self getSetWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_OK_PREFIX];
  if (k != nil) {
    JreStrongAssignAndConsume(&self->okPrefix_, new_JavaUtilArrayList_init());
    for (NSString * __strong item in k) {
      [((id<JavaUtilCollection>) nil_chk(self->okPrefix_)) addWithId:[((NSString *) nil_chk(item)) toCharArray]];
    }
  }
  self->minWordLength_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MIN_WORD_LENGTH withInt:0];
  self->maxWordCount_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_WORD_COUNT withInt:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_WORD_COUNT];
  self->maxTokenLength_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_TOKEN_LENGTH withInt:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_TOKEN_LENGTH];
  self->onlyFirstWord_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_ONLY_FIRST_WORD withBoolean:true];
  self->forceFirstLetter_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_FORCE_FIRST_LETTER withBoolean:true];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory)