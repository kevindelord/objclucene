//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexDeletionPolicy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexDeletionPolicy.h"

@implementation OrgApacheLuceneIndexIndexDeletionPolicy

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexIndexDeletionPolicy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IndexDeletionPolicy", NULL, 0x4, NULL, NULL },
    { "onInitWithJavaUtilList:", "onInit", "V", 0x401, "Ljava.io.IOException;", "(Ljava/util/List<+Lorg/apache/lucene/index/IndexCommit;>;)V" },
    { "onCommitWithJavaUtilList:", "onCommit", "V", 0x401, "Ljava.io.IOException;", "(Ljava/util/List<+Lorg/apache/lucene/index/IndexCommit;>;)V" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexDeletionPolicy = { 2, "IndexDeletionPolicy", "org.apache.lucene.index", NULL, 0x401, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexDeletionPolicy;
}

@end

void OrgApacheLuceneIndexIndexDeletionPolicy_init(OrgApacheLuceneIndexIndexDeletionPolicy *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexDeletionPolicy)