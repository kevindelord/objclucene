//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/std40/StandardTokenizerImpl40.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_RESTRICT
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_) && (OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_INCLUDE_ALL || OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_INCLUDE)
#define _OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_

@class JavaIoReader;
@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;

#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_YYEOF -1
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_YYINITIAL 0
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_WORD_TYPE 0
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_NUMERIC_TYPE 6
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_SOUTH_EAST_ASIAN_TYPE 9
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_IDEOGRAPHIC_TYPE 10
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_HIRAGANA_TYPE 11
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_KATAKANA_TYPE 12
#define OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_HANGUL_TYPE 13

@interface OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40 : NSObject

#pragma mark Public

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg;

- (jint)getNextToken;

- (void)getTextWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)t;

- (void)setBufferSizeWithInt:(jint)numChars;

- (void)yybeginWithInt:(jint)newState;

- (jint)yychar;

- (jchar)yycharatWithInt:(jint)pos;

- (void)yyclose;

- (jint)yylength;

- (void)yypushbackWithInt:(jint)number;

- (void)yyresetWithJavaIoReader:(JavaIoReader *)reader;

- (jint)yystate;

- (NSString *)yytext;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, YYEOF, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, YYINITIAL, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, WORD_TYPE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, NUMERIC_TYPE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, SOUTH_EAST_ASIAN_TYPE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, IDEOGRAPHIC_TYPE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, HIRAGANA_TYPE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, KATAKANA_TYPE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40, HANGUL_TYPE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40 *self, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40 *new_OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_initWithJavaIoReader_(JavaIoReader *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisStandardStd40StandardTokenizerImpl40_INCLUDE_ALL")