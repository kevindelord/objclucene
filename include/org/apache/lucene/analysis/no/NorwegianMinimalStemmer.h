//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/no/NorwegianMinimalStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer

#if !defined (OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer))
#define OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer_

@class IOSCharArray;

/*!
 @brief Minimal Stemmer for Norwegian Bokmål (no-nb) and Nynorsk (no-nn)
 <p>
 Stems known plural forms for Norwegian nouns only, together with genitiv -s
 */
@interface OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer : NSObject {
 @public
  jboolean useBokmaal_;
  jboolean useNynorsk_;
}

#pragma mark Public

/*!
 @brief Creates a new NorwegianMinimalStemmer
 @param flags set to <code>NorwegianLightStemmer.BOKMAAL</code>, 
 <code>NorwegianLightStemmer.NYNORSK</code>, or both.
 */
- (instancetype)initWithInt:(jint)flags;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer_initWithInt_(OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer *self, jint flags);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer *new_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer_initWithInt_(jint flags) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer *create_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer_initWithInt_(jint flags);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisNoNorwegianMinimalStemmer")
