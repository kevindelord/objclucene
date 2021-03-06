//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/CachingWrapperFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/WeakHashMap.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BitsFilteredDocIdSet.h"
#include "org/apache/lucene/search/CachingWrapperFilter.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/FilterCachingPolicy.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/RoaringDocIdSet.h"

@interface OrgApacheLuceneSearchCachingWrapperFilter () {
 @public
  OrgApacheLuceneSearchFilter *filter_;
  id<OrgApacheLuceneSearchFilterCachingPolicy> policy_;
  id<JavaUtilMap> cache_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingWrapperFilter, filter_, OrgApacheLuceneSearchFilter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingWrapperFilter, policy_, id<OrgApacheLuceneSearchFilterCachingPolicy>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingWrapperFilter, cache_, id<JavaUtilMap>)

@implementation OrgApacheLuceneSearchCachingWrapperFilter

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
       withOrgApacheLuceneSearchFilterCachingPolicy:(id<OrgApacheLuceneSearchFilterCachingPolicy>)policy {
  OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(self, filter, policy);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(self, filter);
  return self;
}

- (OrgApacheLuceneSearchFilter *)getFilter {
  return filter_;
}

- (OrgApacheLuceneSearchDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                 withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader {
  if (docIdSet == nil || [docIdSet isCacheable]) {
    return docIdSet;
  }
  else {
    OrgApacheLuceneSearchDocIdSetIterator *it = [docIdSet iterator];
    if (it == nil) {
      return nil;
    }
    else {
      return [self cacheImplWithOrgApacheLuceneSearchDocIdSetIterator:it withOrgApacheLuceneIndexLeafReader:reader];
    }
  }
}

- (OrgApacheLuceneSearchDocIdSet *)cacheImplWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator
                                                   withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader {
  return [((OrgApacheLuceneUtilRoaringDocIdSet_Builder *) nil_chk([create_OrgApacheLuceneUtilRoaringDocIdSet_Builder_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]) addWithOrgApacheLuceneSearchDocIdSetIterator:iterator])) build];
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  OrgApacheLuceneIndexLeafReader *reader = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader];
  id key = [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) getCoreCacheKey];
  OrgApacheLuceneSearchDocIdSet *docIdSet = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:key];
  if (docIdSet != nil) {
    hitCount_++;
  }
  else {
    docIdSet = [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneUtilBits:nil];
    if ([((id<OrgApacheLuceneSearchFilterCachingPolicy>) nil_chk(policy_)) shouldCacheWithOrgApacheLuceneSearchFilter:filter_ withOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchDocIdSet:docIdSet]) {
      missCount_++;
      docIdSet = [self docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:docIdSet withOrgApacheLuceneIndexLeafReader:reader];
      if (docIdSet == nil) {
        docIdSet = JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY);
      }
      JreAssert(([((OrgApacheLuceneSearchDocIdSet *) nil_chk(docIdSet)) isCacheable]), (@"org/apache/lucene/search/CachingWrapperFilter.java:122 condition failed: assert docIdSet.isCacheable();"));
      [cache_ putWithId:key withId:docIdSet];
    }
  }
  return docIdSet == JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY) ? nil : OrgApacheLuceneSearchBitsFilteredDocIdSet_wrapWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneUtilBits_(docIdSet, acceptDocs);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$C$C", [[self getClass] getSimpleName], '(', [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) toStringWithNSString:field], ')');
}

- (jboolean)isEqual:(id)o {
  if ([super isEqual:o] == false) {
    return false;
  }
  OrgApacheLuceneSearchCachingWrapperFilter *other = (OrgApacheLuceneSearchCachingWrapperFilter *) cast_chk(o, [OrgApacheLuceneSearchCachingWrapperFilter class]);
  return [((OrgApacheLuceneSearchFilter *) nil_chk(self->filter_)) isEqual:((OrgApacheLuceneSearchCachingWrapperFilter *) nil_chk(other))->filter_];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) hash]);
}

- (jlong)ramBytesUsed {
  id<JavaUtilList> docIdSets;
  @synchronized(cache_) {
    docIdSets = create_JavaUtilArrayList_initWithJavaUtilCollection_([((id<JavaUtilMap>) nil_chk(cache_)) values]);
  }
  jlong total = 0;
  for (OrgApacheLuceneSearchDocIdSet * __strong dis in docIdSets) {
    total += [((OrgApacheLuceneSearchDocIdSet *) nil_chk(dis)) ramBytesUsed];
  }
  return total;
}

- (id<JavaUtilCollection>)getChildResources {
  @synchronized(cache_) {
    return OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(@"segment", cache_);
  }
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(filter_);
  RELEASE_(policy_);
  RELEASE_(cache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchFilterCachingPolicy:", "CachingWrapperFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchFilter:", "CachingWrapperFilter", NULL, 0x1, NULL, NULL },
    { "getFilter", NULL, "Lorg.apache.lucene.search.Filter;", 0x1, NULL, NULL },
    { "docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:withOrgApacheLuceneIndexLeafReader:", "docIdSetToCache", "Lorg.apache.lucene.search.DocIdSet;", 0x4, "Ljava.io.IOException;", NULL },
    { "cacheImplWithOrgApacheLuceneSearchDocIdSetIterator:withOrgApacheLuceneIndexLeafReader:", "cacheImpl", "Lorg.apache.lucene.search.DocIdSet;", 0x4, "Ljava.io.IOException;", NULL },
    { "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:", "getDocIdSet", "Lorg.apache.lucene.search.DocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "filter_", NULL, 0x12, "Lorg.apache.lucene.search.Filter;", NULL, NULL, .constantValue.asLong = 0 },
    { "policy_", NULL, 0x12, "Lorg.apache.lucene.search.FilterCachingPolicy;", NULL, NULL, .constantValue.asLong = 0 },
    { "cache_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/lucene/search/DocIdSet;>;", .constantValue.asLong = 0 },
    { "hitCount_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "missCount_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCachingWrapperFilter = { 2, "CachingWrapperFilter", "org.apache.lucene.search", NULL, 0x1, 11, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchCachingWrapperFilter;
}

@end

void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->cache_, JavaUtilCollections_synchronizedMapWithJavaUtilMap_(create_JavaUtilWeakHashMap_init()));
  JreStrongAssign(&self->filter_, filter);
  JreStrongAssign(&self->policy_, policy);
}

OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_, filter, policy)
}

OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(OrgApacheLuceneSearchFilter *filter, id<OrgApacheLuceneSearchFilterCachingPolicy> policy) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_, filter, policy)
}

void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter) {
  OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilterCachingPolicy_(self, filter, JreLoadStatic(OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments, DEFAULT));
}

OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchCachingWrapperFilter)
