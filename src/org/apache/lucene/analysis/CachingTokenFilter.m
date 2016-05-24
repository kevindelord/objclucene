//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/CachingTokenFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/CachingTokenFilter.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisCachingTokenFilter () {
 @public
  id<JavaUtilList> cache_;
  id<JavaUtilIterator> iterator_;
  OrgApacheLuceneUtilAttributeSource_State *finalState_;
}

- (void)fillCache;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCachingTokenFilter, cache_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCachingTokenFilter, iterator_, id<JavaUtilIterator>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCachingTokenFilter, finalState_, OrgApacheLuceneUtilAttributeSource_State *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisCachingTokenFilter_fillCache(OrgApacheLuceneAnalysisCachingTokenFilter *self);

@implementation OrgApacheLuceneAnalysisCachingTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (void)reset {
  if (cache_ == nil) {
    [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) reset];
  }
  else {
    JreStrongAssign(&iterator_, [cache_ iterator]);
  }
}

- (jboolean)incrementToken {
  if (cache_ == nil) {
    JreStrongAssignAndConsume(&cache_, new_JavaUtilArrayList_initWithInt_(64));
    OrgApacheLuceneAnalysisCachingTokenFilter_fillCache(self);
    JreStrongAssign(&iterator_, [((id<JavaUtilList>) nil_chk(cache_)) iterator]);
  }
  if (![((id<JavaUtilIterator>) nil_chk(iterator_)) hasNext]) {
    return false;
  }
  [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:[((id<JavaUtilIterator>) nil_chk(iterator_)) next]];
  return true;
}

- (void)end {
  if (finalState_ != nil) {
    [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:finalState_];
  }
}

- (void)fillCache {
  OrgApacheLuceneAnalysisCachingTokenFilter_fillCache(self);
}

- (jboolean)isCached {
  return cache_ != nil;
}

- (void)dealloc {
  RELEASE_(cache_);
  RELEASE_(iterator_);
  RELEASE_(finalState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "CachingTokenFilter", NULL, 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "end", NULL, "V", 0x11, NULL, NULL },
    { "fillCache", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "isCached", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cache_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/util/AttributeSource$State;>;", .constantValue.asLong = 0 },
    { "iterator_", NULL, 0x2, "Ljava.util.Iterator;", NULL, "Ljava/util/Iterator<Lorg/apache/lucene/util/AttributeSource$State;>;", .constantValue.asLong = 0 },
    { "finalState_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCachingTokenFilter = { 2, "CachingTokenFilter", "org.apache.lucene.analysis", NULL, 0x11, 6, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCachingTokenFilter;
}

@end

void OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCachingTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->cache_, nil);
  JreStrongAssign(&self->iterator_, nil);
}

OrgApacheLuceneAnalysisCachingTokenFilter *new_OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCachingTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisCachingTokenFilter *create_OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCachingTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

void OrgApacheLuceneAnalysisCachingTokenFilter_fillCache(OrgApacheLuceneAnalysisCachingTokenFilter *self) {
  while ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(self->input_)) incrementToken]) {
    [((id<JavaUtilList>) nil_chk(self->cache_)) addWithId:[self captureState]];
  }
  [self->input_ end];
  JreStrongAssign(&self->finalState_, [self captureState]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCachingTokenFilter)