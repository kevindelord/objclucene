//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BlendedTermQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermContext.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/search/BlendedTermQuery.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/DisjunctionMaxQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/InPlaceMergeSorter.h"

@interface OrgApacheLuceneSearchBlendedTermQuery () {
 @public
  IOSObjectArray *terms_;
  IOSFloatArray *boosts_;
  IOSObjectArray *contexts_;
  OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod_;
}

- (instancetype)initWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms
                                       withFloatArray:(IOSFloatArray *)boosts
             withOrgApacheLuceneIndexTermContextArray:(IOSObjectArray *)contexts
withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)rewriteMethod;

+ (OrgApacheLuceneIndexTermContext *)adjustFrequenciesWithOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)ctx
                                                                                  withInt:(jint)artificialDf
                                                                                 withLong:(jlong)artificialTtf;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery, terms_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery, boosts_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery, contexts_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery, rewriteMethod_, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)

__attribute__((unused)) static void OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(OrgApacheLuceneSearchBlendedTermQuery *self, IOSObjectArray *terms, IOSFloatArray *boosts, IOSObjectArray *contexts, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod);

__attribute__((unused)) static OrgApacheLuceneSearchBlendedTermQuery *new_OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(IOSObjectArray *terms, IOSFloatArray *boosts, IOSObjectArray *contexts, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchBlendedTermQuery *create_OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(IOSObjectArray *terms, IOSFloatArray *boosts, IOSObjectArray *contexts, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod);

__attribute__((unused)) static OrgApacheLuceneIndexTermContext *OrgApacheLuceneSearchBlendedTermQuery_adjustFrequenciesWithOrgApacheLuceneIndexTermContext_withInt_withLong_(OrgApacheLuceneIndexTermContext *ctx, jint artificialDf, jlong artificialTtf);

@interface OrgApacheLuceneSearchBlendedTermQuery_Builder () {
 @public
  jint numTerms_;
  IOSObjectArray *terms_;
  IOSFloatArray *boosts_;
  IOSObjectArray *contexts_;
  OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery_Builder, terms_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery_Builder, boosts_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery_Builder, contexts_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery_Builder, rewriteMethod_, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)

@interface OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite () {
 @public
  jfloat tieBreakerMultiplier_;
}

@end

@interface OrgApacheLuceneSearchBlendedTermQuery_$1 : OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)subQueries;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlendedTermQuery_$1)

__attribute__((unused)) static void OrgApacheLuceneSearchBlendedTermQuery_$1_init(OrgApacheLuceneSearchBlendedTermQuery_$1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchBlendedTermQuery_$1 *new_OrgApacheLuceneSearchBlendedTermQuery_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchBlendedTermQuery_$1 *create_OrgApacheLuceneSearchBlendedTermQuery_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlendedTermQuery_$1)

@interface OrgApacheLuceneSearchBlendedTermQuery_$2 : OrgApacheLuceneUtilInPlaceMergeSorter {
 @public
  IOSObjectArray *val$terms_;
  IOSObjectArray *val$contexts_;
  IOSFloatArray *val$boosts_;
}

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (instancetype)initWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)capture$0
             withOrgApacheLuceneIndexTermContextArray:(IOSObjectArray *)capture$1
                                       withFloatArray:(IOSFloatArray *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlendedTermQuery_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery_$2, val$terms_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery_$2, val$contexts_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlendedTermQuery_$2, val$boosts_, IOSFloatArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(OrgApacheLuceneSearchBlendedTermQuery_$2 *self, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSFloatArray *capture$2);

__attribute__((unused)) static OrgApacheLuceneSearchBlendedTermQuery_$2 *new_OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSFloatArray *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchBlendedTermQuery_$2 *create_OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSFloatArray *capture$2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlendedTermQuery_$2)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchBlendedTermQuery)

OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE;
OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE;

@implementation OrgApacheLuceneSearchBlendedTermQuery

+ (OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)BOOLEAN_REWRITE {
  return OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE;
}

+ (OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)DISJUNCTION_MAX_REWRITE {
  return OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE;
}

- (instancetype)initWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms
                                       withFloatArray:(IOSFloatArray *)boosts
             withOrgApacheLuceneIndexTermContextArray:(IOSObjectArray *)contexts
withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)rewriteMethod {
  OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(self, terms, boosts, contexts, rewriteMethod);
  return self;
}

- (jboolean)isEqual:(id)obj {
  if ([super isEqual:obj] == false) {
    return false;
  }
  OrgApacheLuceneSearchBlendedTermQuery *that = (OrgApacheLuceneSearchBlendedTermQuery *) cast_chk(obj, [OrgApacheLuceneSearchBlendedTermQuery class]);
  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(terms_, ((OrgApacheLuceneSearchBlendedTermQuery *) nil_chk(that))->terms_) && JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(contexts_, that->contexts_) && JavaUtilArrays_equalsWithFloatArray_withFloatArray_(boosts_, that->boosts_) && [((OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *) nil_chk(rewriteMethod_)) isEqual:that->rewriteMethod_];
}

- (NSUInteger)hash {
  jint h = ((jint) [super hash]);
  h = 31 * h + JavaUtilArrays_hashCodeWithNSObjectArray_(terms_);
  h = 31 * h + JavaUtilArrays_hashCodeWithNSObjectArray_(contexts_);
  h = 31 * h + JavaUtilArrays_hashCodeWithFloatArray_(boosts_);
  h = 31 * h + ((jint) [((OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *) nil_chk(rewriteMethod_)) hash]);
  return h;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *builder = create_JavaLangStringBuilder_initWithNSString_(@"Blended(");
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms_))->size_; ++i) {
    if (i != 0) {
      [builder appendWithNSString:@" "];
    }
    OrgApacheLuceneSearchTermQuery *termQuery = create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(IOSObjectArray_Get(terms_, i));
    [termQuery setBoostWithFloat:IOSFloatArray_Get(nil_chk(boosts_), i)];
    [builder appendWithNSString:[termQuery toStringWithNSString:field]];
  }
  [builder appendWithNSString:@")"];
  return [builder description];
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  IOSObjectArray *contexts = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->contexts_, ((IOSObjectArray *) nil_chk(self->contexts_))->size_);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(contexts))->size_; ++i) {
    if (IOSObjectArray_Get(contexts, i) == nil || ((OrgApacheLuceneIndexTermContext *) nil_chk(IOSObjectArray_Get(contexts, i)))->topReaderContext_ != [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) getContext]) {
      IOSObjectArray_Set(contexts, i, OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) getContext], IOSObjectArray_Get(nil_chk(terms_), i)));
    }
  }
  jint df = 0;
  jlong ttf = 0;
  {
    IOSObjectArray *a__ = contexts;
    OrgApacheLuceneIndexTermContext * const *b__ = a__->buffer_;
    OrgApacheLuceneIndexTermContext * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexTermContext *ctx = *b__++;
      df = JavaLangMath_maxWithInt_withInt_(df, [((OrgApacheLuceneIndexTermContext *) nil_chk(ctx)) docFreq]);
      if ([ctx totalTermFreq] == -1LL) {
        ttf = -1LL;
      }
      else if (ttf != -1LL) {
        ttf += [ctx totalTermFreq];
      }
    }
  }
  for (jint i = 0; i < contexts->size_; ++i) {
    IOSObjectArray_Set(contexts, i, OrgApacheLuceneSearchBlendedTermQuery_adjustFrequenciesWithOrgApacheLuceneIndexTermContext_withInt_withLong_(IOSObjectArray_Get(contexts, i), df, ttf));
  }
  IOSObjectArray *termQueries = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(terms_))->size_ type:OrgApacheLuceneSearchTermQuery_class_()];
  for (jint i = 0; i < terms_->size_; ++i) {
    IOSObjectArray_SetAndConsume(termQueries, i, new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(IOSObjectArray_Get(terms_, i), IOSObjectArray_Get(contexts, i)));
    [((OrgApacheLuceneSearchTermQuery *) nil_chk(IOSObjectArray_Get(termQueries, i))) setBoostWithFloat:IOSFloatArray_Get(nil_chk(boosts_), i)];
  }
  OrgApacheLuceneSearchQuery *rewritten = [((OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *) nil_chk(rewriteMethod_)) rewriteWithOrgApacheLuceneSearchQueryArray:termQueries];
  [((OrgApacheLuceneSearchQuery *) nil_chk(rewritten)) setBoostWithFloat:[self getBoost]];
  return rewritten;
}

+ (OrgApacheLuceneIndexTermContext *)adjustFrequenciesWithOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)ctx
                                                                                  withInt:(jint)artificialDf
                                                                                 withLong:(jlong)artificialTtf {
  return OrgApacheLuceneSearchBlendedTermQuery_adjustFrequenciesWithOrgApacheLuceneIndexTermContext_withInt_withLong_(ctx, artificialDf, artificialTtf);
}

- (void)dealloc {
  RELEASE_(terms_);
  RELEASE_(boosts_);
  RELEASE_(contexts_);
  RELEASE_(rewriteMethod_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchBlendedTermQuery class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE, new_OrgApacheLuceneSearchBlendedTermQuery_$1_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE, new_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(0.01f));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchBlendedTermQuery)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTermArray:withFloatArray:withOrgApacheLuceneIndexTermContextArray:withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:", "BlendedTermQuery", NULL, 0x2, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x11, "Ljava.io.IOException;", NULL },
    { "adjustFrequenciesWithOrgApacheLuceneIndexTermContext:withInt:withLong:", "adjustFrequencies", "Lorg.apache.lucene.index.TermContext;", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BOOLEAN_REWRITE", "BOOLEAN_REWRITE", 0x19, "Lorg.apache.lucene.search.BlendedTermQuery$RewriteMethod;", &OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE, NULL, .constantValue.asLong = 0 },
    { "DISJUNCTION_MAX_REWRITE", "DISJUNCTION_MAX_REWRITE", 0x19, "Lorg.apache.lucene.search.BlendedTermQuery$RewriteMethod;", &OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE, NULL, .constantValue.asLong = 0 },
    { "terms_", NULL, 0x12, "[Lorg.apache.lucene.index.Term;", NULL, NULL, .constantValue.asLong = 0 },
    { "boosts_", NULL, 0x12, "[F", NULL, NULL, .constantValue.asLong = 0 },
    { "contexts_", NULL, 0x12, "[Lorg.apache.lucene.index.TermContext;", NULL, NULL, .constantValue.asLong = 0 },
    { "rewriteMethod_", NULL, 0x12, "Lorg.apache.lucene.search.BlendedTermQuery$RewriteMethod;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.BlendedTermQuery$Builder;", "Lorg.apache.lucene.search.BlendedTermQuery$RewriteMethod;", "Lorg.apache.lucene.search.BlendedTermQuery$DisjunctionMaxRewrite;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlendedTermQuery = { 2, "BlendedTermQuery", "org.apache.lucene.search", NULL, 0x11, 6, methods, 6, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchBlendedTermQuery;
}

@end

void OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(OrgApacheLuceneSearchBlendedTermQuery *self, IOSObjectArray *terms, IOSFloatArray *boosts, IOSObjectArray *contexts, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod) {
  OrgApacheLuceneSearchQuery_init(self);
  JreAssert((((IOSObjectArray *) nil_chk(terms))->size_ == ((IOSFloatArray *) nil_chk(boosts))->size_), (@"org/apache/lucene/search/BlendedTermQuery.java:194 condition failed: assert terms.length == boosts.length;"));
  JreAssert((terms->size_ == ((IOSObjectArray *) nil_chk(contexts))->size_), (@"org/apache/lucene/search/BlendedTermQuery.java:195 condition failed: assert terms.length == contexts.length;"));
  JreStrongAssign(&self->terms_, terms);
  JreStrongAssign(&self->boosts_, boosts);
  JreStrongAssign(&self->contexts_, contexts);
  JreStrongAssign(&self->rewriteMethod_, rewriteMethod);
  [create_OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(terms, contexts, boosts) sortWithInt:0 withInt:terms->size_];
}

OrgApacheLuceneSearchBlendedTermQuery *new_OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(IOSObjectArray *terms, IOSFloatArray *boosts, IOSObjectArray *contexts, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBlendedTermQuery, initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_, terms, boosts, contexts, rewriteMethod)
}

OrgApacheLuceneSearchBlendedTermQuery *create_OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(IOSObjectArray *terms, IOSFloatArray *boosts, IOSObjectArray *contexts, OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *rewriteMethod) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBlendedTermQuery, initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_, terms, boosts, contexts, rewriteMethod)
}

OrgApacheLuceneIndexTermContext *OrgApacheLuceneSearchBlendedTermQuery_adjustFrequenciesWithOrgApacheLuceneIndexTermContext_withInt_withLong_(OrgApacheLuceneIndexTermContext *ctx, jint artificialDf, jlong artificialTtf) {
  OrgApacheLuceneSearchBlendedTermQuery_initialize();
  id<JavaUtilList> leaves = [((OrgApacheLuceneIndexIndexReaderContext *) nil_chk(((OrgApacheLuceneIndexTermContext *) nil_chk(ctx))->topReaderContext_)) leaves];
  jint len;
  if (leaves == nil) {
    len = 1;
  }
  else {
    len = [leaves size];
  }
  OrgApacheLuceneIndexTermContext *newCtx = create_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(ctx->topReaderContext_);
  for (jint i = 0; i < len; ++i) {
    OrgApacheLuceneIndexTermState *termState = [ctx getWithInt:i];
    if (termState == nil) {
      continue;
    }
    [newCtx register__WithOrgApacheLuceneIndexTermState:termState withInt:i];
  }
  [newCtx accumulateStatisticsWithInt:artificialDf withLong:artificialTtf];
  return newCtx;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlendedTermQuery)

@implementation OrgApacheLuceneSearchBlendedTermQuery_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchBlendedTermQuery_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)setRewriteMethodWithOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *)rewiteMethod {
  JreStrongAssign(&self->rewriteMethod_, rewiteMethod);
  return self;
}

- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  return [self addWithOrgApacheLuceneIndexTerm:term withFloat:1.0f];
}

- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                                         withFloat:(jfloat)boost {
  return [self addWithOrgApacheLuceneIndexTerm:term withFloat:boost withOrgApacheLuceneIndexTermContext:nil];
}

- (OrgApacheLuceneSearchBlendedTermQuery_Builder *)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                                         withFloat:(jfloat)boost
                                               withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)context {
  if (numTerms_ >= OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount()) {
    @throw create_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
  }
  JreStrongAssign(&terms_, OrgApacheLuceneUtilArrayUtil_growWithNSObjectArray_withInt_(terms_, numTerms_ + 1));
  JreStrongAssign(&boosts_, OrgApacheLuceneUtilArrayUtil_growWithFloatArray_withInt_(boosts_, numTerms_ + 1));
  JreStrongAssign(&contexts_, OrgApacheLuceneUtilArrayUtil_growWithNSObjectArray_withInt_(contexts_, numTerms_ + 1));
  IOSObjectArray_SetAndConsume(nil_chk(terms_), numTerms_, new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_([((OrgApacheLuceneIndexTerm *) nil_chk(term)) field], OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_([term bytes])));
  *IOSFloatArray_GetRef(nil_chk(boosts_), numTerms_) = boost;
  IOSObjectArray_Set(nil_chk(contexts_), numTerms_, context);
  numTerms_ += 1;
  return self;
}

- (OrgApacheLuceneSearchBlendedTermQuery *)build {
  return create_OrgApacheLuceneSearchBlendedTermQuery_initWithOrgApacheLuceneIndexTermArray_withFloatArray_withOrgApacheLuceneIndexTermContextArray_withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_(JavaUtilArrays_copyOfWithNSObjectArray_withInt_(terms_, numTerms_), JavaUtilArrays_copyOfWithFloatArray_withInt_(boosts_, numTerms_), JavaUtilArrays_copyOfWithNSObjectArray_withInt_(contexts_, numTerms_), rewriteMethod_);
}

- (void)dealloc {
  RELEASE_(terms_);
  RELEASE_(boosts_);
  RELEASE_(contexts_);
  RELEASE_(rewriteMethod_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Builder", NULL, 0x1, NULL, NULL },
    { "setRewriteMethodWithOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:", "setRewriteMethod", "Lorg.apache.lucene.search.BlendedTermQuery$Builder;", 0x1, NULL, NULL },
    { "addWithOrgApacheLuceneIndexTerm:", "add", "Lorg.apache.lucene.search.BlendedTermQuery$Builder;", 0x1, NULL, NULL },
    { "addWithOrgApacheLuceneIndexTerm:withFloat:", "add", "Lorg.apache.lucene.search.BlendedTermQuery$Builder;", 0x1, NULL, NULL },
    { "addWithOrgApacheLuceneIndexTerm:withFloat:withOrgApacheLuceneIndexTermContext:", "add", "Lorg.apache.lucene.search.BlendedTermQuery$Builder;", 0x1, NULL, NULL },
    { "build", NULL, "Lorg.apache.lucene.search.BlendedTermQuery;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "numTerms_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "terms_", NULL, 0x2, "[Lorg.apache.lucene.index.Term;", NULL, NULL, .constantValue.asLong = 0 },
    { "boosts_", NULL, 0x2, "[F", NULL, NULL, .constantValue.asLong = 0 },
    { "contexts_", NULL, 0x2, "[Lorg.apache.lucene.index.TermContext;", NULL, NULL, .constantValue.asLong = 0 },
    { "rewriteMethod_", NULL, 0x2, "Lorg.apache.lucene.search.BlendedTermQuery$RewriteMethod;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlendedTermQuery_Builder = { 2, "Builder", "org.apache.lucene.search", "BlendedTermQuery", 0x9, 6, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchBlendedTermQuery_Builder;
}

@end

void OrgApacheLuceneSearchBlendedTermQuery_Builder_init(OrgApacheLuceneSearchBlendedTermQuery_Builder *self) {
  NSObject_init(self);
  self->numTerms_ = 0;
  JreStrongAssignAndConsume(&self->terms_, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()]);
  JreStrongAssignAndConsume(&self->boosts_, [IOSFloatArray newArrayWithLength:0]);
  JreStrongAssignAndConsume(&self->contexts_, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexTermContext_class_()]);
  JreStrongAssign(&self->rewriteMethod_, JreLoadStatic(OrgApacheLuceneSearchBlendedTermQuery, DISJUNCTION_MAX_REWRITE));
}

OrgApacheLuceneSearchBlendedTermQuery_Builder *new_OrgApacheLuceneSearchBlendedTermQuery_Builder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBlendedTermQuery_Builder, init)
}

OrgApacheLuceneSearchBlendedTermQuery_Builder *create_OrgApacheLuceneSearchBlendedTermQuery_Builder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBlendedTermQuery_Builder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlendedTermQuery_Builder)

@implementation OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)subQueries {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RewriteMethod", NULL, 0x4, NULL, NULL },
    { "rewriteWithOrgApacheLuceneSearchQueryArray:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod = { 2, "RewriteMethod", "org.apache.lucene.search", "BlendedTermQuery", 0x409, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod;
}

@end

void OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_init(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod)

@implementation OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite

- (instancetype)initWithFloat:(jfloat)tieBreakerMultiplier {
  OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(self, tieBreakerMultiplier);
  return self;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)subQueries {
  return create_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(JavaUtilArrays_asListWithNSObjectArray_(subQueries), tieBreakerMultiplier_);
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil || [self getClass] != (id) [obj getClass]) {
    return false;
  }
  OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *that = (OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *) cast_chk(obj, [OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite class]);
  return tieBreakerMultiplier_ == that->tieBreakerMultiplier_;
}

- (NSUInteger)hash {
  return 31 * ((jint) [[self getClass] hash]) + JavaLangFloat_floatToIntBitsWithFloat_(tieBreakerMultiplier_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:", "DisjunctionMaxRewrite", NULL, 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneSearchQueryArray:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tieBreakerMultiplier_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite = { 2, "DisjunctionMaxRewrite", "org.apache.lucene.search", "BlendedTermQuery", 0x9, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite;
}

@end

void OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *self, jfloat tieBreakerMultiplier) {
  OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_init(self);
  self->tieBreakerMultiplier_ = tieBreakerMultiplier;
}

OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *new_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(jfloat tieBreakerMultiplier) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite, initWithFloat_, tieBreakerMultiplier)
}

OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite *create_OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite_initWithFloat_(jfloat tieBreakerMultiplier) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite, initWithFloat_, tieBreakerMultiplier)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite)

@implementation OrgApacheLuceneSearchBlendedTermQuery_$1

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)subQueries {
  OrgApacheLuceneSearchBooleanQuery_Builder *merged = create_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [merged setDisableCoordWithBoolean:true];
  {
    IOSObjectArray *a__ = subQueries;
    OrgApacheLuceneSearchQuery * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchQuery * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchQuery *query = *b__++;
      [merged addWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)];
    }
  }
  return [merged build];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchBlendedTermQuery_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "rewriteWithOrgApacheLuceneSearchQueryArray:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlendedTermQuery_$1 = { 2, "", "org.apache.lucene.search", "BlendedTermQuery", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchBlendedTermQuery_$1;
}

