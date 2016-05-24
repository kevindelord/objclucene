//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/QueryTermExtractor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/HashSet.h"
#include "java/util/Iterator.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/FilteredQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/highlight/QueryTermExtractor.h"
#include "org/apache/lucene/search/highlight/WeightedTerm.h"

@interface OrgApacheLuceneSearchHighlightQueryTermExtractor ()

+ (void)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                           withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                   withBoolean:(jboolean)prohibited
                                  withNSString:(NSString *)fieldName;

/*!
 @brief extractTerms is currently the only query-independent means of introspecting queries but it only reveals
 a list of terms for that query - not the boosts each individual term in that query may or may not have.
 "Container" queries such as BooleanQuery should be unwrapped to get at the boost info held
 in each child element.
 Some discussion around this topic here:
 http://www.gossamer-threads.com/lists/lucene/java-dev/34208?search_string=introspection;#34208
 Unfortunately there seemed to be limited interest in requiring all Query objects to implement
 something common which would allow access to child queries so what follows here are query-specific
 implementations for accessing embedded query elements.
 */
+ (void)getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)query
                                                  withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                          withBoolean:(jboolean)prohibited
                                                         withNSString:(NSString *)fieldName;

+ (void)getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery:(OrgApacheLuceneSearchFilteredQuery *)query
                                                    withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                            withBoolean:(jboolean)prohibited
                                                           withNSString:(NSString *)fieldName;

@end

/*!
 @brief for term extraction
 */
inline OrgApacheLuceneSearchIndexSearcher *OrgApacheLuceneSearchHighlightQueryTermExtractor_get_EMPTY_INDEXSEARCHER();
static OrgApacheLuceneSearchIndexSearcher *OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchHighlightQueryTermExtractor, EMPTY_INDEXSEARCHER, OrgApacheLuceneSearchIndexSearcher *)

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName);

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchBooleanQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName);

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchFilteredQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchHighlightQueryTermExtractor)

@implementation OrgApacheLuceneSearchHighlightQueryTermExtractor

+ (IOSObjectArray *)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_(query);
}

+ (IOSObjectArray *)getIdfWeightedTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                  withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                         withNSString:(NSString *)fieldName {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getIdfWeightedTermsWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(query, reader, fieldName);
}

+ (IOSObjectArray *)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                               withBoolean:(jboolean)prohibited
                                              withNSString:(NSString *)fieldName {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(query, prohibited, fieldName);
}

+ (IOSObjectArray *)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                               withBoolean:(jboolean)prohibited {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_(query, prohibited);
}

+ (void)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                           withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                   withBoolean:(jboolean)prohibited
                                  withNSString:(NSString *)fieldName {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
}

+ (void)getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)query
                                                  withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                          withBoolean:(jboolean)prohibited
                                                         withNSString:(NSString *)fieldName {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
}

+ (void)getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery:(OrgApacheLuceneSearchFilteredQuery *)query
                                                    withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                            withBoolean:(jboolean)prohibited
                                                           withNSString:(NSString *)fieldName {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchHighlightQueryTermExtractor class]) {
    {
      @try {
        OrgApacheLuceneIndexIndexReader *emptyReader = create_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_([IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexIndexReader_class_()]);
        JreStrongAssignAndConsume(&OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER, new_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(emptyReader));
        [OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER setQueryCacheWithOrgApacheLuceneSearchQueryCache:nil];
      }
      @catch (JavaIoIOException *bogus) {
        @throw create_JavaLangRuntimeException_initWithNSException_(bogus);
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchHighlightQueryTermExtractor)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getTermsWithOrgApacheLuceneSearchQuery:", "getTerms", "[Lorg.apache.lucene.search.highlight.WeightedTerm;", 0x19, NULL, NULL },
    { "getIdfWeightedTermsWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexIndexReader:withNSString:", "getIdfWeightedTerms", "[Lorg.apache.lucene.search.highlight.WeightedTerm;", 0x19, NULL, NULL },
    { "getTermsWithOrgApacheLuceneSearchQuery:withBoolean:withNSString:", "getTerms", "[Lorg.apache.lucene.search.highlight.WeightedTerm;", 0x19, NULL, NULL },
    { "getTermsWithOrgApacheLuceneSearchQuery:withBoolean:", "getTerms", "[Lorg.apache.lucene.search.highlight.WeightedTerm;", 0x19, NULL, NULL },
    { "getTermsWithOrgApacheLuceneSearchQuery:withJavaUtilHashSet:withBoolean:withNSString:", "getTerms", "V", 0x1a, NULL, "(Lorg/apache/lucene/search/Query;Ljava/util/HashSet<Lorg/apache/lucene/search/highlight/WeightedTerm;>;ZLjava/lang/String;)V" },
    { "getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery:withJavaUtilHashSet:withBoolean:withNSString:", "getTermsFromBooleanQuery", "V", 0x1a, NULL, "(Lorg/apache/lucene/search/BooleanQuery;Ljava/util/HashSet<Lorg/apache/lucene/search/highlight/WeightedTerm;>;ZLjava/lang/String;)V" },
    { "getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery:withJavaUtilHashSet:withBoolean:withNSString:", "getTermsFromFilteredQuery", "V", 0xa, NULL, "(Lorg/apache/lucene/search/FilteredQuery;Ljava/util/HashSet<Lorg/apache/lucene/search/highlight/WeightedTerm;>;ZLjava/lang/String;)V" },
    { "init", "QueryTermExtractor", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_INDEXSEARCHER", "EMPTY_INDEXSEARCHER", 0x1a, "Lorg.apache.lucene.search.IndexSearcher;", &OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightQueryTermExtractor = { 2, "QueryTermExtractor", "org.apache.lucene.search.highlight", NULL, 0x11, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightQueryTermExtractor;
}

@end

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_(query, false);
}

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getIdfWeightedTermsWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  IOSObjectArray *terms = OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(query, false, fieldName);
  jint totalNumDocs = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms))->size_; i++) {
    @try {
      jint docFreq = [reader docFreqWithOrgApacheLuceneIndexTerm:create_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(fieldName, ((OrgApacheLuceneSearchHighlightWeightedTerm *) nil_chk(IOSObjectArray_Get(terms, i)))->term_)];
      jfloat idf = (jfloat) (JavaLangMath_logWithDouble_(totalNumDocs / (jdouble) (docFreq + 1)) + 1.0);
      JreTimesAssignFloatF(&((OrgApacheLuceneSearchHighlightWeightedTerm *) nil_chk(IOSObjectArray_Get(terms, i)))->weight_, idf);
    }
    @catch (JavaIoIOException *e) {
    }
  }
  return terms;
}

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(OrgApacheLuceneSearchQuery *query, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  JavaUtilHashSet *terms = create_JavaUtilHashSet_init();
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
  return [terms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchHighlightWeightedTerm_class_()]];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_(OrgApacheLuceneSearchQuery *query, jboolean prohibited) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(query, prohibited, nil);
}

void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  @try {
    if ([query isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_((OrgApacheLuceneSearchBooleanQuery *) cast_chk(query, [OrgApacheLuceneSearchBooleanQuery class]), terms, prohibited, fieldName);
    else if ([query isKindOfClass:[OrgApacheLuceneSearchFilteredQuery class]]) OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_((OrgApacheLuceneSearchFilteredQuery *) cast_chk(query, [OrgApacheLuceneSearchFilteredQuery class]), terms, prohibited, fieldName);
    else {
      JavaUtilHashSet *nonWeightedTerms = create_JavaUtilHashSet_init();
      @try {
        [((OrgApacheLuceneSearchWeight *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER)) createNormalizedWeightWithOrgApacheLuceneSearchQuery:query withBoolean:false])) extractTermsWithJavaUtilSet:nonWeightedTerms];
      }
      @catch (JavaIoIOException *bogus) {
        @throw create_JavaLangRuntimeException_initWithNSString_withNSException_(@"Should not happen on an empty index", bogus);
      }
      for (id<JavaUtilIterator> iter = [nonWeightedTerms iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
        OrgApacheLuceneIndexTerm *term = [iter next];
        if ((fieldName == nil) || ([((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term)) field])) isEqual:fieldName])) {
          [((JavaUtilHashSet *) nil_chk(terms)) addWithId:create_OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_([((OrgApacheLuceneSearchQuery *) nil_chk(query)) getBoost], [((OrgApacheLuceneIndexTerm *) nil_chk(term)) text])];
        }
      }
    }
  }
  @catch (JavaLangUnsupportedOperationException *ignore) {
  }
}

void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchBooleanQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in nil_chk(query)) {
    if (prohibited || [((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getOccur] != JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST_NOT)) OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getQuery], terms, prohibited, fieldName);
  }
}

void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchFilteredQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_([((OrgApacheLuceneSearchFilteredQuery *) nil_chk(query)) getQuery], terms, prohibited, fieldName);
}

void OrgApacheLuceneSearchHighlightQueryTermExtractor_init(OrgApacheLuceneSearchHighlightQueryTermExtractor *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchHighlightQueryTermExtractor *new_OrgApacheLuceneSearchHighlightQueryTermExtractor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightQueryTermExtractor, init)
}

OrgApacheLuceneSearchHighlightQueryTermExtractor *create_OrgApacheLuceneSearchHighlightQueryTermExtractor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightQueryTermExtractor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightQueryTermExtractor)