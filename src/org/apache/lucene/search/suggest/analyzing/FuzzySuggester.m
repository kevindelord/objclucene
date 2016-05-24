//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/analyzing/FuzzySuggester.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStreamToAutomaton.h"
#include "org/apache/lucene/search/suggest/analyzing/AnalyzingSuggester.h"
#include "org/apache/lucene/search/suggest/analyzing/FSTUtil.h"
#include "org/apache/lucene/search/suggest/analyzing/FuzzySuggester.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/UnicodeUtil.h"
#include "org/apache/lucene/util/automaton/Automata.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/FiniteStringsIterator.h"
#include "org/apache/lucene/util/automaton/LevenshteinAutomata.h"
#include "org/apache/lucene/util/automaton/Operations.h"
#include "org/apache/lucene/util/automaton/UTF32ToUTF8.h"
#include "org/apache/lucene/util/fst/FST.h"

@interface OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester () {
 @public
  jint maxEdits_;
  jboolean transpositions_;
  jint nonFuzzyPrefix_;
  jint minFuzzyLength_;
  jboolean unicodeAware_;
}

@end

@implementation OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester

+ (jboolean)DEFAULT_UNICODE_AWARE {
  return OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_UNICODE_AWARE;
}

+ (jint)DEFAULT_MIN_FUZZY_LENGTH {
  return OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_MIN_FUZZY_LENGTH;
}

+ (jint)DEFAULT_NON_FUZZY_PREFIX {
  return OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_NON_FUZZY_PREFIX;
}

+ (jint)DEFAULT_MAX_EDITS {
  return OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_MAX_EDITS;
}

+ (jboolean)DEFAULT_TRANSPOSITIONS {
  return OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_TRANSPOSITIONS;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)indexAnalyzer
                    withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)queryAnalyzer {
  OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_(self, indexAnalyzer, queryAnalyzer);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)indexAnalyzer
                    withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)queryAnalyzer
                                                withInt:(jint)options
                                                withInt:(jint)maxSurfaceFormsPerAnalyzedForm
                                                withInt:(jint)maxGraphExpansions
                                            withBoolean:(jboolean)preservePositionIncrements
                                                withInt:(jint)maxEdits
                                            withBoolean:(jboolean)transpositions
                                                withInt:(jint)nonFuzzyPrefix
                                                withInt:(jint)minFuzzyLength
                                            withBoolean:(jboolean)unicodeAware {
  OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_withInt_withBoolean_withInt_withInt_withBoolean_(self, indexAnalyzer, queryAnalyzer, options, maxSurfaceFormsPerAnalyzedForm, maxGraphExpansions, preservePositionIncrements, maxEdits, transpositions, nonFuzzyPrefix, minFuzzyLength, unicodeAware);
  return self;
}

- (id<JavaUtilList>)getFullPrefixPathsWithJavaUtilList:(id<JavaUtilList>)prefixPaths
             withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)lookupAutomaton
                         withOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst {
  OrgApacheLuceneUtilAutomatonAutomaton *levA = [self convertAutomatonWithOrgApacheLuceneUtilAutomatonAutomaton:[self toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton:lookupAutomaton]];
  return OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_intersectPrefixPathsWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilFstFST_(levA, fst);
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)convertAutomatonWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a {
  if (unicodeAware_) {
    OrgApacheLuceneUtilAutomatonAutomaton *utf8automaton = [create_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() convertWithOrgApacheLuceneUtilAutomatonAutomaton:a];
    utf8automaton = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(utf8automaton, OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES);
    return utf8automaton;
  }
  else {
    return a;
  }
}

- (OrgApacheLuceneAnalysisTokenStreamToAutomaton *)getTokenStreamToAutomaton {
  OrgApacheLuceneAnalysisTokenStreamToAutomaton *tsta = [super getTokenStreamToAutomaton];
  [((OrgApacheLuceneAnalysisTokenStreamToAutomaton *) nil_chk(tsta)) setUnicodeArcsWithBoolean:unicodeAware_];
  return tsta;
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton {
  id<JavaUtilList> subs = create_JavaUtilArrayList_init();
  OrgApacheLuceneUtilAutomatonFiniteStringsIterator *finiteStrings = create_OrgApacheLuceneUtilAutomatonFiniteStringsIterator_initWithOrgApacheLuceneUtilAutomatonAutomaton_(automaton);
  for (OrgApacheLuceneUtilIntsRef *string; (string = [finiteStrings next]) != nil; ) {
    if (((OrgApacheLuceneUtilIntsRef *) nil_chk(string))->length_ <= nonFuzzyPrefix_ || string->length_ < minFuzzyLength_) {
      [subs addWithId:OrgApacheLuceneUtilAutomatonAutomata_makeStringWithIntArray_withInt_withInt_(string->ints_, string->offset_, string->length_)];
    }
    else {
      IOSIntArray *ints = [IOSIntArray arrayWithLength:string->length_ - nonFuzzyPrefix_];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(string->ints_, string->offset_ + nonFuzzyPrefix_, ints, 0, ints->size_);
      OrgApacheLuceneUtilAutomatonLevenshteinAutomata *lev = create_OrgApacheLuceneUtilAutomatonLevenshteinAutomata_initWithIntArray_withInt_withBoolean_(ints, unicodeAware_ ? JavaLangCharacter_MAX_CODE_POINT : 255, transpositions_);
      [subs addWithId:[lev toAutomatonWithInt:maxEdits_ withNSString:OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(string->ints_, string->offset_, nonFuzzyPrefix_)]];
    }
  }
  if ([subs isEmpty]) {
    return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
  }
  else if ([subs size] == 1) {
    return [subs getWithInt:0];
  }
  else {
    OrgApacheLuceneUtilAutomatonAutomaton *a = OrgApacheLuceneUtilAutomatonOperations_union__WithJavaUtilCollection_(subs);
    return OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a, OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer:", "FuzzySuggester", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneAnalysisAnalyzer:", "FuzzySuggester", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneAnalysisAnalyzer:withInt:withInt:withInt:withBoolean:withInt:withBoolean:withInt:withInt:withBoolean:", "FuzzySuggester", NULL, 0x1, NULL, NULL },
    { "getFullPrefixPathsWithJavaUtilList:withOrgApacheLuceneUtilAutomatonAutomaton:withOrgApacheLuceneUtilFstFST:", "getFullPrefixPaths", "Ljava.util.List;", 0x4, "Ljava.io.IOException;", "(Ljava/util/List<Lorg/apache/lucene/search/suggest/analyzing/FSTUtil$Path<Lorg/apache/lucene/util/fst/PairOutputs$Pair<Ljava/lang/Long;Lorg/apache/lucene/util/BytesRef;>;>;>;Lorg/apache/lucene/util/automaton/Automaton;Lorg/apache/lucene/util/fst/FST<Lorg/apache/lucene/util/fst/PairOutputs$Pair<Ljava/lang/Long;Lorg/apache/lucene/util/BytesRef;>;>;)Ljava/util/List<Lorg/apache/lucene/search/suggest/analyzing/FSTUtil$Path<Lorg/apache/lucene/util/fst/PairOutputs$Pair<Ljava/lang/Long;Lorg/apache/lucene/util/BytesRef;>;>;>;" },
    { "convertAutomatonWithOrgApacheLuceneUtilAutomatonAutomaton:", "convertAutomaton", "Lorg.apache.lucene.util.automaton.Automaton;", 0x4, NULL, NULL },
    { "getTokenStreamToAutomaton", NULL, "Lorg.apache.lucene.analysis.TokenStreamToAutomaton;", 0x0, NULL, NULL },
    { "toLevenshteinAutomataWithOrgApacheLuceneUtilAutomatonAutomaton:", "toLevenshteinAutomata", "Lorg.apache.lucene.util.automaton.Automaton;", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maxEdits_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "transpositions_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "nonFuzzyPrefix_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minFuzzyLength_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "unicodeAware_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_UNICODE_AWARE", "DEFAULT_UNICODE_AWARE", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_UNICODE_AWARE },
    { "DEFAULT_MIN_FUZZY_LENGTH", "DEFAULT_MIN_FUZZY_LENGTH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_MIN_FUZZY_LENGTH },
    { "DEFAULT_NON_FUZZY_PREFIX", "DEFAULT_NON_FUZZY_PREFIX", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_NON_FUZZY_PREFIX },
    { "DEFAULT_MAX_EDITS", "DEFAULT_MAX_EDITS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_MAX_EDITS },
    { "DEFAULT_TRANSPOSITIONS", "DEFAULT_TRANSPOSITIONS", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_TRANSPOSITIONS },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester = { 2, "FuzzySuggester", "org.apache.lucene.search.suggest.analyzing", NULL, 0x11, 7, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester;
}

@end

void OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_(self, analyzer, analyzer);
}

OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *new_OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *create_OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester, initWithOrgApacheLuceneAnalysisAnalyzer_, analyzer)
}

void OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *self, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer) {
  OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_withInt_withBoolean_withInt_withInt_withBoolean_(self, indexAnalyzer, queryAnalyzer, OrgApacheLuceneSearchSuggestAnalyzingAnalyzingSuggester_EXACT_FIRST | OrgApacheLuceneSearchSuggestAnalyzingAnalyzingSuggester_PRESERVE_SEP, 256, -1, true, OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_MAX_EDITS, OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_TRANSPOSITIONS, OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_NON_FUZZY_PREFIX, OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_MIN_FUZZY_LENGTH, OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_DEFAULT_UNICODE_AWARE);
}

OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *new_OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_, indexAnalyzer, queryAnalyzer)
}

OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *create_OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_, indexAnalyzer, queryAnalyzer)
}

void OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_withInt_withBoolean_withInt_withInt_withBoolean_(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *self, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint options, jint maxSurfaceFormsPerAnalyzedForm, jint maxGraphExpansions, jboolean preservePositionIncrements, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware) {
  OrgApacheLuceneSearchSuggestAnalyzingAnalyzingSuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_(self, indexAnalyzer, queryAnalyzer, options, maxSurfaceFormsPerAnalyzedForm, maxGraphExpansions, preservePositionIncrements);
  if (maxEdits < 0 || maxEdits > OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"maxEdits must be between 0 and ", OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE));
  }
  if (nonFuzzyPrefix < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"nonFuzzyPrefix must not be >= 0 (got ", nonFuzzyPrefix, ')'));
  }
  if (minFuzzyLength < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"minFuzzyLength must not be >= 0 (got ", minFuzzyLength, ')'));
  }
  self->maxEdits_ = maxEdits;
  self->transpositions_ = transpositions;
  self->nonFuzzyPrefix_ = nonFuzzyPrefix;
  self->minFuzzyLength_ = minFuzzyLength;
  self->unicodeAware_ = unicodeAware;
}

OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *new_OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_withInt_withBoolean_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint options, jint maxSurfaceFormsPerAnalyzedForm, jint maxGraphExpansions, jboolean preservePositionIncrements, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_withInt_withBoolean_withInt_withInt_withBoolean_, indexAnalyzer, queryAnalyzer, options, maxSurfaceFormsPerAnalyzedForm, maxGraphExpansions, preservePositionIncrements, maxEdits, transpositions, nonFuzzyPrefix, minFuzzyLength, unicodeAware)
}

OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester *create_OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_withInt_withBoolean_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint options, jint maxSurfaceFormsPerAnalyzedForm, jint maxGraphExpansions, jboolean preservePositionIncrements, jint maxEdits, jboolean transpositions, jint nonFuzzyPrefix, jint minFuzzyLength, jboolean unicodeAware) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withInt_withInt_withBoolean_withInt_withBoolean_withInt_withInt_withBoolean_, indexAnalyzer, queryAnalyzer, options, maxSurfaceFormsPerAnalyzedForm, maxGraphExpansions, preservePositionIncrements, maxEdits, transpositions, nonFuzzyPrefix, minFuzzyLength, unicodeAware)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestAnalyzingFuzzySuggester)