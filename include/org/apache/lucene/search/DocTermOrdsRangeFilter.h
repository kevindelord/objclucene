//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocTermOrdsRangeFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRangeFilter")
#ifdef RESTRICT_OrgApacheLuceneSearchDocTermOrdsRangeFilter
#define INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRangeFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRangeFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchDocTermOrdsRangeFilter

#if !defined (OrgApacheLuceneSearchDocTermOrdsRangeFilter_) && (INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRangeFilter || defined(INCLUDE_OrgApacheLuceneSearchDocTermOrdsRangeFilter))
#define OrgApacheLuceneSearchDocTermOrdsRangeFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@class OrgApacheLuceneUtilBytesRef;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief A range filter built on top of a cached multi-valued term field (from <code>org.apache.lucene.index.LeafReader.getSortedSetDocValues</code>).
 <p>Like <code>DocValuesRangeFilter</code>, this is just a specialized range query versus
 using a TermRangeQuery with <code>DocValuesRewriteMethod</code>: it will only do
 two ordinal to term lookups.</p>
 */
@interface OrgApacheLuceneSearchDocTermOrdsRangeFilter : OrgApacheLuceneSearchFilter {
 @public
  NSString *field_;
  OrgApacheLuceneUtilBytesRef *lowerVal_;
  OrgApacheLuceneUtilBytesRef *upperVal_;
  jboolean includeLower_;
  jboolean includeUpper_;
}

#pragma mark Public

- (jboolean)isEqual:(id)o;

/*!
 @brief This method is implemented for each data type
 */
- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

/*!
 @brief Returns the field name for this filter
 */
- (NSString *)getField;

/*!
 @brief Returns the lower value of this range filter
 */
- (OrgApacheLuceneUtilBytesRef *)getLowerVal;

/*!
 @brief Returns the upper value of this range filter
 */
- (OrgApacheLuceneUtilBytesRef *)getUpperVal;

- (NSUInteger)hash;

/*!
 @brief Returns <code>true</code> if the lower endpoint is inclusive
 */
- (jboolean)includesLower;

/*!
 @brief Returns <code>true</code> if the upper endpoint is inclusive
 */
- (jboolean)includesUpper;

/*!
 @brief Creates a BytesRef range filter using <code>org.apache.lucene.index.LeafReader.getSortedSetDocValues</code>.
 This works with all
 fields containing zero or one term in the field. The range can be half-open by setting one
 of the values to <code>null</code>.
 */
+ (OrgApacheLuceneSearchDocTermOrdsRangeFilter *)newBytesRefRangeWithNSString:(NSString *)field
                                              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerVal
                                              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperVal
                                                                  withBoolean:(jboolean)includeLower
                                                                  withBoolean:(jboolean)includeUpper OBJC_METHOD_FAMILY_NONE;

- (NSString *)toStringWithNSString:(NSString *)defaultField;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocTermOrdsRangeFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocTermOrdsRangeFilter, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocTermOrdsRangeFilter, lowerVal_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocTermOrdsRangeFilter, upperVal_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT OrgApacheLuceneSearchDocTermOrdsRangeFilter *OrgApacheLuceneSearchDocTermOrdsRangeFilter_newBytesRefRangeWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *field, OrgApacheLuceneUtilBytesRef *lowerVal, OrgApacheLuceneUtilBytesRef *upperVal, jboolean includeLower, jboolean includeUpper);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocTermOrdsRangeFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRangeFilter")