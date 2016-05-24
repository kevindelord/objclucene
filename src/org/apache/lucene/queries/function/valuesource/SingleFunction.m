//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SingleFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/SingleFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourceSingleFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source {
  OrgApacheLuceneQueriesFunctionValuesourceSingleFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, source);
  return self;
}

- (NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description__ {
  return JreStrcat("$C$C", [self name], '(', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) description__], ')');
}

- (NSUInteger)hash {
  return ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) hash]) + ((jint) [((NSString *) nil_chk([self name])) hash]);
}

- (jboolean)isEqual:(id)o {
  if ([self getClass] != (id) [nil_chk(o) getClass]) return false;
  OrgApacheLuceneQueriesFunctionValuesourceSingleFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceSingleFunction *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceSingleFunction class]);
  return [((NSString *) nil_chk([self name])) isEqual:[other name]] && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) isEqual:other->source_];
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (void)dealloc {
  RELEASE_(source_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:", "SingleFunction", NULL, 0x1, NULL, NULL },
    { "name", NULL, "Ljava.lang.String;", 0x404, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:", "createWeight", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", NULL, 0x14, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceSingleFunction = { 2, "SingleFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x401, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceSingleFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceSingleFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSingleFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->source_, source);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceSingleFunction)