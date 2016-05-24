//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/GlobalOrdinalsWithScoreCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector
#ifdef INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore
#define INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg
#define INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum
#define INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max
#define INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min
#define INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector 1
#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores;
@class OrgApacheLuceneSearchJoinScoreMode;
@class OrgApacheLuceneUtilLongBitSet;
@protocol OrgApacheLuceneSearchLeafCollector;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector : NSObject < OrgApacheLuceneSearchCollector > {
 @public
  NSString *field_;
  jboolean doMinMax_;
  jint min_;
  jint max_;
  OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap_;
  OrgApacheLuceneUtilLongBitSet *collectedOrds_;
  OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores *scores_;
  OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences *occurrences_;
}

+ (jint)arraySize;

#pragma mark Public

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (jboolean)matchWithInt:(jint)globalOrd;

- (jboolean)needsScores;

- (jfloat)scoreWithInt:(jint)globalOrdinal;

#pragma mark Protected

- (void)doScoreWithInt:(jint)globalOrd
             withFloat:(jfloat)existingScore
             withFloat:(jfloat)newScore;

- (jfloat)unset;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                        withLong:(jlong)valueCount
withOrgApacheLuceneSearchJoinScoreMode:(OrgApacheLuceneSearchJoinScoreMode *)scoreMode
                         withInt:(jint)min
                         withInt:(jint)max;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector, ordinalMap_, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector, collectedOrds_, OrgApacheLuceneUtilLongBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector, scores_, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector, occurrences_, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences *)

inline jint OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_get_arraySize();
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_arraySize 4096
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector, arraySize, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withOrgApacheLuceneSearchJoinScoreMode_withInt_withInt_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *self, NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, OrgApacheLuceneSearchJoinScoreMode *scoreMode, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector_

#define RESTRICT_OrgApacheLuceneSearchLeafCollector 1
#define INCLUDE_OrgApacheLuceneSearchLeafCollector 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneUtilLongValues;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector : NSObject < OrgApacheLuceneSearchLeafCollector >

#pragma mark Public

- (void)collectWithInt:(jint)doc;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector:(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *)outer$
                                          withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)docTermOrds
                                                withOrgApacheLuceneUtilLongValues:(OrgApacheLuceneUtilLongValues *)segmentOrdToGlobalOrdLookup;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector *self, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilLongValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds, OrgApacheLuceneUtilLongValues *segmentOrdToGlobalOrdLookup);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_OrdinalMapCollector)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector_

#define RESTRICT_OrgApacheLuceneSearchLeafCollector 1
#define INCLUDE_OrgApacheLuceneSearchLeafCollector 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector : NSObject < OrgApacheLuceneSearchLeafCollector >

#pragma mark Public

- (void)collectWithInt:(jint)doc;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector:(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *)outer$
                                          withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)docTermOrds;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector *self, OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector_initWithOrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_withOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector *outer$, OrgApacheLuceneIndexSortedDocValues *docTermOrds);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_SegmentOrdinalCollector)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min_

@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min : OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                        withLong:(jlong)valueCount
                         withInt:(jint)min
                         withInt:(jint)max;

#pragma mark Protected

- (void)doScoreWithInt:(jint)globalOrd
             withFloat:(jfloat)existingScore
             withFloat:(jfloat)newScore;

- (jfloat)unset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min *self, NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Min)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max_

@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max : OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                        withLong:(jlong)valueCount
                         withInt:(jint)min
                         withInt:(jint)max;

#pragma mark Protected

- (void)doScoreWithInt:(jint)globalOrd
             withFloat:(jfloat)existingScore
             withFloat:(jfloat)newScore;

- (jfloat)unset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max *self, NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Max)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum_

@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum : OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                        withLong:(jlong)valueCount
                         withInt:(jint)min
                         withInt:(jint)max;

#pragma mark Protected

- (void)doScoreWithInt:(jint)globalOrd
             withFloat:(jfloat)existingScore
             withFloat:(jfloat)newScore;

- (jfloat)unset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum *self, NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Sum)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg_

@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg : OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                        withLong:(jlong)valueCount
                         withInt:(jint)min
                         withInt:(jint)max;

- (jfloat)scoreWithInt:(jint)globalOrdinal;

#pragma mark Protected

- (void)doScoreWithInt:(jint)globalOrd
             withFloat:(jfloat)existingScore
             withFloat:(jfloat)newScore;

- (jfloat)unset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg *self, NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Avg)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore_

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexMultiDocValues_OrdinalMap;
@protocol OrgApacheLuceneSearchLeafCollector;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore : OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMultiDocValues_OrdinalMap:(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)ordinalMap
                        withLong:(jlong)valueCount
                         withInt:(jint)min
                         withInt:(jint)max;

- (id<OrgApacheLuceneSearchLeafCollector>)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (jboolean)needsScores;

- (jfloat)scoreWithInt:(jint)globalOrdinal;

#pragma mark Protected

- (void)doScoreWithInt:(jint)globalOrd
             withFloat:(jfloat)existingScore
             withFloat:(jfloat)newScore;

- (jfloat)unset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore *self, NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore *new_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore *create_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore_initWithNSString_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_withLong_withInt_withInt_(NSString *field, OrgApacheLuceneIndexMultiDocValues_OrdinalMap *ordinalMap, jlong valueCount, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_NoScore)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores_

@class IOSObjectArray;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores : NSObject {
 @public
  IOSObjectArray *blocks_;
  jfloat unset_;
}

#pragma mark Public

- (jfloat)getScoreWithInt:(jint)globalOrdinal;

- (void)setScoreWithInt:(jint)globalOrdinal
              withFloat:(jfloat)score;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores, blocks_, IOSObjectArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Scores)

#endif

#if !defined (OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector || defined(INCLUDE_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences))
#define OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences_

@class IOSObjectArray;

@interface OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences : NSObject {
 @public
  IOSObjectArray *blocks_;
}

#pragma mark Public

- (jint)getOccurrenceWithInt:(jint)globalOrdinal;

- (void)incrementWithInt:(jint)globalOrdinal;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences, blocks_, IOSObjectArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector_Occurrences)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinGlobalOrdinalsWithScoreCollector")