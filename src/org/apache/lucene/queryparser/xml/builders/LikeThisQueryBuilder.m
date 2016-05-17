//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/LikeThisQueryBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/queries/mlt/MoreLikeThisQuery.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/LikeThisQueryBuilder.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

@interface OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
  IOSObjectArray *defaultFieldNames_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, defaultFieldNames_, IOSObjectArray *)

inline jint OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_get_DEFAULT_MAX_QUERY_TERMS();
#define OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MAX_QUERY_TERMS 20
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, DEFAULT_MAX_QUERY_TERMS, jint)

inline jint OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_get_DEFAULT_MIN_TERM_FREQUENCY();
#define OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MIN_TERM_FREQUENCY 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, DEFAULT_MIN_TERM_FREQUENCY, jint)

inline jfloat OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_get_DEFAULT_PERCENT_TERMS_TO_MATCH();
#define OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_PERCENT_TERMS_TO_MATCH 30.0f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, DEFAULT_PERCENT_TERMS_TO_MATCH, jfloat)

@implementation OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                      withNSStringArray:(IOSObjectArray *)defaultFieldNames {
  OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(self, analyzer, defaultFieldNames);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *fieldsList = [((id<OrgW3cDomElement>) nil_chk(e)) getAttributeWithNSString:@"fieldNames"];
  IOSObjectArray *fields = defaultFieldNames_;
  if ((fieldsList != nil) && (((jint) [((NSString *) nil_chk([((NSString *) nil_chk(fieldsList)) trim])) length]) > 0)) {
    fields = [((NSString *) nil_chk([((NSString *) nil_chk(fieldsList)) trim])) split:@","];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields))->size_; i++) {
      IOSObjectArray_Set(fields, i, [((NSString *) nil_chk(IOSObjectArray_Get(fields, i))) trim]);
    }
  }
  NSString *stopWords = [e getAttributeWithNSString:@"stopWords"];
  id<JavaUtilSet> stopWordsSet = nil;
  if ((stopWords != nil) && (fields != nil)) {
    stopWordsSet = create_JavaUtilHashSet_init();
    {
      IOSObjectArray *a__ = fields;
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *field = *b__++;
        @try {
          OrgApacheLuceneAnalysisTokenStream *ts = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer_)) tokenStreamWithNSString:field withNSString:stopWords];
          NSException *__primaryException1 = nil;
          @try {
            id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(ts)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
            [ts reset];
            while ([ts incrementToken]) {
              [stopWordsSet addWithId:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt)) description]];
            }
            [ts end];
          }
          @catch (NSException *e) {
            __primaryException1 = e;
            @throw e;
          }
          @finally {
            if (ts != nil) {
              if (__primaryException1 != nil) {
                @try {
                  [ts close];
                } @catch (NSException *e) {
                  [__primaryException1 addSuppressedWithNSException:e];
                }
              } else {
                [ts close];
              }
            }
          }
        }
        @catch (JavaIoIOException *ioe) {
          @throw create_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$C$", @"IoException parsing stop words list in ", [[self getClass] getName], ':', [((JavaIoIOException *) nil_chk(ioe)) getLocalizedMessage]));
        }
      }
    }
  }
  OrgApacheLuceneQueriesMltMoreLikeThisQuery *mlt = create_OrgApacheLuceneQueriesMltMoreLikeThisQuery_initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_(OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(e), fields, analyzer_, IOSObjectArray_Get(nil_chk(fields), 0));
  [mlt setMaxQueryTermsWithInt:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"maxQueryTerms", OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MAX_QUERY_TERMS)];
  [mlt setMinTermFrequencyWithInt:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"minTermFrequency", OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MIN_TERM_FREQUENCY)];
  [mlt setPercentTermsToMatchWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"percentTermsToMatch", OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_PERCENT_TERMS_TO_MATCH) / 100];
  [mlt setStopWordsWithJavaUtilSet:stopWordsSet];
  jint minDocFreq = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"minDocFreq", -1);
  if (minDocFreq >= 0) {
    [mlt setMinDocFreqWithInt:minDocFreq];
  }
  [mlt setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return mlt;
}

- (void)dealloc {
  RELEASE_(analyzer_);
  RELEASE_(defaultFieldNames_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer:withNSStringArray:", "LikeThisQueryBuilder", NULL, 0x1, NULL, NULL },
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_QUERY_TERMS", "DEFAULT_MAX_QUERY_TERMS", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MAX_QUERY_TERMS },
    { "DEFAULT_MIN_TERM_FREQUENCY", "DEFAULT_MIN_TERM_FREQUENCY", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MIN_TERM_FREQUENCY },
    { "DEFAULT_PERCENT_TERMS_TO_MATCH", "DEFAULT_PERCENT_TERMS_TO_MATCH", 0x1a, "F", NULL, NULL, .constantValue.asFloat = OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_PERCENT_TERMS_TO_MATCH },
    { "analyzer_", NULL, 0x12, "Lorg.apache.lucene.analysis.Analyzer;", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultFieldNames_", NULL, 0x12, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder = { 2, "LikeThisQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, IOSObjectArray *defaultFieldNames) {
  NSObject_init(self);
  JreStrongAssign(&self->analyzer_, analyzer);
  JreStrongAssign(&self->defaultFieldNames_, defaultFieldNames);
}

OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(OrgApacheLuceneAnalysisAnalyzer *analyzer, IOSObjectArray *defaultFieldNames) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_, analyzer, defaultFieldNames)
}

OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder *create_OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(OrgApacheLuceneAnalysisAnalyzer *analyzer, IOSObjectArray *defaultFieldNames) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_, analyzer, defaultFieldNames)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder)
