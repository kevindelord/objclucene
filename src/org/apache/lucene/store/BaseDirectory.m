//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/BaseDirectory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/NullPointerException.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/store/BaseDirectory.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"

@implementation OrgApacheLuceneStoreBaseDirectory

- (instancetype)initWithOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory {
  OrgApacheLuceneStoreBaseDirectory_initWithOrgApacheLuceneStoreLockFactory_(self, lockFactory);
  return self;
}

- (OrgApacheLuceneStoreLock *)obtainLockWithNSString:(NSString *)name {
  return [((OrgApacheLuceneStoreLockFactory *) nil_chk(lockFactory_)) obtainLockWithOrgApacheLuceneStoreDirectory:self withNSString:name];
}

- (void)ensureOpen {
  if (!JreLoadVolatileBoolean(&isOpen_)) @throw create_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Directory is closed");
}

- (NSString *)description {
  return JreStrcat("$$@", [super description], @" lockFactory=", lockFactory_);
}

- (void)dealloc {
  RELEASE_(lockFactory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreLockFactory:", "BaseDirectory", NULL, 0x4, NULL, NULL },
    { "obtainLockWithNSString:", "obtainLock", "Lorg.apache.lucene.store.Lock;", 0x11, "Ljava.io.IOException;", NULL },
    { "ensureOpen", NULL, "V", 0x14, "Lorg.apache.lucene.store.AlreadyClosedException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "isOpen_", NULL, 0x44, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "lockFactory_", NULL, 0x14, "Lorg.apache.lucene.store.LockFactory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreBaseDirectory = { 2, "BaseDirectory", "org.apache.lucene.store", NULL, 0x401, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreBaseDirectory;
}

@end

void OrgApacheLuceneStoreBaseDirectory_initWithOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreBaseDirectory *self, OrgApacheLuceneStoreLockFactory *lockFactory) {
  OrgApacheLuceneStoreDirectory_init(self);
  JreAssignVolatileBoolean(&self->isOpen_, true);
  if (lockFactory == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"LockFactory cannot be null, use an explicit instance!");
  }
  JreStrongAssign(&self->lockFactory_, lockFactory);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreBaseDirectory)