@end

void OrgApacheLuceneSearchBlendedTermQuery_$1_init(OrgApacheLuceneSearchBlendedTermQuery_$1 *self) {
  OrgApacheLuceneSearchBlendedTermQuery_RewriteMethod_init(self);
}

OrgApacheLuceneSearchBlendedTermQuery_$1 *new_OrgApacheLuceneSearchBlendedTermQuery_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBlendedTermQuery_$1, init)
}

OrgApacheLuceneSearchBlendedTermQuery_$1 *create_OrgApacheLuceneSearchBlendedTermQuery_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBlendedTermQuery_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlendedTermQuery_$1)

@implementation OrgApacheLuceneSearchBlendedTermQuery_$2

- (void)swapWithInt:(jint)i
            withInt:(jint)j {
  OrgApacheLuceneIndexTerm *tmpTerm = IOSObjectArray_Get(nil_chk(val$terms_), i);
  IOSObjectArray_Set(val$terms_, i, IOSObjectArray_Get(val$terms_, j));
  IOSObjectArray_Set(val$terms_, j, tmpTerm);
  OrgApacheLuceneIndexTermContext *tmpContext = IOSObjectArray_Get(nil_chk(val$contexts_), i);
  IOSObjectArray_Set(val$contexts_, i, IOSObjectArray_Get(val$contexts_, j));
  IOSObjectArray_Set(val$contexts_, j, tmpContext);
  jfloat tmpBoost = IOSFloatArray_Get(nil_chk(val$boosts_), i);
  *IOSFloatArray_GetRef(val$boosts_, i) = IOSFloatArray_Get(val$boosts_, j);
  *IOSFloatArray_GetRef(val$boosts_, j) = tmpBoost;
}

- (jint)compareWithInt:(jint)i
               withInt:(jint)j {
  return [((OrgApacheLuceneIndexTerm *) nil_chk(IOSObjectArray_Get(nil_chk(val$terms_), i))) compareToWithId:IOSObjectArray_Get(val$terms_, j)];
}

- (instancetype)initWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)capture$0
             withOrgApacheLuceneIndexTermContextArray:(IOSObjectArray *)capture$1
                                       withFloatArray:(IOSFloatArray *)capture$2 {
  OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(self, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(val$terms_);
  RELEASE_(val$contexts_);
  RELEASE_(val$boosts_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "swapWithInt:withInt:", "swap", "V", 0x4, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTermArray:withOrgApacheLuceneIndexTermContextArray:withFloatArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$terms_", NULL, 0x1012, "[Lorg.apache.lucene.index.Term;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$contexts_", NULL, 0x1012, "[Lorg.apache.lucene.index.TermContext;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$boosts_", NULL, 0x1012, "[F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchBlendedTermQuery", "initWithOrgApacheLuceneIndexTermArray:withFloatArray:withOrgApacheLuceneIndexTermContextArray:withOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlendedTermQuery_$2 = { 2, "", "org.apache.lucene.search", "BlendedTermQuery", 0x8008, 3, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchBlendedTermQuery_$2;
}

@end

void OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(OrgApacheLuceneSearchBlendedTermQuery_$2 *self, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSFloatArray *capture$2) {
  JreStrongAssign(&self->val$terms_, capture$0);
  JreStrongAssign(&self->val$contexts_, capture$1);
  JreStrongAssign(&self->val$boosts_, capture$2);
  OrgApacheLuceneUtilInPlaceMergeSorter_init(self);
}

OrgApacheLuceneSearchBlendedTermQuery_$2 *new_OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSFloatArray *capture$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBlendedTermQuery_$2, initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_, capture$0, capture$1, capture$2)
}

OrgApacheLuceneSearchBlendedTermQuery_$2 *create_OrgApacheLuceneSearchBlendedTermQuery_$2_initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_(IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSFloatArray *capture$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBlendedTermQuery_$2, initWithOrgApacheLuceneIndexTermArray_withOrgApacheLuceneIndexTermContextArray_withFloatArray_, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlendedTermQuery_$2)