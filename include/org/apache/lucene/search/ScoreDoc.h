//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ScoreDoc.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchScoreDoc_INCLUDE_ALL")
#if OrgApacheLuceneSearchScoreDoc_RESTRICT
#define OrgApacheLuceneSearchScoreDoc_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchScoreDoc_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchScoreDoc_RESTRICT

#if !defined (_OrgApacheLuceneSearchScoreDoc_) && (OrgApacheLuceneSearchScoreDoc_INCLUDE_ALL || OrgApacheLuceneSearchScoreDoc_INCLUDE)
#define _OrgApacheLuceneSearchScoreDoc_

@interface OrgApacheLuceneSearchScoreDoc : NSObject {
 @public
  jfloat score_;
  jint doc_;
  jint shardIndex_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score;

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score
                    withInt:(jint)shardIndex;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoreDoc)

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(OrgApacheLuceneSearchScoreDoc *self, jint doc, jfloat score);

FOUNDATION_EXPORT OrgApacheLuceneSearchScoreDoc *new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(jint doc, jfloat score) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(OrgApacheLuceneSearchScoreDoc *self, jint doc, jfloat score, jint shardIndex);

FOUNDATION_EXPORT OrgApacheLuceneSearchScoreDoc *new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(jint doc, jfloat score, jint shardIndex) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchScoreDoc)

#endif

#pragma pop_macro("OrgApacheLuceneSearchScoreDoc_INCLUDE_ALL")