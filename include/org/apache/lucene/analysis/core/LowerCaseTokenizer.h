//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LowerCaseTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer

#if !defined (OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer))
#define OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisCoreLetterTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisCoreLetterTokenizer 1
#include "org/apache/lucene/analysis/core/LetterTokenizer.h"

@class OrgApacheLuceneUtilAttributeFactory;

/*!
 @brief LowerCaseTokenizer performs the function of LetterTokenizer
 and LowerCaseFilter together.
 It divides text at non-letters and converts
 them to lower case.  While it is functionally equivalent to the combination
 of LetterTokenizer and LowerCaseFilter, there is a performance advantage
 to doing the two tasks at once, hence this (redundant) implementation.
 <P>
 Note: this does a decent job for most European languages, but does a terrible
 job for some Asian languages, where words are not separated by spaces.
 </p>
 */
@interface OrgApacheLuceneAnalysisCoreLowerCaseTokenizer : OrgApacheLuceneAnalysisCoreLetterTokenizer

#pragma mark Public

/*!
 @brief Construct a new LowerCaseTokenizer.
 */
- (instancetype)init;

/*!
 @brief Construct a new LowerCaseTokenizer using a given
 <code>org.apache.lucene.util.AttributeFactory</code>.
 @param factory
 the attribute factory to use for this <code>Tokenizer</code>
 */
- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

#pragma mark Protected

/*!
 @brief Converts char to lower case
 <code>Character.toLowerCase(int)</code>.
 */
- (jint)normalizeWithInt:(jint)c;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCoreLowerCaseTokenizer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_init(OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *new_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *create_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *new_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *create_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCoreLowerCaseTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer")