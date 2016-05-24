//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/parser/EscapeQuerySyntaxImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl))
#define OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax 1
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

@class JavaUtilLocale;
@class OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax_Type;
@class OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence;
@protocol JavaLangCharSequence;

/*!
 @brief Implementation of <code>EscapeQuerySyntax</code> for the standard lucene
 syntax.
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl : NSObject < OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax >

#pragma mark Public

- (instancetype)init;

/*!
 @brief Returns a String where the escape char has been removed, or kept only once
 if there was a double escape.
 Supports escaped unicode characters, e. g. translates <code>A</code> to
 <code>A</code>.
 */
+ (OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *)discardEscapeCharWithJavaLangCharSequence:(id<JavaLangCharSequence>)input;

- (id<JavaLangCharSequence>)escapeWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                        withJavaUtilLocale:(JavaUtilLocale *)locale
withOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax_Type:(OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax_Type *)type;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl)

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreUtilUnescapedCharSequence *OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_discardEscapeCharWithJavaLangCharSequence_(id<JavaLangCharSequence> input);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *new_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl *create_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardParserEscapeQuerySyntaxImpl")