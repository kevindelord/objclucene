//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/NumDocsValueSource.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/DocFreqValueSource.h"  // fixed by translate.py
#include "org/apache/lucene/queries/function/valuesource/NumDocsValueSource.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource

- (NSString *)name {
  return @"numdocs";
}

- (NSString *)description__ {
  return JreStrcat("$$", [self name], @"()");
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return create_OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues_initWithInt_withOrgApacheLuceneQueriesFunctionValueSource_([((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneIndexIndexReaderContext *) nil_chk(OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(readerContext))) reader])) numDocs], self);
}

- (jboolean)isEqual:(id)o {
  return [self getClass] == (id) [nil_chk(o) getClass];
}

- (NSUInteger)hash {
  return ((jint) [[self getClass] hash]);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "name", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", "NumDocsValueSource", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource = { 2, "NumDocsValueSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *self) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
}

OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource, init)
}

OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource)
