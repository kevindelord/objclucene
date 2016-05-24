//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/reverse/ReverseStringFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisReverseReverseStringFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisReverseReverseStringFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisReverseReverseStringFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisReverseReverseStringFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisReverseReverseStringFilter

#if !defined (OrgApacheLuceneAnalysisReverseReverseStringFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisReverseReverseStringFilter || defined(INCLUDE_OrgApacheLuceneAnalysisReverseReverseStringFilter))
#define OrgApacheLuceneAnalysisReverseReverseStringFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class IOSCharArray;
@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief Reverse token string, for example "country" =&gt; "yrtnuoc".
 <p>
 If <code>marker</code> is supplied, then tokens will be also prepended by
 that character. For example, with a marker of &#x5C;u0001, "country" =&gt;
 "&#x5C;u0001yrtnuoc". This is useful when implementing efficient leading
 wildcards search.
 */
@interface OrgApacheLuceneAnalysisReverseReverseStringFilter : OrgApacheLuceneAnalysisTokenFilter

+ (jchar)START_OF_HEADING_MARKER;

+ (jchar)INFORMATION_SEPARATOR_MARKER;

+ (jchar)PUA_EC00_MARKER;

+ (jchar)RTL_DIRECTION_MARKER;

#pragma mark Public

/*!
 @brief Create a new ReverseStringFilter that reverses all tokens in the 
 supplied <code>TokenStream</code>.
 <p>
 The reversed tokens will not be marked. 
 </p>
 @param inArg <code>TokenStream</code> to filter
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

/*!
 @brief Create a new ReverseStringFilter that reverses and marks all tokens in the
 supplied <code>TokenStream</code>.
 <p>
 The reversed tokens will be prepended (marked) by the <code>marker</code>
 character.
 </p>
 @param inArg <code>TokenStream</code> to filter
 @param marker A character used to mark reversed tokens
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                  withChar:(jchar)marker;

- (jboolean)incrementToken;

/*!
 @brief Reverses the given input buffer in-place
 @param buffer the input char array to reverse
 */
+ (void)reverseWithCharArray:(IOSCharArray *)buffer;

/*!
 @brief Partially reverses the given input buffer in-place from offset 0
 up to the given length.
 @param buffer the input char array to reverse
 @param len the length in the buffer up to where the
 buffer should be reversed
 */
+ (void)reverseWithCharArray:(IOSCharArray *)buffer
                     withInt:(jint)len;

/*!
 @brief Partially reverses the given input buffer in-place from the given offset
 up to the given length.
 @param buffer the input char array to reverse
 @param start the offset from where to reverse the buffer
 @param len the length in the buffer up to where the
 buffer should be reversed
 */
+ (void)reverseWithCharArray:(IOSCharArray *)buffer
                     withInt:(jint)start
                     withInt:(jint)len;

/*!
 @brief Reverses the given input string
 @param input the string to reverse
 @return the given input string in reversed order
 */
+ (NSString *)reverseWithNSString:(NSString *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisReverseReverseStringFilter)

/*!
 @brief Example marker character: U+0001 (START OF HEADING)
 */
inline jchar OrgApacheLuceneAnalysisReverseReverseStringFilter_get_START_OF_HEADING_MARKER();
#define OrgApacheLuceneAnalysisReverseReverseStringFilter_START_OF_HEADING_MARKER 0x0001
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisReverseReverseStringFilter, START_OF_HEADING_MARKER, jchar)

/*!
 @brief Example marker character: U+001F (INFORMATION SEPARATOR ONE)
 */
inline jchar OrgApacheLuceneAnalysisReverseReverseStringFilter_get_INFORMATION_SEPARATOR_MARKER();
#define OrgApacheLuceneAnalysisReverseReverseStringFilter_INFORMATION_SEPARATOR_MARKER 0x001f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisReverseReverseStringFilter, INFORMATION_SEPARATOR_MARKER, jchar)

/*!
 @brief Example marker character: U+EC00 (PRIVATE USE AREA: EC00)
 */
inline jchar OrgApacheLuceneAnalysisReverseReverseStringFilter_get_PUA_EC00_MARKER();
#define OrgApacheLuceneAnalysisReverseReverseStringFilter_PUA_EC00_MARKER 0xec00
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisReverseReverseStringFilter, PUA_EC00_MARKER, jchar)

/*!
 @brief Example marker character: U+200F (RIGHT-TO-LEFT MARK)
 */
inline jchar OrgApacheLuceneAnalysisReverseReverseStringFilter_get_RTL_DIRECTION_MARKER();
#define OrgApacheLuceneAnalysisReverseReverseStringFilter_RTL_DIRECTION_MARKER 0x200f
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisReverseReverseStringFilter, RTL_DIRECTION_MARKER, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReverseReverseStringFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisReverseReverseStringFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReverseReverseStringFilter *new_OrgApacheLuceneAnalysisReverseReverseStringFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReverseReverseStringFilter *create_OrgApacheLuceneAnalysisReverseReverseStringFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReverseReverseStringFilter_initWithOrgApacheLuceneAnalysisTokenStream_withChar_(OrgApacheLuceneAnalysisReverseReverseStringFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jchar marker);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReverseReverseStringFilter *new_OrgApacheLuceneAnalysisReverseReverseStringFilter_initWithOrgApacheLuceneAnalysisTokenStream_withChar_(OrgApacheLuceneAnalysisTokenStream *inArg, jchar marker) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReverseReverseStringFilter *create_OrgApacheLuceneAnalysisReverseReverseStringFilter_initWithOrgApacheLuceneAnalysisTokenStream_withChar_(OrgApacheLuceneAnalysisTokenStream *inArg, jchar marker);

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisReverseReverseStringFilter_reverseWithNSString_(NSString *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReverseReverseStringFilter_reverseWithCharArray_(IOSCharArray *buffer);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReverseReverseStringFilter_reverseWithCharArray_withInt_(IOSCharArray *buffer, jint len);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReverseReverseStringFilter_reverseWithCharArray_withInt_withInt_(IOSCharArray *buffer, jint start, jint len);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisReverseReverseStringFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisReverseReverseStringFilter")