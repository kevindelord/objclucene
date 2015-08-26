//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/MultiFieldQueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_RESTRICT
#define OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_) && (OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_INCLUDE_ALL || OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_INCLUDE)
#define _OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_

#define OrgApacheLuceneQueryparserClassicQueryParser_RESTRICT 1
#define OrgApacheLuceneQueryparserClassicQueryParser_INCLUDE 1
#include "org/apache/lucene/queryparser/classic/QueryParser.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueryparserClassicMultiFieldQueryParser : OrgApacheLuceneQueryparserClassicQueryParser {
 @public
  IOSObjectArray *fields_;
  id<JavaUtilMap> boosts_;
}

#pragma mark Public

- (instancetype)initWithNSStringArray:(IOSObjectArray *)fields
  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (instancetype)initWithNSStringArray:(IOSObjectArray *)fields
  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                      withJavaUtilMap:(id<JavaUtilMap>)boosts;

+ (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query
                                withNSStringArray:(IOSObjectArray *)fields
withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:(IOSObjectArray *)flags
              withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

+ (OrgApacheLuceneSearchQuery *)parseWithNSStringArray:(IOSObjectArray *)queries
                                     withNSStringArray:(IOSObjectArray *)fields
                   withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

+ (OrgApacheLuceneSearchQuery *)parseWithNSStringArray:(IOSObjectArray *)queries
                                     withNSStringArray:(IOSObjectArray *)fields
 withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:(IOSObjectArray *)flags
                   withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

#pragma mark Protected

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                              withBoolean:(jboolean)quoted;

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                                  withInt:(jint)slop;

- (OrgApacheLuceneSearchQuery *)getFuzzyQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)termStr
                                                withFloat:(jfloat)minSimilarity;

- (OrgApacheLuceneSearchQuery *)getPrefixQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr;

- (OrgApacheLuceneSearchQuery *)getRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive;

- (OrgApacheLuceneSearchQuery *)getRegexpQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr;

- (OrgApacheLuceneSearchQuery *)getWildcardQueryWithNSString:(NSString *)field
                                                withNSString:(NSString *)termStr;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser, fields_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser, boosts_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self, IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer, id<JavaUtilMap> boosts);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *new_OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer, id<JavaUtilMap> boosts) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self, IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *new_OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *queries, IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSString_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(NSString *query, IOSObjectArray *fields, IOSObjectArray *flags, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *queries, IOSObjectArray *fields, IOSObjectArray *flags, OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_INCLUDE_ALL")