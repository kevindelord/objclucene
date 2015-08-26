//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocValuesTermsQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchDocValuesTermsQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchDocValuesTermsQuery_RESTRICT
#define OrgApacheLuceneSearchDocValuesTermsQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchDocValuesTermsQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchDocValuesTermsQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchDocValuesTermsQuery_) && (OrgApacheLuceneSearchDocValuesTermsQuery_INCLUDE_ALL || OrgApacheLuceneSearchDocValuesTermsQuery_INCLUDE)
#define _OrgApacheLuceneSearchDocValuesTermsQuery_

#define OrgApacheLuceneSearchQuery_RESTRICT 1
#define OrgApacheLuceneSearchQuery_INCLUDE 1
#include "org/apache/lucene/search/Query.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchDocValuesTermsQuery : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneUtilBytesRefArray:(IOSObjectArray *)terms;

- (instancetype)initWithNSString:(NSString *)field
          withJavaUtilCollection:(id<JavaUtilCollection>)terms;

- (instancetype)initWithNSString:(NSString *)field
               withNSStringArray:(IOSObjectArray *)terms;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)defaultField;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesTermsQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(OrgApacheLuceneSearchDocValuesTermsQuery *self, NSString *field, id<JavaUtilCollection> terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocValuesTermsQuery *new_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(NSString *field, id<JavaUtilCollection> terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(OrgApacheLuceneSearchDocValuesTermsQuery *self, NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocValuesTermsQuery *new_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withNSStringArray_(OrgApacheLuceneSearchDocValuesTermsQuery *self, NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocValuesTermsQuery *new_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesTermsQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchDocValuesTermsQuery_INCLUDE_ALL")