//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/id/IndonesianAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisIdIndonesianAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisIdIndonesianAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisIdIndonesianAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisIdIndonesianAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisIdIndonesianAnalyzer

#if !defined (OrgApacheLuceneAnalysisIdIndonesianAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisIdIndonesianAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisIdIndonesianAnalyzer))
#define OrgApacheLuceneAnalysisIdIndonesianAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief Analyzer for Indonesian (Bahasa)
 */
@interface OrgApacheLuceneAnalysisIdIndonesianAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

+ (NSString *)DEFAULT_STOPWORD_FILE;

#pragma mark Public

/*!
 @brief Builds an analyzer with the default stop words: <code>DEFAULT_STOPWORD_FILE</code>.
 */
- (instancetype)init;

/*!
 @brief Builds an analyzer with the given stop words
 @param stopwords
 a stopword set
 */
- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

/*!
 @brief Builds an analyzer with the given stop word.
 If a none-empty stem exclusion set is
 provided this analyzer will add a <code>SetKeywordMarkerFilter</code> before
 <code>IndonesianStemFilter</code>.
 @param stopwords
 a stopword set
 @param stemExclusionSet
 a set of terms not to be stemmed
 */
- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet;

/*!
 @brief Returns an unmodifiable instance of the default stop-words set.
 @return an unmodifiable instance of the default stop-words set.
 */
+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

/*!
 @brief Creates
 <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
 used to tokenize all the text in the provided <code>Reader</code>.
 @return <code>org.apache.lucene.analysis.Analyzer.TokenStreamComponents</code>
 built from an <code>StandardTokenizer</code> filtered with
 <code>StandardFilter</code>, <code>LowerCaseFilter</code>,
 <code>StopFilter</code>, <code>SetKeywordMarkerFilter</code>
 if a stem exclusion set is provided and <code>IndonesianStemFilter</code>.
 */
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisIdIndonesianAnalyzer)

/*!
 @brief File containing default Indonesian stopwords.
 */
inline NSString *OrgApacheLuceneAnalysisIdIndonesianAnalyzer_get_DEFAULT_STOPWORD_FILE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DEFAULT_STOPWORD_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisIdIndonesianAnalyzer, DEFAULT_STOPWORD_FILE, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisIdIndonesianAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init(OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *create_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *create_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianAnalyzer *create_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisIdIndonesianAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisIdIndonesianAnalyzer")