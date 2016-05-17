//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCjkCJKAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCjkCJKAnalyzer

#if !defined (OrgApacheLuceneAnalysisCjkCJKAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKAnalyzer || defined(INCLUDE_OrgApacheLuceneAnalysisCjkCJKAnalyzer))
#define OrgApacheLuceneAnalysisCjkCJKAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase 1
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief An <code>Analyzer</code> that tokenizes text with <code>StandardTokenizer</code>,
 normalizes content with <code>CJKWidthFilter</code>, folds case with
 <code>LowerCaseFilter</code>, forms bigrams of CJK with <code>CJKBigramFilter</code>,
 and filters stopwords with <code>StopFilter</code>
 */
@interface OrgApacheLuceneAnalysisCjkCJKAnalyzer : OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

+ (NSString *)DEFAULT_STOPWORD_FILE;

#pragma mark Public

/*!
 @brief Builds an analyzer which removes words in <code>getDefaultStopSet()</code>.
 */
- (instancetype)init;

/*!
 @brief Builds an analyzer with the given stop words
 @param stopwords
 a stopword set
 */
- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords;

/*!
 @brief Returns an unmodifiable instance of the default stop-words set.
 @return an unmodifiable instance of the default stop-words set.
 */
+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCjkCJKAnalyzer)

/*!
 @brief File containing default CJK stopwords.
 <p>
 Currently it contains some common English words that are not usually
 useful for searching and some double-byte interpunctions.
 */
inline NSString *OrgApacheLuceneAnalysisCjkCJKAnalyzer_get_DEFAULT_STOPWORD_FILE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisCjkCJKAnalyzer_DEFAULT_STOPWORD_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCjkCJKAnalyzer, DEFAULT_STOPWORD_FILE, NSString *)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCjkCJKAnalyzer_getDefaultStopSet();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKAnalyzer_init(OrgApacheLuceneAnalysisCjkCJKAnalyzer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKAnalyzer *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKAnalyzer *create_OrgApacheLuceneAnalysisCjkCJKAnalyzer_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCjkCJKAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKAnalyzer *new_OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCjkCJKAnalyzer *create_OrgApacheLuceneAnalysisCjkCJKAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCjkCJKAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkCJKAnalyzer")
