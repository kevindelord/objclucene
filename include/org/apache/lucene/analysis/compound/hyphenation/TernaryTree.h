//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/hyphenation/TernaryTree.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_RESTRICT
#define OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_) && (OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE_ALL || OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE)
#define _OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_

@class IOSCharArray;
@class IOSObjectArray;
@class JavaIoPrintStream;
@class OrgApacheLuceneAnalysisCompoundHyphenationCharVector;
@protocol JavaUtilEnumeration;

#define OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_BLOCK_SIZE 2048

@interface OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree : NSObject < NSCopying > {
 @public
  IOSCharArray *lo_;
  IOSCharArray *hi_;
  IOSCharArray *eq_;
  IOSCharArray *sc_;
  OrgApacheLuceneAnalysisCompoundHyphenationCharVector *kv_;
  jchar root_;
  jchar freenode_;
  jint length_;
}

#pragma mark Public

- (void)balance;

- (OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *)clone;

- (jint)findWithCharArray:(IOSCharArray *)key
                  withInt:(jint)start;

- (jint)findWithNSString:(NSString *)key;

- (void)insertWithCharArray:(IOSCharArray *)key
                    withInt:(jint)start
                   withChar:(jchar)val;

- (void)insertWithNSString:(NSString *)key
                  withChar:(jchar)val;

- (id<JavaUtilEnumeration>)keys;

- (jboolean)knowsWithNSString:(NSString *)key;

- (void)printStatsWithJavaIoPrintStream:(JavaIoPrintStream *)outArg;

- (jint)size;

+ (jint)strcmpWithCharArray:(IOSCharArray *)a
                    withInt:(jint)startA
              withCharArray:(IOSCharArray *)b
                    withInt:(jint)startB;

+ (jint)strcmpWithNSString:(NSString *)str
             withCharArray:(IOSCharArray *)a
                   withInt:(jint)start;

+ (void)strcpyWithCharArray:(IOSCharArray *)dst
                    withInt:(jint)di
              withCharArray:(IOSCharArray *)src
                    withInt:(jint)si;

+ (jint)strlenWithCharArray:(IOSCharArray *)a;

+ (jint)strlenWithCharArray:(IOSCharArray *)a
                    withInt:(jint)start;

- (void)trimToSize;

#pragma mark Protected

- (void)init__ OBJC_METHOD_FAMILY_NONE;

- (void)insertBalancedWithNSStringArray:(IOSObjectArray *)k
                          withCharArray:(IOSCharArray *)v
                                withInt:(jint)offset
                                withInt:(jint)n;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree, lo_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree, hi_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree, eq_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree, sc_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree, kv_, OrgApacheLuceneAnalysisCompoundHyphenationCharVector *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree, BLOCK_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_init(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *new_OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_strcmpWithCharArray_withInt_withCharArray_withInt_(IOSCharArray *a, jint startA, IOSCharArray *b, jint startB);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_strcmpWithNSString_withCharArray_withInt_(NSString *str, IOSCharArray *a, jint start);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_strcpyWithCharArray_withInt_withCharArray_withInt_(IOSCharArray *dst, jint di, IOSCharArray *src, jint si);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_strlenWithCharArray_withInt_(IOSCharArray *a, jint start);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_strlenWithCharArray_(IOSCharArray *a);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree)

#endif

#if !defined (_OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator_) && (OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE_ALL || OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator_INCLUDE)
#define _OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator_

#define JavaUtilEnumeration_RESTRICT 1
#define JavaUtilEnumeration_INCLUDE 1
#include "java/util/Enumeration.h"

@class JavaLangStringBuilder;
@class JavaUtilStack;
@class OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree;

@interface OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator : NSObject < JavaUtilEnumeration > {
 @public
  jint cur_;
  NSString *curkey_;
  JavaUtilStack *ns_;
  JavaLangStringBuilder *ks_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisCompoundHyphenationTernaryTree:(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *)outer$;

- (jchar)getValue;

- (jboolean)hasMoreElements;

- (NSString *)nextElement;

- (void)rewind;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator, curkey_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator, ns_, JavaUtilStack *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator, ks_, JavaLangStringBuilder *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator_initWithOrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator *self, OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *outer$);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator *new_OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator_initWithOrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_Iterator)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCompoundHyphenationTernaryTree_INCLUDE_ALL")