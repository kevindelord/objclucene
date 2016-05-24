//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/GrowableByteArrayDataOutput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilGrowableByteArrayDataOutput")
#ifdef RESTRICT_OrgApacheLuceneUtilGrowableByteArrayDataOutput
#define INCLUDE_ALL_OrgApacheLuceneUtilGrowableByteArrayDataOutput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilGrowableByteArrayDataOutput 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilGrowableByteArrayDataOutput

#if !defined (OrgApacheLuceneUtilGrowableByteArrayDataOutput_) && (INCLUDE_ALL_OrgApacheLuceneUtilGrowableByteArrayDataOutput || defined(INCLUDE_OrgApacheLuceneUtilGrowableByteArrayDataOutput))
#define OrgApacheLuceneUtilGrowableByteArrayDataOutput_

#define RESTRICT_OrgApacheLuceneStoreDataOutput 1
#define INCLUDE_OrgApacheLuceneStoreDataOutput 1
#include "org/apache/lucene/store/DataOutput.h"

@class IOSByteArray;

/*!
 @brief A <code>DataOutput</code> that can be used to build a byte[].
 */
@interface OrgApacheLuceneUtilGrowableByteArrayDataOutput : OrgApacheLuceneStoreDataOutput {
 @public
  /*!
   @brief The bytes
   */
  IOSByteArray *bytes_;
  /*!
   @brief The length
   */
  jint length_;
}

#pragma mark Public

/*!
 @brief Create a <code>GrowableByteArrayDataOutput</code> with the given initial capacity.
 */
- (instancetype)initWithInt:(jint)cp;

- (void)writeByteWithByte:(jbyte)b;

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)off
                        withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilGrowableByteArrayDataOutput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilGrowableByteArrayDataOutput, bytes_, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(OrgApacheLuceneUtilGrowableByteArrayDataOutput *self, jint cp);

FOUNDATION_EXPORT OrgApacheLuceneUtilGrowableByteArrayDataOutput *new_OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(jint cp) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilGrowableByteArrayDataOutput *create_OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(jint cp);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilGrowableByteArrayDataOutput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilGrowableByteArrayDataOutput")