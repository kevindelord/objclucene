//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/synonym/SynonymMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymMap")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSynonymSynonymMap
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymMap 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymMap 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSynonymSynonymMap
#ifdef INCLUDE_OrgApacheLuceneAnalysisSynonymSynonymMap_Parser
#define INCLUDE_OrgApacheLuceneAnalysisSynonymSynonymMap_Builder 1
#endif

#if !defined (OrgApacheLuceneAnalysisSynonymSynonymMap_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymMap || defined(INCLUDE_OrgApacheLuceneAnalysisSynonymSynonymMap))
#define OrgApacheLuceneAnalysisSynonymSynonymMap_

@class OrgApacheLuceneUtilBytesRefHash;
@class OrgApacheLuceneUtilFstFST;

/*!
 @brief A map of synonyms, keys and values are phrases.
 */
@interface OrgApacheLuceneAnalysisSynonymSynonymMap : NSObject {
 @public
  /*!
   @brief map&lt;input word, list&lt;ord&gt;&gt;
   */
  OrgApacheLuceneUtilFstFST *fst_;
  /*!
   @brief map&lt;ord, outputword&gt;
   */
  OrgApacheLuceneUtilBytesRefHash *words_;
  /*!
   @brief maxHorizontalContext: maximum context we need on the tokenstream
   */
  jint maxHorizontalContext_;
}

+ (jchar)WORD_SEPARATOR;

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
              withOrgApacheLuceneUtilBytesRefHash:(OrgApacheLuceneUtilBytesRefHash *)words
                                          withInt:(jint)maxHorizontalContext;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSynonymSynonymMap)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSynonymSynonymMap, fst_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSynonymSynonymMap, words_, OrgApacheLuceneUtilBytesRefHash *)

/*!
 @brief for multiword support, you must separate words with this separator
 */
inline jchar OrgApacheLuceneAnalysisSynonymSynonymMap_get_WORD_SEPARATOR();
#define OrgApacheLuceneAnalysisSynonymSynonymMap_WORD_SEPARATOR 0x0000
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisSynonymSynonymMap, WORD_SEPARATOR, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSynonymSynonymMap_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilBytesRefHash_withInt_(OrgApacheLuceneAnalysisSynonymSynonymMap *self, OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilBytesRefHash *words, jint maxHorizontalContext);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSynonymMap *new_OrgApacheLuceneAnalysisSynonymSynonymMap_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilBytesRefHash_withInt_(OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilBytesRefHash *words, jint maxHorizontalContext) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSynonymMap *create_OrgApacheLuceneAnalysisSynonymSynonymMap_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilBytesRefHash_withInt_(OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilBytesRefHash *words, jint maxHorizontalContext);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSynonymSynonymMap)

#endif

#if !defined (OrgApacheLuceneAnalysisSynonymSynonymMap_Builder_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymMap || defined(INCLUDE_OrgApacheLuceneAnalysisSynonymSynonymMap_Builder))
#define OrgApacheLuceneAnalysisSynonymSynonymMap_Builder_

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisSynonymSynonymMap;
@class OrgApacheLuceneUtilCharsRef;
@class OrgApacheLuceneUtilCharsRefBuilder;

/*!
 @brief Builds an FSTSynonymMap.
 <p>
 Call add() until you have added all the mappings, then call build() to get an FSTSynonymMap
 */
@interface OrgApacheLuceneAnalysisSynonymSynonymMap_Builder : NSObject

#pragma mark Public

/*!
 @brief If dedup is true then identical rules (same input,
 same output) will be added only once.
 */
- (instancetype)initWithBoolean:(jboolean)dedup;

/*!
 @brief Add a phrase-&gt;phrase synonym mapping.
 Phrases are character sequences where words are
 separated with character zero (U+0000).  Empty words
 (two U+0000s in a row) are not allowed in the input nor
 the output!
 @param input input phrase
 @param output output phrase
 @param includeOrig true if the original should be included
 */
- (void)addWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)input
           withOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)output
                               withBoolean:(jboolean)includeOrig;

/*!
 @brief Builds an <code>SynonymMap</code> and returns it.
 */
- (OrgApacheLuceneAnalysisSynonymSynonymMap *)build;

/*!
 @brief Sugar: just joins the provided terms with <code>SynonymMap.WORD_SEPARATOR</code>
 .
 reuse and its chars
 must not be null. 
 */
+ (OrgApacheLuceneUtilCharsRef *)joinWithNSStringArray:(IOSObjectArray *)words
                withOrgApacheLuceneUtilCharsRefBuilder:(OrgApacheLuceneUtilCharsRefBuilder *)reuse;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSynonymSynonymMap_Builder)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSynonymSynonymMap_Builder_initWithBoolean_(OrgApacheLuceneAnalysisSynonymSynonymMap_Builder *self, jboolean dedup);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSynonymMap_Builder *new_OrgApacheLuceneAnalysisSynonymSynonymMap_Builder_initWithBoolean_(jboolean dedup) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSynonymMap_Builder *create_OrgApacheLuceneAnalysisSynonymSynonymMap_Builder_initWithBoolean_(jboolean dedup);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *OrgApacheLuceneAnalysisSynonymSynonymMap_Builder_joinWithNSStringArray_withOrgApacheLuceneUtilCharsRefBuilder_(IOSObjectArray *words, OrgApacheLuceneUtilCharsRefBuilder *reuse);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSynonymSynonymMap_Builder)

#endif

#if !defined (OrgApacheLuceneAnalysisSynonymSynonymMap_Parser_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymMap || defined(INCLUDE_OrgApacheLuceneAnalysisSynonymSynonymMap_Parser))
#define OrgApacheLuceneAnalysisSynonymSynonymMap_Parser_

@class JavaIoReader;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneUtilCharsRef;
@class OrgApacheLuceneUtilCharsRefBuilder;

/*!
 @brief Abstraction for parsing synonym files.
 */
@interface OrgApacheLuceneAnalysisSynonymSynonymMap_Parser : OrgApacheLuceneAnalysisSynonymSynonymMap_Builder

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)dedup
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

/*!
 @brief Sugar: analyzes the text with the analyzer and
 separates by <code>SynonymMap.WORD_SEPARATOR</code>.
 reuse and its chars must not be null. 
 */
- (OrgApacheLuceneUtilCharsRef *)analyzeWithNSString:(NSString *)text
              withOrgApacheLuceneUtilCharsRefBuilder:(OrgApacheLuceneUtilCharsRefBuilder *)reuse;

/*!
 @brief Parse the given input, adding synonyms to the inherited <code>Builder</code>.
 @param inArg The input to parse
 */
- (void)parseWithJavaIoReader:(JavaIoReader *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSynonymSynonymMap_Parser)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSynonymSynonymMap_Parser_initWithBoolean_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisSynonymSynonymMap_Parser *self, jboolean dedup, OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSynonymSynonymMap_Parser)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSynonymMap")