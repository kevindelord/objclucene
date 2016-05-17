//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/FlagsAttribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute

#if !defined (OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute || defined(INCLUDE_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute))
#define OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_

#define RESTRICT_OrgApacheLuceneUtilAttribute 1
#define INCLUDE_OrgApacheLuceneUtilAttribute 1
#include "org/apache/lucene/util/Attribute.h"

/*!
 @brief This attribute can be used to pass different flags down the <code>Tokenizer</code> chain,
 e.g. from one TokenFilter to another one.
 <p>
 This is completely distinct from <code>TypeAttribute</code>, although they do share similar purposes.
 The flags can be used to encode information about the token for use by other 
 <code>org.apache.lucene.analysis.TokenFilter</code>s.
  While we think this is here to stay, we may want to change it to be a long.
 */
@protocol OrgApacheLuceneAnalysisTokenattributesFlagsAttribute < OrgApacheLuceneUtilAttribute, NSObject, JavaObject >

/*!
 @brief Get the bitset for any bits that have been set.
 @return The bits
 - seealso: #getFlags()
 */
- (jint)getFlags;

/*!
 @brief Set the flags to a new bitset.
 - seealso: #getFlags()
 */
- (void)setFlagsWithInt:(jint)flags;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesFlagsAttribute)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesFlagsAttribute)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenattributesFlagsAttribute")
