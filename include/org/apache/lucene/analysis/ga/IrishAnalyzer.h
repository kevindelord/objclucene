//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ga/IrishAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisGaIrishAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisGaIrishAnalyzer

#if !defined (OrgApacheLuceneAnalysisGaIrishAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisGaIrishAnalyzer))
#define OrgApacheLuceneAnalysisGaIrishAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief <code>Analyzer</code> for Irish.
 */
@interface OrgApacheLuceneAnalysisGaIrishAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

+ (NSString *)DEFAULT_STOPWORD_FILE;

#pragma mark Public

/*!
 @brief Builds an analyzer with the default stop words: <code>DEFAULT_STOPWORD_FILE</code>.
 */
- (instancetype)init;

/*!
 @brief Builds an analyzer with the given stop words.
 @param stopwords a stopword set
 */
- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

/*!
 @brief Builds an analyzer with the given stop words.
 If a non-empty stem exclusion set is
 provided this analyzer will add a <code>SetKeywordMarkerFilter</code> before
 stemming.
 @param stopwords a stopword set
 @param stemExclusionSet a set of terms not to be stemmed
 */
- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

/*!
 @brief Returns an unmodifiable instance of the default stop words set.
 @return default stop words set.
 */
+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

/*!
 @brief Creates a
 <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
 which tokenizes all the text in the provided <code>Reader</code>.
 @return A
 <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
 built from an <code>StandardTokenizer</code> filtered with
 <code>StandardFilter</code>, <code>IrishLowerCaseFilter</code>, <code>StopFilter</code>
 , <code>SetKeywordMarkerFilter</code> if a stem exclusion set is
 provided and <code>SnowballFilter</code>.
 */
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisGaIrishAnalyzer)

/*!
 @brief File containing default Irish stopwords.
 */
inline NSString *OrgApacheLuceneAnalysisGaIrishAnalyzer_get_DEFAULT_STOPWORD_FILE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisGaIrishAnalyzer_DEFAULT_STOPWORD_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisGaIrishAnalyzer, DEFAULT_STOPWORD_FILE, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisGaIrishAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGaIrishAnalyzer_init(OrgApacheLuceneAnalysisGaIrishAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishAnalyzer *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishAnalyzer *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisGaIrishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishAnalyzer *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishAnalyzer *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisGaIrishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishAnalyzer *new_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishAnalyzer *create_OrgApacheLuceneAnalysisGaIrishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisGaIrishAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisGaIrishAnalyzer")