//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./expressions/src/java/org/apache/lucene/expressions/ExpressionSortField.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/expressions/ExpressionComparator.h"
#include "org/apache/lucene/expressions/ExpressionSortField.h"
#include "org/apache/lucene/expressions/ExpressionValueSource.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/SortField.h"

@interface OrgApacheLuceneExpressionsExpressionSortField () {
 @public
  OrgApacheLuceneExpressionsExpressionValueSource *source_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneExpressionsExpressionSortField, source_, OrgApacheLuceneExpressionsExpressionValueSource *)

@implementation OrgApacheLuceneExpressionsExpressionSortField

- (instancetype)initWithNSString:(NSString *)name
withOrgApacheLuceneExpressionsExpressionValueSource:(OrgApacheLuceneExpressionsExpressionValueSource *)source
                     withBoolean:(jboolean)reverse {
  OrgApacheLuceneExpressionsExpressionSortField_initWithNSString_withOrgApacheLuceneExpressionsExpressionValueSource_withBoolean_(self, name, source, reverse);
  return self;
}

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos {
  return [new_OrgApacheLuceneExpressionsExpressionComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withInt_(source_, numHits) autorelease];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((source_ == nil) ? 0 : ((jint) [source_ hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if (![super isEqual:obj]) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  OrgApacheLuceneExpressionsExpressionSortField *other = (OrgApacheLuceneExpressionsExpressionSortField *) check_class_cast(obj, [OrgApacheLuceneExpressionsExpressionSortField class]);
  if (source_ == nil) {
    if (other->source_ != nil) return NO;
  }
  else if (![source_ isEqual:other->source_]) return NO;
  return YES;
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  [buffer appendWithNSString:@"<expr \""];
  [buffer appendWithNSString:[self getField]];
  [buffer appendWithNSString:@"\">"];
  if ([self getReverse]) {
    [buffer appendWithChar:'!'];
  }
  return [buffer description];
}

- (jboolean)needsScores {
  return [((OrgApacheLuceneExpressionsExpressionValueSource *) nil_chk(source_)) needsScores];
}

- (void)dealloc {
  RELEASE_(source_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneExpressionsExpressionValueSource:withBoolean:", "ExpressionSortField", NULL, 0x0, NULL, NULL },
    { "getComparatorWithInt:withInt:", "getComparator", "Lorg.apache.lucene.search.FieldComparator;", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "needsScores", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", NULL, 0x12, "Lorg.apache.lucene.expressions.ExpressionValueSource;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneExpressionsExpressionSortField = { 2, "ExpressionSortField", "org.apache.lucene.expressions", NULL, 0x0, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneExpressionsExpressionSortField;
}

@end

void OrgApacheLuceneExpressionsExpressionSortField_initWithNSString_withOrgApacheLuceneExpressionsExpressionValueSource_withBoolean_(OrgApacheLuceneExpressionsExpressionSortField *self, NSString *name, OrgApacheLuceneExpressionsExpressionValueSource *source, jboolean reverse) {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(self, name, JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, CUSTOM), reverse);
  JreStrongAssign(&self->source_, source);
}

OrgApacheLuceneExpressionsExpressionSortField *new_OrgApacheLuceneExpressionsExpressionSortField_initWithNSString_withOrgApacheLuceneExpressionsExpressionValueSource_withBoolean_(NSString *name, OrgApacheLuceneExpressionsExpressionValueSource *source, jboolean reverse) {
  OrgApacheLuceneExpressionsExpressionSortField *self = [OrgApacheLuceneExpressionsExpressionSortField alloc];
  OrgApacheLuceneExpressionsExpressionSortField_initWithNSString_withOrgApacheLuceneExpressionsExpressionValueSource_withBoolean_(self, name, source, reverse);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneExpressionsExpressionSortField)