//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/TooManyBasicQueries.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/queryparser/surround/query/TooManyBasicQueries.h"

@implementation OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries

- (instancetype)initWithInt:(jint)maxBasicQueries {
  OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(self, maxBasicQueries);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "TooManyBasicQueries", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries = { 2, "TooManyBasicQueries", "org.apache.lucene.queryparser.surround.query", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries *self, jint maxBasicQueries) {
  JavaIoIOException_initWithNSString_(self, JreStrcat("$I$", @"Exceeded maximum of ", maxBasicQueries, @" basic queries."));
}

OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries *new_OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(jint maxBasicQueries) {
  OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries *self = [OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries alloc];
  OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries_initWithInt_(self, maxBasicQueries);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryTooManyBasicQueries)