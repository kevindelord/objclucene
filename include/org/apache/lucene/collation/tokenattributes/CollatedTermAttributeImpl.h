//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/collation/tokenattributes/CollatedTermAttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl")
#ifdef RESTRICT_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl
#define INCLUDE_ALL_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl

#if !defined (OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl_) && (INCLUDE_ALL_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl || defined(INCLUDE_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl))
#define OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl_

#define RESTRICT_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl 1
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.h"

@class JavaTextCollator;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Extension of <code>CharTermAttributeImpl</code> that encodes the term
 text as a binary Unicode collation key instead of as UTF-8 bytes.
 */
@interface OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl : OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl

#pragma mark Public

/*!
 @brief Create a new CollatedTermAttributeImpl
 @param collator Collation key generator
 */
- (instancetype)initWithJavaTextCollator:(JavaTextCollator *)collator;

- (OrgApacheLuceneUtilBytesRef *)getBytesRef;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl_initWithJavaTextCollator_(OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl *self, JavaTextCollator *collator);

FOUNDATION_EXPORT OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl *new_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl_initWithJavaTextCollator_(JavaTextCollator *collator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl *create_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl_initWithJavaTextCollator_(JavaTextCollator *collator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl")
