//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/NamedThreadFactory.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Runnable.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/ThreadGroup.h"
#include "java/util/Locale.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "org/apache/lucene/util/NamedThreadFactory.h"

@interface OrgApacheLuceneUtilNamedThreadFactory () {
 @public
  JavaLangThreadGroup *group_;
  JavaUtilConcurrentAtomicAtomicInteger *threadNumber_;
  NSString *threadNamePrefix_;
}

+ (NSString *)checkPrefixWithNSString:(NSString *)prefix;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNamedThreadFactory, group_, JavaLangThreadGroup *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNamedThreadFactory, threadNumber_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNamedThreadFactory, threadNamePrefix_, NSString *)

inline JavaUtilConcurrentAtomicAtomicInteger *OrgApacheLuceneUtilNamedThreadFactory_get_threadPoolNumber();
static JavaUtilConcurrentAtomicAtomicInteger *OrgApacheLuceneUtilNamedThreadFactory_threadPoolNumber;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilNamedThreadFactory, threadPoolNumber, JavaUtilConcurrentAtomicAtomicInteger *)

inline NSString *OrgApacheLuceneUtilNamedThreadFactory_get_NAME_PATTERN();
static NSString *OrgApacheLuceneUtilNamedThreadFactory_NAME_PATTERN = @"%s-%d-thread";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilNamedThreadFactory, NAME_PATTERN, NSString *)

__attribute__((unused)) static NSString *OrgApacheLuceneUtilNamedThreadFactory_checkPrefixWithNSString_(NSString *prefix);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilNamedThreadFactory)

@implementation OrgApacheLuceneUtilNamedThreadFactory

- (instancetype)initWithNSString:(NSString *)threadNamePrefix {
  OrgApacheLuceneUtilNamedThreadFactory_initWithNSString_(self, threadNamePrefix);
  return self;
}

+ (NSString *)checkPrefixWithNSString:(NSString *)prefix {
  return OrgApacheLuceneUtilNamedThreadFactory_checkPrefixWithNSString_(prefix);
}

- (JavaLangThread *)newThreadWithJavaLangRunnable:(id<JavaLangRunnable>)r {
  JavaLangThread *t = create_JavaLangThread_initWithJavaLangThreadGroup_withJavaLangRunnable_withNSString_withLong_(group_, r, NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"%s-%d", [IOSObjectArray arrayWithObjects:(id[]){ self->threadNamePrefix_, JavaLangInteger_valueOfWithInt_([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(threadNumber_)) getAndIncrement]) } count:2 type:NSObject_class_()]), 0);
  [t setDaemonWithBoolean:false];
  [t setPriorityWithInt:JavaLangThread_NORM_PRIORITY];
  return t;
}

- (void)dealloc {
  RELEASE_(group_);
  RELEASE_(threadNumber_);
  RELEASE_(threadNamePrefix_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilNamedThreadFactory class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilNamedThreadFactory_threadPoolNumber, new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilNamedThreadFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "NamedThreadFactory", NULL, 0x1, NULL, NULL },
    { "checkPrefixWithNSString:", "checkPrefix", "Ljava.lang.String;", 0xa, NULL, NULL },
    { "newThreadWithJavaLangRunnable:", "newThread", "Ljava.lang.Thread;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "threadPoolNumber", "threadPoolNumber", 0x1a, "Ljava.util.concurrent.atomic.AtomicInteger;", &OrgApacheLuceneUtilNamedThreadFactory_threadPoolNumber, NULL, .constantValue.asLong = 0 },
    { "group_", NULL, 0x12, "Ljava.lang.ThreadGroup;", NULL, NULL, .constantValue.asLong = 0 },
    { "threadNumber_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
    { "NAME_PATTERN", "NAME_PATTERN", 0x1a, "Ljava.lang.String;", &OrgApacheLuceneUtilNamedThreadFactory_NAME_PATTERN, NULL, .constantValue.asLong = 0 },
    { "threadNamePrefix_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilNamedThreadFactory = { 2, "NamedThreadFactory", "org.apache.lucene.util", NULL, 0x1, 3, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilNamedThreadFactory;
}

@end

void OrgApacheLuceneUtilNamedThreadFactory_initWithNSString_(OrgApacheLuceneUtilNamedThreadFactory *self, NSString *threadNamePrefix) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->threadNumber_, new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1));
  JavaLangSecurityManager *s = JavaLangSystem_getSecurityManager();
  JreStrongAssign(&self->group_, (s != nil) ? [((JavaLangSecurityManager *) nil_chk(s)) getThreadGroup] : [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) getThreadGroup]);
  JreStrongAssign(&self->threadNamePrefix_, NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), OrgApacheLuceneUtilNamedThreadFactory_NAME_PATTERN, [IOSObjectArray arrayWithObjects:(id[]){ OrgApacheLuceneUtilNamedThreadFactory_checkPrefixWithNSString_(threadNamePrefix), JavaLangInteger_valueOfWithInt_([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(OrgApacheLuceneUtilNamedThreadFactory_threadPoolNumber)) getAndIncrement]) } count:2 type:NSObject_class_()]));
}

OrgApacheLuceneUtilNamedThreadFactory *new_OrgApacheLuceneUtilNamedThreadFactory_initWithNSString_(NSString *threadNamePrefix) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilNamedThreadFactory, initWithNSString_, threadNamePrefix)
}

OrgApacheLuceneUtilNamedThreadFactory *create_OrgApacheLuceneUtilNamedThreadFactory_initWithNSString_(NSString *threadNamePrefix) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilNamedThreadFactory, initWithNSString_, threadNamePrefix)
}

NSString *OrgApacheLuceneUtilNamedThreadFactory_checkPrefixWithNSString_(NSString *prefix) {
  OrgApacheLuceneUtilNamedThreadFactory_initialize();
  return prefix == nil || ((jint) [prefix length]) == 0 ? @"Lucene" : prefix;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilNamedThreadFactory)
