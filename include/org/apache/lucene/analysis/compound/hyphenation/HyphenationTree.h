//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/hyphenation/HyphenationTree.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree

#if !defined (OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree || defined(INCLUDE_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree))
#define OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_

#define RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree 1
#define INCLUDE_OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree 1
#include "org/apache/lucene/analysis/compound/hyphenation/TernaryTree.h"

#define RESTRICT_OrgApacheLuceneAnalysisCompoundHyphenationPatternConsumer 1
#define INCLUDE_OrgApacheLuceneAnalysisCompoundHyphenationPatternConsumer 1
#include "org/apache/lucene/analysis/compound/hyphenation/PatternConsumer.h"

@class IOSByteArray;
@class IOSCharArray;
@class JavaIoPrintStream;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@class OrgApacheLuceneAnalysisCompoundHyphenationByteVector;
@class OrgApacheLuceneAnalysisCompoundHyphenationHyphenation;
@class OrgXmlSaxInputSource;

/*!
 @brief This tree structure stores the hyphenation patterns in an efficient way for
 fast lookup.
 It provides the provides the method to hyphenate a word.
 This class has been taken from the Apache FOP project (http://xmlgraphics.apache.org/fop/). They have been slightly modified. 
 */
@interface OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree : OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree < OrgApacheLuceneAnalysisCompoundHyphenationPatternConsumer > {
 @public
  /*!
   @brief value space: stores the interletter values
   */
  OrgApacheLuceneAnalysisCompoundHyphenationByteVector *vspace_;
  /*!
   @brief This map stores hyphenation exceptions
   */
  JavaUtilHashMap *stoplist_;
  /*!
   @brief This map stores the character classes
   */
  OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *classmap_;
}

#pragma mark Public

- (instancetype)init;

/*!
 @brief Add a character class to the tree.
 It is used by
 <code>PatternParser</code> as callback to add character classes.
 Character classes define the valid word characters for hyphenation. If a
 word contains a character not defined in any of the classes, it is not
 hyphenated. It also defines a way to normalize the characters in order to
 compare them with the stored patterns. Usually pattern files use only lower
 case characters, in this case a class for letter 'a', for example, should
 be defined as "aA", the first character being the normalization char.
 */
- (void)addClassWithNSString:(NSString *)chargroup;

/*!
 @brief Add an exception to the tree.
 It is used by
 <code>PatternParser</code> class as callback to store the
 hyphenation exceptions.
 @param word normalized word
 @param hyphenatedword a vector of alternating strings and
 <code>hyphen</code> objects.
 */
- (void)addExceptionWithNSString:(NSString *)word
           withJavaUtilArrayList:(JavaUtilArrayList *)hyphenatedword;

/*!
 @brief Add a pattern to the tree.
 Mainly, to be used by
 <code>PatternParser</code> class as callback to add a pattern to
 the tree.
 @param pattern the hyphenation pattern
 @param ivalue interletter weight values indicating the desirability and
 priority of hyphenating at a given point within the pattern. It
 should contain only digit characters. (i.e. '0' to '9').
 */
- (void)addPatternWithNSString:(NSString *)pattern
                  withNSString:(NSString *)ivalue;

- (NSString *)findPatternWithNSString:(NSString *)pat;

/*!
 @brief Hyphenate word and return an array of hyphenation points.
 @param w char array that contains the word
 @param offset Offset to first character in word
 @param len Length of word
 @param remainCharCount Minimum number of characters allowed before the
 hyphenation point.
 @param pushCharCount Minimum number of characters allowed after the
 hyphenation point.
 @return a <code>Hyphenation</code> object representing the
 hyphenated word or null if word is not hyphenated.
 */
- (OrgApacheLuceneAnalysisCompoundHyphenationHyphenation *)hyphenateWithCharArray:(IOSCharArray *)w
                                                                          withInt:(jint)offset
                                                                          withInt:(jint)len
                                                                          withInt:(jint)remainCharCount
                                                                          withInt:(jint)pushCharCount;

/*!
 @brief Hyphenate word and return a Hyphenation object.
 @param word the word to be hyphenated
 @param remainCharCount Minimum number of characters allowed before the
 hyphenation point.
 @param pushCharCount Minimum number of characters allowed after the
 hyphenation point.
 @return a <code>Hyphenation</code> object representing the
 hyphenated word or null if word is not hyphenated.
 */
- (OrgApacheLuceneAnalysisCompoundHyphenationHyphenation *)hyphenateWithNSString:(NSString *)word
                                                                         withInt:(jint)remainCharCount
                                                                         withInt:(jint)pushCharCount;

/*!
 @brief Read hyphenation patterns from an XML file.
 @param source the InputSource for the file
 @throws IOException In case the parsing fails
 */
- (void)loadPatternsWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)source;

- (void)printStatsWithJavaIoPrintStream:(JavaIoPrintStream *)outArg;

#pragma mark Protected

- (IOSByteArray *)getValuesWithInt:(jint)k;

/*!
 @brief String compare, returns 0 if equal or t is a substring of s
 */
- (jint)hstrcmpWithCharArray:(IOSCharArray *)s
                     withInt:(jint)si
               withCharArray:(IOSCharArray *)t
                     withInt:(jint)ti;

/*!
 @brief Packs the values by storing them in 4 bits, two values into a byte Values
 range is from 0 to 9.
 We use zero as terminator, so we'll add 1 to the
 value.
 @param values a string of digits from '0' to '9' representing the
 interletter values.
 @return the index into the vspace array where the packed values are stored.
 */
- (jint)packValuesWithNSString:(NSString *)values;

/*!
 @brief <p>
 Search for all possible partial matches of word starting at index an update
 interletter values.
 In other words, it does something like:
 </p>
 <code>
 for(i=0; i&lt;patterns.length; i++) {
 if ( word.substring(index).startsWidth(patterns[i]) )
 update_interletter_values(patterns[i]);
 }
 </code>
 <p>
 But it is done in an efficient way since the patterns are stored in a
 ternary tree. In fact, this is the whole purpose of having the tree: doing
 this search without having to test every single pattern. The number of
 patterns for languages such as English range from 4000 to 10000. Thus,
 doing thousands of string comparisons for each word to hyphenate would be
 really slow without the tree. The tradeoff is memory, but using a ternary
 tree instead of a trie, almost halves the the memory used by Lout or TeX.
 It's also faster than using a hash table
 </p>
 @param word null terminated word to match
 @param index start index from word
 @param il interletter values array to update
 */
- (void)searchPatternsWithCharArray:(IOSCharArray *)word
                            withInt:(jint)index
                      withByteArray:(IOSByteArray *)il;

- (NSString *)unpackValuesWithInt:(jint)k;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree, vspace_, OrgApacheLuceneAnalysisCompoundHyphenationByteVector *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree, stoplist_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree, classmap_, OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_init(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *new_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *create_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree")