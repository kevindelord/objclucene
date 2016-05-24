//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/analyzing/BlendedInfixSuggester.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester

#if !defined (OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester || defined(INCLUDE_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester))
#define OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_

#define RESTRICT_OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester 1
#define INCLUDE_OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester 1
#include "org/apache/lucene/search/suggest/analyzing/AnalyzingInfixSuggester.h"

@class IOSObjectArray;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneSearchBooleanQuery;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType;
@class OrgApacheLuceneSearchTopFieldDocs;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneUtilVersion;
@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

/*!
 @brief Extension of the AnalyzingInfixSuggester which transforms the weight
 after search to take into account the position of the searched term into
 the indexed text.
 Please note that it increases the number of elements searched and applies the
 ponderation after. It might be costly for long suggestions.
 */
@interface OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester : OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester

+ (jdouble)LINEAR_COEF;

+ (void)setLINEAR_COEF:(jdouble)value;

+ (jint)DEFAULT_NUM_FACTOR;

+ (void)setDEFAULT_NUM_FACTOR:(jint)value;

#pragma mark Public

/*!
 @brief Create a new instance, loading from a previously built
 directory, if it exists.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

/*!
 @brief Create a new instance, loading from a previously built
 directory, if it exists.
 @param blenderType Type of blending strategy, see BlenderType for more precisions
 @param numFactor   Factor to multiply the number of searched elements before ponderate
 @param commitOnBuild Call commit after the index has finished building. This would persist the
 suggester index to disk and future instances of this suggester can use this pre-built dictionary.
 @throws IOException If there are problems opening the underlying Lucene index.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)indexAnalyzer
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)queryAnalyzer
                                              withInt:(jint)minPrefixChars
withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType:(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *)blenderType
                                              withInt:(jint)numFactor
                                          withBoolean:(jboolean)commitOnBuild;

/*!
 @brief Create a new instance, loading from a previously built
 directory, if it exists.
 @param blenderType Type of blending strategy, see BlenderType for more precisions
 @param numFactor   Factor to multiply the number of searched elements before ponderate
 @param commitOnBuild Call commit after the index has finished building. This would persist the
 suggester index to disk and future instances of this suggester can use this pre-built dictionary.
 @param allTermsRequired All terms in the suggest query must be matched.
 @param highlight Highlight suggest query in suggestions.
 @throws IOException If there are problems opening the underlying Lucene index.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)indexAnalyzer
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)queryAnalyzer
                                              withInt:(jint)minPrefixChars
withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType:(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *)blenderType
                                              withInt:(jint)numFactor
                                          withBoolean:(jboolean)commitOnBuild
                                          withBoolean:(jboolean)allTermsRequired
                                          withBoolean:(jboolean)highlight;

/*!
 */
- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                 withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
               withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

/*!
 */
- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                 withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
               withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)indexAnalyzer
               withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)queryAnalyzer
                                           withInt:(jint)minPrefixChars
withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType:(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *)blenderType
                                           withInt:(jint)numFactor
                                       withBoolean:(jboolean)commitOnBuild;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
             withOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)contextQuery
                                           withInt:(jint)num
                                       withBoolean:(jboolean)allTermsRequired
                                       withBoolean:(jboolean)doHighlight;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilMap:(id<JavaUtilMap>)contextInfo
                                           withInt:(jint)num
                                       withBoolean:(jboolean)allTermsRequired
                                       withBoolean:(jboolean)doHighlight;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                       withBoolean:(jboolean)onlyMorePopular
                                           withInt:(jint)num;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                           withInt:(jint)num
                                       withBoolean:(jboolean)allTermsRequired
                                       withBoolean:(jboolean)doHighlight;

#pragma mark Protected

/*!
 @brief Calculate the weight coefficient based on the position of the first matching word.
 Subclass should override it to adapt it to particular needs
 @param position of the first matching word in text
 @return the coefficient
 */
- (jdouble)calculateCoefficientWithInt:(jint)position;

- (id<JavaUtilList>)createResultsWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                  withOrgApacheLuceneSearchTopFieldDocs:(OrgApacheLuceneSearchTopFieldDocs *)hits
                                                                withInt:(jint)num
                                               withJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                                            withBoolean:(jboolean)doHighlight
                                                        withJavaUtilSet:(id<JavaUtilSet>)matchedTokens
                                                           withNSString:(NSString *)prefixToken;

- (OrgApacheLuceneDocumentFieldType *)getTextFieldType;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester)

/*!
 @brief Coefficient used for linear blending
 */
inline jdouble OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_get_LINEAR_COEF();
inline jdouble OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_set_LINEAR_COEF(jdouble value);
inline jdouble *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_getRef_LINEAR_COEF();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jdouble OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_LINEAR_COEF;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester, LINEAR_COEF, jdouble)

/*!
 @brief Default factor
 */
inline jint OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_get_DEFAULT_NUM_FACTOR();
inline jint OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_set_DEFAULT_NUM_FACTOR(jint value);
inline jint *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_getRef_DEFAULT_NUM_FACTOR();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_DEFAULT_NUM_FACTOR;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester, DEFAULT_NUM_FACTOR, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *self, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *new_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *create_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *new_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *create_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *self, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *new_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *create_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *new_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *create_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *self, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild, jboolean allTermsRequired, jboolean highlight);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *new_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild, jboolean allTermsRequired, jboolean highlight) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester *create_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneAnalysisAnalyzer_withInt_withOrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneAnalysisAnalyzer *indexAnalyzer, OrgApacheLuceneAnalysisAnalyzer *queryAnalyzer, jint minPrefixChars, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *blenderType, jint numFactor, jboolean commitOnBuild, jboolean allTermsRequired, jboolean highlight);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester)

#endif

#if !defined (OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester || defined(INCLUDE_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType))
#define OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_Enum) {
  OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_Enum_CUSTOM = 0,
  OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_Enum_POSITION_LINEAR = 1,
  OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_Enum_POSITION_RECIPROCAL = 2,
};

/*!
 @brief The different types of blender.
 */
@interface OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType : JavaLangEnum < NSCopying >

+ (OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *)CUSTOM;

+ (OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *)POSITION_LINEAR;

+ (OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *)POSITION_RECIPROCAL;

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;
- (OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_values_[];

/*!
 @brief Application dependent; override <code>calculateCoefficient</code>
  to compute it.
 */
inline OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_get_CUSTOM();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType, CUSTOM)

/*!
 @brief weight*(1 - 0.10*position)
 */
inline OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_get_POSITION_LINEAR();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType, POSITION_LINEAR)

/*!
 @brief weight/(1+position)
 */
inline OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_get_POSITION_RECIPROCAL();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType, POSITION_RECIPROCAL)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_values();

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType *OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester_BlenderType)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingBlendedInfixSuggester")