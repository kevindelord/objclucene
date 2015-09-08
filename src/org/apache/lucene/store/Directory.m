//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/Directory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/store/BufferedChecksumIndexInput.h"
#include "org/apache/lucene/store/ChecksumIndexInput.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/util/IOUtils.h"

@implementation OrgApacheLuceneStoreDirectory

- (IOSObjectArray *)listAll {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)deleteFileWithNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)fileLengthWithNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name
                            withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)names {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)renameFileWithNSString:(NSString *)source
                  withNSString:(NSString *)dest {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneStoreChecksumIndexInput *)openChecksumInputWithNSString:(NSString *)name
                                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  return [new_OrgApacheLuceneStoreBufferedChecksumIndexInput_initWithOrgApacheLuceneStoreIndexInput_([self openInputWithNSString:name withOrgApacheLuceneStoreIOContext:context]) autorelease];
}

- (OrgApacheLuceneStoreLock *)obtainLockWithNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (NSString *)description {
  return JreStrcat("$C$", [[self getClass] getSimpleName], '@', JavaLangInteger_toHexStringWithInt_(((jint) [self hash])));
}

- (void)copyFromWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)from
                                     withNSString:(NSString *)src
                                     withNSString:(NSString *)dest
                withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  jboolean success = NO;
  {
    JavaLangThrowable *__mainException = nil;
    OrgApacheLuceneStoreIndexInput *is = [((OrgApacheLuceneStoreDirectory *) nil_chk(from)) openInputWithNSString:src withOrgApacheLuceneStoreIOContext:context];
    OrgApacheLuceneStoreIndexOutput *os = [self createOutputWithNSString:dest withOrgApacheLuceneStoreIOContext:context];
    @try {
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(os)) copyBytesWithOrgApacheLuceneStoreDataInput:is withLong:[((OrgApacheLuceneStoreIndexInput *) nil_chk(is)) length]];
      success = YES;
    }
    @finally {
      if (!success) {
        OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(self, [IOSObjectArray arrayWithObjects:(id[]){ dest } count:1 type:NSString_class_()]);
      }
      @try {
        [os close];
      }
      @catch (JavaLangThrowable *e) {
        if (__mainException) {
          [__mainException addSuppressedWithJavaLangThrowable:e];
        } else {
          __mainException = e;
        }
      }
      @try {
        [is close];
      }
      @catch (JavaLangThrowable *e) {
        if (__mainException) {
          [__mainException addSuppressedWithJavaLangThrowable:e];
        } else {
          __mainException = e;
        }
      }
      if (__mainException) {
        @throw __mainException;
      }
    }
  }
}

- (void)ensureOpen {
}

- (instancetype)init {
  OrgApacheLuceneStoreDirectory_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "listAll", NULL, "[Ljava.lang.String;", 0x401, "Ljava.io.IOException;", NULL },
    { "deleteFileWithNSString:", "deleteFile", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "fileLengthWithNSString:", "fileLength", "J", 0x401, "Ljava.io.IOException;", NULL },
    { "createOutputWithNSString:withOrgApacheLuceneStoreIOContext:", "createOutput", "Lorg.apache.lucene.store.IndexOutput;", 0x401, "Ljava.io.IOException;", NULL },
    { "syncWithJavaUtilCollection:", "sync", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "renameFileWithNSString:withNSString:", "renameFile", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "openInputWithNSString:withOrgApacheLuceneStoreIOContext:", "openInput", "Lorg.apache.lucene.store.IndexInput;", 0x401, "Ljava.io.IOException;", NULL },
    { "openChecksumInputWithNSString:withOrgApacheLuceneStoreIOContext:", "openChecksumInput", "Lorg.apache.lucene.store.ChecksumIndexInput;", 0x1, "Ljava.io.IOException;", NULL },
    { "obtainLockWithNSString:", "obtainLock", "Lorg.apache.lucene.store.Lock;", 0x401, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "copyFromWithOrgApacheLuceneStoreDirectory:withNSString:withNSString:withOrgApacheLuceneStoreIOContext:", "copyFrom", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "ensureOpen", NULL, "V", 0x4, "Lorg.apache.lucene.store.AlreadyClosedException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreDirectory = { 2, "Directory", "org.apache.lucene.store", NULL, 0x401, 14, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreDirectory;
}

@end

void OrgApacheLuceneStoreDirectory_init(OrgApacheLuceneStoreDirectory *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreDirectory)
