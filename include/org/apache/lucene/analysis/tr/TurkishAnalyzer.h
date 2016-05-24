//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/tr/TurkishAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTrTurkishAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTrTurkishAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTrTurkishAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTrTurkishAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTrTurkishAnalyzer

#if !defined (OrgApacheLuceneAnalysisTrTurkishAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTrTurkishAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisTrTurkishAnalyzer))
#define OrgApacheLuceneAnalysisTrTurkishAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief <code>Analyzer</code> for Turkish.
 */
@interface OrgApacheLuceneAnalysisTrTurkishAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

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
 <code>StandardFilter</code>, <code>TurkishLowerCaseFilter</code>,
 <code>StopFilter</code>, <code>SetKeywordMarkerFilter</code> if a stem
 exclusion set is provided and <code>SnowballFilter</code>.
 */
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTrTurkishAnalyzer)

/*!
 @brief File containing default Turkish stopwords.
 */
inline NSString *OrgApacheLuceneAnalysisTrTurkishAnalyzer_get_DEFAULT_STOPWORD_FILE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisTrTurkishAnalyzer_DEFAULT_STOPWORD_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisTrTurkishAnalyzer, DEFAULT_STOPWORD_FILE, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisTrTurkishAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTrTurkishAnalyzer_init(OrgApacheLuceneAnalysisTrTurkishAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTrTurkishAnalyzer *new_OrgApacheLuceneAnalysisTrTurkishAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTrTurkishAnalyzer *create_OrgApacheLuceneAnalysisTrTurkishAnalyzer_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTrTurkishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTrTurkishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTrTurkishAnalyzer *new_OrgApacheLuceneAnalysisTrTurkishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTrTurkishAnalyzer *create_OrgApacheLuceneAnalysisTrTurkishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTrTurkishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTrTurkishAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTrTurkishAnalyzer *new_OrgApacheLuceneAnalysisTrTurkishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTrTurkishAnalyzer *create_OrgApacheLuceneAnalysisTrTurkishAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTrTurkishAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTrTurkishAnalyzer")