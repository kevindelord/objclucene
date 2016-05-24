//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicStats.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesBasicStats")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesBasicStats
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesBasicStats 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesBasicStats 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesBasicStats

#if !defined (OrgApacheLuceneSearchSimilaritiesBasicStats_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesBasicStats || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesBasicStats))
#define OrgApacheLuceneSearchSimilaritiesBasicStats_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesSimilarity 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight 1
#include "org/apache/lucene/search/similarities/Similarity.h"

/*!
 @brief Stores all statistics commonly used ranking methods.
 */
@interface OrgApacheLuceneSearchSimilaritiesBasicStats : OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight {
 @public
  NSString *field_;
  /*!
   @brief The number of documents.
   */
  jlong numberOfDocuments_;
  /*!
   @brief The total number of tokens in the field.
   */
  jlong numberOfFieldTokens_;
  /*!
   @brief The average field length.
   */
  jfloat avgFieldLength_;
  /*!
   @brief The document frequency.
   */
  jlong docFreq_;
  /*!
   @brief The total number of occurrences of this term across all documents.
   */
  jlong totalTermFreq_;
  /*!
   @brief Query's inner boost.
   */
  jfloat queryBoost_;
  /*!
   @brief Any outer query's boost.
   */
  jfloat topLevelBoost_;
  /*!
   @brief For most Similarities, the immediate and the top level query boosts are
 not handled differently.
   Hence, this field is just the product of the
 other two. 
   */
  jfloat totalBoost_;
}

#pragma mark Public

/*!
 @brief Constructor.
 Sets the query boost. 
 */
- (instancetype)initWithNSString:(NSString *)field
                       withFloat:(jfloat)queryBoost;

/*!
 @brief Returns the average field length.
 */
- (jfloat)getAvgFieldLength;

/*!
 @brief Returns the document frequency.
 */
- (jlong)getDocFreq;

/*!
 @brief Returns the number of documents.
 */
- (jlong)getNumberOfDocuments;

/*!
 @brief Returns the total number of tokens in the field.
 - seealso: Terms#getSumTotalTermFreq()
 */
- (jlong)getNumberOfFieldTokens;

/*!
 @brief Returns the total boost.
 */
- (jfloat)getTotalBoost;

/*!
 @brief Returns the total number of occurrences of this term across all documents.
 */
- (jlong)getTotalTermFreq;

/*!
 @brief The square of the raw normalization value.
 - seealso: #rawNormalizationValue()
 */
- (jfloat)getValueForNormalization;

/*!
 @brief No normalization is done.
 <code>topLevelBoost</code> is saved in the object,
 however. 
 */
- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost;

/*!
 @brief Sets the average field length.
 */
- (void)setAvgFieldLengthWithFloat:(jfloat)avgFieldLength;

/*!
 @brief Sets the document frequency.
 */
- (void)setDocFreqWithLong:(jlong)docFreq;

/*!
 @brief Sets the number of documents.
 */
- (void)setNumberOfDocumentsWithLong:(jlong)numberOfDocuments;

/*!
 @brief Sets the total number of tokens in the field.
 - seealso: Terms#getSumTotalTermFreq()
 */
- (void)setNumberOfFieldTokensWithLong:(jlong)numberOfFieldTokens;

/*!
 @brief Sets the total number of occurrences of this term across all documents.
 */
- (void)setTotalTermFreqWithLong:(jlong)totalTermFreq;

#pragma mark Protected

/*!
 @brief Computes the raw normalization value.
 This basic implementation returns
 the query boost. Subclasses may override this method to include other
 factors (such as idf), or to save the value for inclusion in
 <code>normalize(float,float)</code>, etc.
 */
- (jfloat)rawNormalizationValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesBasicStats)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilaritiesBasicStats, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBasicStats_initWithNSString_withFloat_(OrgApacheLuceneSearchSimilaritiesBasicStats *self, NSString *field, jfloat queryBoost);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBasicStats *new_OrgApacheLuceneSearchSimilaritiesBasicStats_initWithNSString_withFloat_(NSString *field, jfloat queryBoost) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBasicStats *create_OrgApacheLuceneSearchSimilaritiesBasicStats_initWithNSString_withFloat_(NSString *field, jfloat queryBoost);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesBasicStats)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesBasicStats")