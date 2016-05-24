//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ConstantScoreWeight.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchConstantScoreWeight")
#ifdef RESTRICT_OrgApacheLuceneSearchConstantScoreWeight
#define INCLUDE_ALL_OrgApacheLuceneSearchConstantScoreWeight 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchConstantScoreWeight 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchConstantScoreWeight

#if !defined (OrgApacheLuceneSearchConstantScoreWeight_) && (INCLUDE_ALL_OrgApacheLuceneSearchConstantScoreWeight || defined(INCLUDE_OrgApacheLuceneSearchConstantScoreWeight))
#define OrgApacheLuceneSearchConstantScoreWeight_

#define RESTRICT_OrgApacheLuceneSearchWeight 1
#define INCLUDE_OrgApacheLuceneSearchWeight 1
#include "org/apache/lucene/search/Weight.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilSet;

/*!
 @brief A Weight that has a constant score equal to the boost of the wrapped query.
 This is typically useful when building queries which do not produce
 meaningful scores and are mostly useful for filtering.
 */
@interface OrgApacheLuceneSearchConstantScoreWeight : OrgApacheLuceneSearchWeight

#pragma mark Public

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

/*!
 @brief Return the score produced by this <code>Weight</code>.
 */
- (jfloat)score;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreWeight)

FOUNDATION_EXPORT void OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreWeight *self, OrgApacheLuceneSearchQuery *query);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreWeight)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchConstantScoreWeight")