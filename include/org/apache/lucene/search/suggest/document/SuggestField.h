//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/SuggestField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestField")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentSuggestField
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestField 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentSuggestField

#if !defined (OrgApacheLuceneSearchSuggestDocumentSuggestField_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestField || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentSuggestField))
#define OrgApacheLuceneSearchSuggestDocumentSuggestField_

#define RESTRICT_OrgApacheLuceneDocumentField 1
#define INCLUDE_OrgApacheLuceneDocumentField 1
#include "org/apache/lucene/document/Field.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream;

/*!
 @brief <p>
 Field that indexes a string value and a weight as a weighted completion
 against a named suggester.
 Field is tokenized, not stored and stores documents, frequencies and positions.
 Field can be used to provide near real time document suggestions.
 </p>
 <p>
 Besides the usual <code>org.apache.lucene.analysis.Analyzer</code>s,
 <code>CompletionAnalyzer</code>
 can be used to tune suggest field only parameters
 (e.g. preserving token seperators, preserving position increments
 when converting the token stream to an automaton)
 </p>
 <p>
 Example indexing usage:
 <pre class="prettyprint">
 document.add(new SuggestField(name, "suggestion", 4));
 
@endcode
 To perform document suggestions based on the this field, use
 <code>SuggestIndexSearcher.suggest(CompletionQuery,int)</code>
 */
@interface OrgApacheLuceneSearchSuggestDocumentSuggestField : OrgApacheLuceneDocumentField

+ (OrgApacheLuceneDocumentFieldType *)FIELD_TYPE;

+ (jbyte)TYPE;

#pragma mark Public

/*!
 @brief Creates a <code>SuggestField</code>
 @param name   field name
 @param value  field value to get suggestions on
 @param weight field weight
 @throws IllegalArgumentException if either the name or value is null,
 if value is an empty string, if the weight is negative, if value contains
 any reserved characters
 */
- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
                         withInt:(jint)weight;

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)reuse;

#pragma mark Protected

/*!
 @brief Returns a byte to denote the type of the field
 */
- (jbyte)type;

/*!
 @brief Wraps a <code>stream</code> with a CompletionTokenStream.
 Subclasses can override this method to change the indexing pipeline.
 */
- (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *)wrapTokenStreamWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentSuggestField)

/*!
 @brief Default field type for suggest field
 */
inline OrgApacheLuceneDocumentFieldType *OrgApacheLuceneSearchSuggestDocumentSuggestField_get_FIELD_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSuggestDocumentSuggestField, FIELD_TYPE, OrgApacheLuceneDocumentFieldType *)

inline jbyte OrgApacheLuceneSearchSuggestDocumentSuggestField_get_TYPE();
#define OrgApacheLuceneSearchSuggestDocumentSuggestField_TYPE 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentSuggestField, TYPE, jbyte)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentSuggestField_initWithNSString_withNSString_withInt_(OrgApacheLuceneSearchSuggestDocumentSuggestField *self, NSString *name, NSString *value, jint weight);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentSuggestField *new_OrgApacheLuceneSearchSuggestDocumentSuggestField_initWithNSString_withNSString_withInt_(NSString *name, NSString *value, jint weight) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentSuggestField *create_OrgApacheLuceneSearchSuggestDocumentSuggestField_initWithNSString_withNSString_withInt_(NSString *name, NSString *value, jint weight);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentSuggestField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentSuggestField")