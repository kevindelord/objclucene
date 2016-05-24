//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/Tokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTokenizer

#if !defined (OrgApacheLuceneAnalysisTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisTokenizer))
#define OrgApacheLuceneAnalysisTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenStream 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenStream 1
#include "org/apache/lucene/analysis/TokenStream.h"

@class JavaIoReader;
@class OrgApacheLuceneUtilAttributeFactory;

/*!
 @brief A Tokenizer is a TokenStream whose input is a Reader.
 <p>
 This is an abstract class; subclasses must override <code>incrementToken()</code>
 <p>
 NOTE: Subclasses overriding <code>incrementToken()</code> must
 call <code>AttributeSource.clearAttributes()</code> before
 setting attributes.
 */
@interface OrgApacheLuceneAnalysisTokenizer : OrgApacheLuceneAnalysisTokenStream {
 @public
  /*!
   @brief The text source for this Tokenizer.
   */
  JavaIoReader *input_;
}

#pragma mark Public

/*!
 @brief 
 <p>
 <b>NOTE:</b> 
 The default implementation closes the input Reader, so
 be sure to call <code>super.close()</code> when overriding this method.
 */
- (void)close;

- (void)reset;

/*!
 @brief Expert: Set a new reader on the Tokenizer.
 Typically, an
 analyzer (in its tokenStream method) will use
 this to re-use a previously created tokenizer. 
 */
- (void)setReaderWithJavaIoReader:(JavaIoReader *)input;

#pragma mark Protected

/*!
 @brief Construct a tokenizer with no input, awaiting a call to <code>setReader(java.io.Reader)</code>
 to provide input.
 */
- (instancetype)init;

/*!
 @brief Construct a tokenizer with no input, awaiting a call to <code>setReader(java.io.Reader)</code> to
 provide input.
 @param factory attribute factory.
 */
- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

/*!
 @brief Return the corrected offset.
 If <code>input</code> is a <code>CharFilter</code> subclass
 this method calls <code>CharFilter.correctOffset</code>, else returns <code>currentOff</code>.
 @param currentOff offset as seen in the output
 @return corrected offset based on the input
 - seealso: CharFilter#correctOffset
 */
- (jint)correctOffsetWithInt:(jint)currentOff;

#pragma mark Package-Private

- (void)setReaderTestPoint;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisTokenizer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenizer, input_, JavaIoReader *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_init(OrgApacheLuceneAnalysisTokenizer *self);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer")