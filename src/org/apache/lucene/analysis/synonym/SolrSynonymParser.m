//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/synonym/SolrSynonymParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/IOException.h"
#include "java/io/LineNumberReader.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/text/ParseException.h"
#include "java/util/ArrayList.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/synonym/SolrSynonymParser.h"
#include "org/apache/lucene/analysis/synonym/SynonymMap.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"

@interface OrgApacheLuceneAnalysisSynonymSolrSynonymParser () {
 @public
  jboolean expand_;
}

- (void)addInternalWithJavaIoBufferedReader:(JavaIoBufferedReader *)inArg;

+ (IOSObjectArray *)splitWithNSString:(NSString *)s
                         withNSString:(NSString *)separator;

- (NSString *)unescapeWithNSString:(NSString *)s;

@end

__attribute__((unused)) static void OrgApacheLuceneAnalysisSynonymSolrSynonymParser_addInternalWithJavaIoBufferedReader_(OrgApacheLuceneAnalysisSynonymSolrSynonymParser *self, JavaIoBufferedReader *inArg);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisSynonymSolrSynonymParser_splitWithNSString_withNSString_(NSString *s, NSString *separator);

__attribute__((unused)) static NSString *OrgApacheLuceneAnalysisSynonymSolrSynonymParser_unescapeWithNSString_(OrgApacheLuceneAnalysisSynonymSolrSynonymParser *self, NSString *s);

@implementation OrgApacheLuceneAnalysisSynonymSolrSynonymParser

- (instancetype)initWithBoolean:(jboolean)dedup
                    withBoolean:(jboolean)expand
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(self, dedup, expand, analyzer);
  return self;
}

- (void)parseWithJavaIoReader:(JavaIoReader *)inArg {
  JavaIoLineNumberReader *br = create_JavaIoLineNumberReader_initWithJavaIoReader_(inArg);
  @try {
    OrgApacheLuceneAnalysisSynonymSolrSynonymParser_addInternalWithJavaIoBufferedReader_(self, br);
  }
  @catch (JavaLangIllegalArgumentException *e) {
    JavaTextParseException *ex = create_JavaTextParseException_initWithNSString_withInt_(JreStrcat("$I", @"Invalid synonym rule at line ", [br getLineNumber]), 0);
    [ex initCauseWithNSException:e];
    @throw ex;
  }
  @finally {
    [br close];
  }
}

- (void)addInternalWithJavaIoBufferedReader:(JavaIoBufferedReader *)inArg {
  OrgApacheLuceneAnalysisSynonymSolrSynonymParser_addInternalWithJavaIoBufferedReader_(self, inArg);
}

+ (IOSObjectArray *)splitWithNSString:(NSString *)s
                         withNSString:(NSString *)separator {
  return OrgApacheLuceneAnalysisSynonymSolrSynonymParser_splitWithNSString_withNSString_(s, separator);
}

- (NSString *)unescapeWithNSString:(NSString *)s {
  return OrgApacheLuceneAnalysisSynonymSolrSynonymParser_unescapeWithNSString_(self, s);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:withBoolean:withOrgApacheLuceneAnalysisAnalyzer:", "SolrSynonymParser", NULL, 0x1, NULL, NULL },
    { "parseWithJavaIoReader:", "parse", "V", 0x1, "Ljava.io.IOException;Ljava.text.ParseException;", NULL },
    { "addInternalWithJavaIoBufferedReader:", "addInternal", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "splitWithNSString:withNSString:", "split", "[Ljava.lang.String;", 0xa, NULL, NULL },
    { "unescapeWithNSString:", "unescape", "Ljava.lang.String;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "expand_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSynonymSolrSynonymParser = { 2, "SolrSynonymParser", "org.apache.lucene.analysis.synonym", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisSynonymSolrSynonymParser;
}

@end

void OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisSynonymSolrSynonymParser *self, jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneAnalysisSynonymSynonymMap_Parser_initWithBoolean_withOrgApacheLuceneAnalysisAnalyzer_(self, dedup, analyzer);
  self->expand_ = expand;
}

OrgApacheLuceneAnalysisSynonymSolrSynonymParser *new_OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisSynonymSolrSynonymParser, initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_, dedup, expand, analyzer)
}

OrgApacheLuceneAnalysisSynonymSolrSynonymParser *create_OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisSynonymSolrSynonymParser, initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_, dedup, expand, analyzer)
}

void OrgApacheLuceneAnalysisSynonymSolrSynonymParser_addInternalWithJavaIoBufferedReader_(OrgApacheLuceneAnalysisSynonymSolrSynonymParser *self, JavaIoBufferedReader *inArg) {
  NSString *line = nil;
  while ((line = [((JavaIoBufferedReader *) nil_chk(inArg)) readLine]) != nil) {
    if (((jint) [((NSString *) nil_chk(line)) length]) == 0 || [line charAtWithInt:0] == '#') {
      continue;
    }
    IOSObjectArray *sides = OrgApacheLuceneAnalysisSynonymSolrSynonymParser_splitWithNSString_withNSString_(line, @"=>");
    if (((IOSObjectArray *) nil_chk(sides))->size_ > 1) {
      if (sides->size_ != 2) {
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"more than one explicit mapping specified on the same line");
      }
      IOSObjectArray *inputStrings = OrgApacheLuceneAnalysisSynonymSolrSynonymParser_splitWithNSString_withNSString_(IOSObjectArray_Get(sides, 0), @",");
      IOSObjectArray *inputs = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(inputStrings))->size_ type:OrgApacheLuceneUtilCharsRef_class_()];
      for (jint i = 0; i < inputs->size_; i++) {
        IOSObjectArray_Set(inputs, i, [self analyzeWithNSString:[((NSString *) nil_chk(OrgApacheLuceneAnalysisSynonymSolrSynonymParser_unescapeWithNSString_(self, IOSObjectArray_Get(inputStrings, i)))) trim] withOrgApacheLuceneUtilCharsRefBuilder:create_OrgApacheLuceneUtilCharsRefBuilder_init()]);
      }
      IOSObjectArray *outputStrings = OrgApacheLuceneAnalysisSynonymSolrSynonymParser_splitWithNSString_withNSString_(IOSObjectArray_Get(sides, 1), @",");
      IOSObjectArray *outputs = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(outputStrings))->size_ type:OrgApacheLuceneUtilCharsRef_class_()];
      for (jint i = 0; i < outputs->size_; i++) {
        IOSObjectArray_Set(outputs, i, [self analyzeWithNSString:[((NSString *) nil_chk(OrgApacheLuceneAnalysisSynonymSolrSynonymParser_unescapeWithNSString_(self, IOSObjectArray_Get(outputStrings, i)))) trim] withOrgApacheLuceneUtilCharsRefBuilder:create_OrgApacheLuceneUtilCharsRefBuilder_init()]);
      }
      for (jint i = 0; i < inputs->size_; i++) {
        for (jint j = 0; j < outputs->size_; j++) {
          [self addWithOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(inputs, i) withOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(outputs, j) withBoolean:false];
        }
      }
    }
    else {
      IOSObjectArray *inputStrings = OrgApacheLuceneAnalysisSynonymSolrSynonymParser_splitWithNSString_withNSString_(line, @",");
      IOSObjectArray *inputs = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(inputStrings))->size_ type:OrgApacheLuceneUtilCharsRef_class_()];
      for (jint i = 0; i < inputs->size_; i++) {
        IOSObjectArray_Set(inputs, i, [self analyzeWithNSString:[((NSString *) nil_chk(OrgApacheLuceneAnalysisSynonymSolrSynonymParser_unescapeWithNSString_(self, IOSObjectArray_Get(inputStrings, i)))) trim] withOrgApacheLuceneUtilCharsRefBuilder:create_OrgApacheLuceneUtilCharsRefBuilder_init()]);
      }
      if (self->expand_) {
        for (jint i = 0; i < inputs->size_; i++) {
          for (jint j = 0; j < inputs->size_; j++) {
            if (i != j) {
              [self addWithOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(inputs, i) withOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(inputs, j) withBoolean:true];
            }
          }
        }
      }
      else {
        for (jint i = 0; i < inputs->size_; i++) {
          [self addWithOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(inputs, i) withOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(inputs, 0) withBoolean:false];
        }
      }
    }
  }
}

IOSObjectArray *OrgApacheLuceneAnalysisSynonymSolrSynonymParser_splitWithNSString_withNSString_(NSString *s, NSString *separator) {
  OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initialize();
  JavaUtilArrayList *list = create_JavaUtilArrayList_initWithInt_(2);
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  jint pos = 0, end = ((jint) [((NSString *) nil_chk(s)) length]);
  while (pos < end) {
    if ([s hasPrefix:separator offset:pos]) {
      if ([sb length] > 0) {
        [list addWithId:[sb description]];
        sb = create_JavaLangStringBuilder_init();
      }
      pos += ((jint) [((NSString *) nil_chk(separator)) length]);
      continue;
    }
    jchar ch = [s charAtWithInt:pos++];
    if (ch == '\\') {
      [sb appendWithChar:ch];
      if (pos >= end) break;
      ch = [s charAtWithInt:pos++];
    }
    [sb appendWithChar:ch];
  }
  if ([sb length] > 0) {
    [list addWithId:[sb description]];
  }
  return [list toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[list size] type:NSString_class_()]];
}

NSString *OrgApacheLuceneAnalysisSynonymSolrSynonymParser_unescapeWithNSString_(OrgApacheLuceneAnalysisSynonymSolrSynonymParser *self, NSString *s) {
  if ([((NSString *) nil_chk(s)) indexOfString:@"\\"] >= 0) {
    JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
    for (jint i = 0; i < ((jint) [s length]); i++) {
      jchar ch = [s charAtWithInt:i];
      if (ch == '\\' && i < ((jint) [s length]) - 1) {
        [sb appendWithChar:[s charAtWithInt:++i]];
      }
      else {
        [sb appendWithChar:ch];
      }
    }
    return [sb description];
  }
  return s;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSynonymSolrSynonymParser)