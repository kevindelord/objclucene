//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/TermsFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesTermsFilter")
#ifdef RESTRICT_OrgApacheLuceneQueriesTermsFilter
#define INCLUDE_ALL_OrgApacheLuceneQueriesTermsFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesTermsFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesTermsFilter

#if !defined (OrgApacheLuceneQueriesTermsFilter_) && (INCLUDE_ALL_OrgApacheLuceneQueriesTermsFilter || defined(INCLUDE_OrgApacheLuceneQueriesTermsFilter))
#define OrgApacheLuceneQueriesTermsFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Constructs a filter for docs matching any of the terms added to this class.
 Unlike a RangeFilter this can be used for filtering on multiple terms that are not necessarily in
 a sequence. An example might be a collection of primary keys from a database query result or perhaps
 a choice of "category" labels picked by the end user. As a filter, this is much faster than the
 equivalent query (a BooleanQuery with many "should" TermQueries)
 */
@interface OrgApacheLuceneQueriesTermsFilter : OrgApacheLuceneSearchFilter < OrgApacheLuceneUtilAccountable >

#pragma mark Public

/*!
 @brief Creates a new <code>TermsFilter</code> from the given list.
 The list
 can contain duplicate terms and multiple fields.
 */
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)terms;

/*!
 @brief Creates a new <code>TermsFilter</code> from the given <code>BytesRef</code> array for
 a single field.
 */
- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneUtilBytesRefArray:(IOSObjectArray *)terms;

/*!
 @brief Creates a new <code>TermsFilter</code> from the given <code>BytesRef</code> list for
 a single field.
 */
- (instancetype)initWithNSString:(NSString *)field
                withJavaUtilList:(id<JavaUtilList>)terms;

/*!
 @brief Creates a new <code>TermsFilter</code> from the given array.
 The array can
 contain duplicate terms and multiple fields.
 */
- (instancetype)initWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms;

- (jboolean)isEqual:(id)obj;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (NSUInteger)hash;

- (jlong)ramBytesUsed;

- (NSString *)toStringWithNSString:(NSString *)defaultField;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueriesTermsFilter)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsFilter_initWithJavaUtilList_(OrgApacheLuceneQueriesTermsFilter *self, id<JavaUtilList> terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *new_OrgApacheLuceneQueriesTermsFilter_initWithJavaUtilList_(id<JavaUtilList> terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *create_OrgApacheLuceneQueriesTermsFilter_initWithJavaUtilList_(id<JavaUtilList> terms);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsFilter_initWithNSString_withJavaUtilList_(OrgApacheLuceneQueriesTermsFilter *self, NSString *field, id<JavaUtilList> terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *new_OrgApacheLuceneQueriesTermsFilter_initWithNSString_withJavaUtilList_(NSString *field, id<JavaUtilList> terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *create_OrgApacheLuceneQueriesTermsFilter_initWithNSString_withJavaUtilList_(NSString *field, id<JavaUtilList> terms);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(OrgApacheLuceneQueriesTermsFilter *self, NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *new_OrgApacheLuceneQueriesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *create_OrgApacheLuceneQueriesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesTermsFilter_initWithOrgApacheLuceneIndexTermArray_(OrgApacheLuceneQueriesTermsFilter *self, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *new_OrgApacheLuceneQueriesTermsFilter_initWithOrgApacheLuceneIndexTermArray_(IOSObjectArray *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueriesTermsFilter *create_OrgApacheLuceneQueriesTermsFilter_initWithOrgApacheLuceneIndexTermArray_(IOSObjectArray *terms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesTermsFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesTermsFilter")