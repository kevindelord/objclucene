//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MultiValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource")
#ifdef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource 1
#endif
#undef RESTRICT_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource

#if !defined (OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_) && (INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource || defined(INCLUDE_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource))
#define OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_

#define RESTRICT_OrgApacheLuceneQueriesFunctionValueSource 1
#define INCLUDE_OrgApacheLuceneQueriesFunctionValueSource 1
#include "org/apache/lucene/queries/function/ValueSource.h"

/*!
 @brief A <code>ValueSource</code> that abstractly represents <code>ValueSource</code>s for
 poly fields, and other things.
 */
@interface OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource : OrgApacheLuceneQueriesFunctionValueSource

#pragma mark Public

- (instancetype)init;

- (jint)dimension;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource_init(OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueriesFunctionValuesourceMultiValueSource")