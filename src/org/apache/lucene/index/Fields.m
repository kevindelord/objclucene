//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/Fields.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Iterator.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/Terms.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexFields)

IOSObjectArray *OrgApacheLuceneIndexFields_EMPTY_ARRAY;

@implementation OrgApacheLuceneIndexFields

+ (IOSObjectArray *)EMPTY_ARRAY {
  return OrgApacheLuceneIndexFields_EMPTY_ARRAY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFields_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaUtilIterator>)iterator {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)size {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexFields class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexFields_EMPTY_ARRAY, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexFields_class_()]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexFields)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Fields", NULL, 0x4, NULL, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x401, NULL, "()Ljava/util/Iterator<Ljava/lang/String;>;" },
    { "termsWithNSString:", "terms", "Lorg.apache.lucene.index.Terms;", 0x401, "Ljava.io.IOException;", NULL },
    { "size", NULL, "I", 0x401, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_ARRAY", "EMPTY_ARRAY", 0x19, "[Lorg.apache.lucene.index.Fields;", &OrgApacheLuceneIndexFields_EMPTY_ARRAY, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFields = { 2, "Fields", "org.apache.lucene.index", NULL, 0x401, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Iterable<Ljava/lang/String;>;" };
  return &_OrgApacheLuceneIndexFields;
}

@end

void OrgApacheLuceneIndexFields_init(OrgApacheLuceneIndexFields *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFields)
