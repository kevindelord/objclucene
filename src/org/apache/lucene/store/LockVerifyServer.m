//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockVerifyServer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Error.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "java/net/InetSocketAddress.h"
#include "java/net/ServerSocket.h"
#include "java/net/Socket.h"
#include "java/net/SocketAddress.h"
#include "java/util/concurrent/CountDownLatch.h"
#include "org/apache/lucene/store/LockVerifyServer.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneStoreLockVerifyServer_$1 : JavaLangThread {
 @public
  JavaNetSocket *val$cs_;
  JavaUtilConcurrentCountDownLatch *val$startingGun_;
  id val$localLock_;
  IOSIntArray *val$lockedID_;
}

- (void)run;

- (instancetype)initWithJavaNetSocket:(JavaNetSocket *)capture$0
 withJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$1
                               withId:(id)capture$2
                         withIntArray:(IOSIntArray *)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockVerifyServer_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreLockVerifyServer_$1, val$cs_, JavaNetSocket *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreLockVerifyServer_$1, val$startingGun_, JavaUtilConcurrentCountDownLatch *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreLockVerifyServer_$1, val$localLock_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreLockVerifyServer_$1, val$lockedID_, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneStoreLockVerifyServer_$1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(OrgApacheLuceneStoreLockVerifyServer_$1 *self, JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3);

__attribute__((unused)) static OrgApacheLuceneStoreLockVerifyServer_$1 *new_OrgApacheLuceneStoreLockVerifyServer_$1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLockVerifyServer_$1)

@implementation OrgApacheLuceneStoreLockVerifyServer

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgApacheLuceneStoreLockVerifyServer_mainWithNSStringArray_(args);
}

- (instancetype)init {
  OrgApacheLuceneStoreLockVerifyServer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "mainWithNSStringArray:", "main", "V", 0x9, "Ljava.lang.Exception;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockVerifyServer = { 2, "LockVerifyServer", "org.apache.lucene.store", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreLockVerifyServer;
}

@end

void OrgApacheLuceneStoreLockVerifyServer_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneStoreLockVerifyServer_initialize();
  if (((IOSObjectArray *) nil_chk(args))->size_ != 2) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:@"Usage: java org.apache.lucene.store.LockVerifyServer bindToIp clients\n"];
    JavaLangSystem_exitWithInt_(1);
  }
  jint arg = 0;
  NSString *hostname = IOSObjectArray_Get(args, arg++);
  jint maxClients = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(args, arg++));
  {
    JavaLangThrowable *__mainException = nil;
    JavaNetServerSocket *s = [new_JavaNetServerSocket_init() autorelease];
    @try {
      [s setReuseAddressWithBoolean:YES];
      [s setSoTimeoutWithInt:30000];
      [s bindWithJavaNetSocketAddress:[new_JavaNetInetSocketAddress_initWithNSString_withInt_(hostname, 0) autorelease]];
      JavaNetInetSocketAddress *localAddr = (JavaNetInetSocketAddress *) check_class_cast([s getLocalSocketAddress], [JavaNetInetSocketAddress class]);
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$@$", @"Listening on ", localAddr, @"...")];
      JavaLangSystem_setPropertyWithNSString_withNSString_(@"lockverifyserver.port", JavaLangInteger_toStringWithInt_([((JavaNetInetSocketAddress *) nil_chk(localAddr)) getPort]));
      id localLock = [new_NSObject_init() autorelease];
      IOSIntArray *lockedID = [IOSIntArray arrayWithLength:1];
      *IOSIntArray_GetRef(lockedID, 0) = -1;
      JavaUtilConcurrentCountDownLatch *startingGun = [new_JavaUtilConcurrentCountDownLatch_initWithInt_(1) autorelease];
      IOSObjectArray *threads = [IOSObjectArray arrayWithLength:maxClients type:JavaLangThread_class_()];
      for (jint count = 0; count < maxClients; count++) {
        JavaNetSocket *cs = [s accept];
        IOSObjectArray_SetAndConsume(threads, count, new_OrgApacheLuceneStoreLockVerifyServer_$1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(cs, startingGun, localLock, lockedID));
        [((JavaLangThread *) nil_chk(IOSObjectArray_Get(threads, count))) start];
      }
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"All clients started, fire gun..."];
      [startingGun countDown];
      {
        IOSObjectArray *a__ = threads;
        JavaLangThread * const *b__ = a__->buffer_;
        JavaLangThread * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          JavaLangThread *t = *b__++;
          [((JavaLangThread *) nil_chk(t)) join];
        }
      }
      JavaLangSystem_clearPropertyWithNSString_(@"lockverifyserver.port");
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"Server terminated."];
    }
    @finally {
      @try {
        [s close];
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

void OrgApacheLuceneStoreLockVerifyServer_init(OrgApacheLuceneStoreLockVerifyServer *self) {
  NSObject_init(self);
}

OrgApacheLuceneStoreLockVerifyServer *new_OrgApacheLuceneStoreLockVerifyServer_init() {
  OrgApacheLuceneStoreLockVerifyServer *self = [OrgApacheLuceneStoreLockVerifyServer alloc];
  OrgApacheLuceneStoreLockVerifyServer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreLockVerifyServer)

@implementation OrgApacheLuceneStoreLockVerifyServer_$1

- (void)run {
  {
    JavaLangThrowable *__mainException = nil;
    JavaIoInputStream *in = [((JavaNetSocket *) nil_chk(val$cs_)) getInputStream];
    JavaIoOutputStream *os = [val$cs_ getOutputStream];
    @try {
      jint id_ = [((JavaIoInputStream *) nil_chk(in)) read];
      if (id_ < 0) {
        @throw [new_JavaIoIOException_initWithNSString_(@"Client closed connection before communication started.") autorelease];
      }
      [((JavaUtilConcurrentCountDownLatch *) nil_chk(val$startingGun_)) await];
      [((JavaIoOutputStream *) nil_chk(os)) writeWithInt:43];
      [os flush];
      while (YES) {
        jint command = [in read];
        if (command < 0) {
          return;
        }
        @synchronized(val$localLock_) {
          jint currentLock = IOSIntArray_Get(nil_chk(val$lockedID_), 0);
          if (currentLock == -2) {
            return;
          }
          switch (command) {
            case 1:
            if (currentLock != -1) {
              *IOSIntArray_GetRef(val$lockedID_, 0) = -2;
              @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I$", @"id ", id_, @" got lock, but ", currentLock, @" already holds the lock")) autorelease];
            }
            *IOSIntArray_GetRef(val$lockedID_, 0) = id_;
            break;
            case 0:
            if (currentLock != id_) {
              *IOSIntArray_GetRef(val$lockedID_, 0) = -2;
              @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I$", @"id ", id_, @" released the lock, but ", currentLock, @" is the one holding the lock")) autorelease];
            }
            *IOSIntArray_GetRef(val$lockedID_, 0) = -1;
            break;
            default:
            @throw [new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I", @"Unrecognized command: ", command)) autorelease];
          }
          [os writeWithInt:command];
          [os flush];
        }
      }
    }
    @catch (JavaLangRuntimeException *e) {
      __mainException = e;
      @throw e;
    }
    @catch (JavaLangError *e) {
      __mainException = e;
      @throw e;
    }
    @catch (JavaLangThrowable *e) {
      __mainException = e;
      @throw e;
    }
    @catch (JavaLangException *ioe) {
      __mainException = ioe;
      @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe) autorelease];
    }
    @finally {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ val$cs_ } count:1 type:JavaIoCloseable_class_()]);
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
        [in close];
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

- (instancetype)initWithJavaNetSocket:(JavaNetSocket *)capture$0
 withJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$1
                               withId:(id)capture$2
                         withIntArray:(IOSIntArray *)capture$3 {
  OrgApacheLuceneStoreLockVerifyServer_$1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

- (void)dealloc {
  RELEASE_(val$cs_);
  RELEASE_(val$startingGun_);
  RELEASE_(val$localLock_);
  RELEASE_(val$lockedID_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithJavaNetSocket:withJavaUtilConcurrentCountDownLatch:withId:withIntArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$cs_", NULL, 0x1012, "Ljava.net.Socket;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$startingGun_", NULL, 0x1012, "Ljava.util.concurrent.CountDownLatch;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$localLock_", NULL, 0x1012, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$lockedID_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneStoreLockVerifyServer", "mainWithNSStringArray:" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockVerifyServer_$1 = { 2, "", "org.apache.lucene.store", "LockVerifyServer", 0x8008, 2, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneStoreLockVerifyServer_$1;
}

@end

void OrgApacheLuceneStoreLockVerifyServer_$1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(OrgApacheLuceneStoreLockVerifyServer_$1 *self, JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3) {
  JreStrongAssign(&self->val$cs_, capture$0);
  JreStrongAssign(&self->val$startingGun_, capture$1);
  JreStrongAssign(&self->val$localLock_, capture$2);
  JreStrongAssign(&self->val$lockedID_, capture$3);
  JavaLangThread_init(self);
}

OrgApacheLuceneStoreLockVerifyServer_$1 *new_OrgApacheLuceneStoreLockVerifyServer_$1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(JavaNetSocket *capture$0, JavaUtilConcurrentCountDownLatch *capture$1, id capture$2, IOSIntArray *capture$3) {
  OrgApacheLuceneStoreLockVerifyServer_$1 *self = [OrgApacheLuceneStoreLockVerifyServer_$1 alloc];
  OrgApacheLuceneStoreLockVerifyServer_$1_initWithJavaNetSocket_withJavaUtilConcurrentCountDownLatch_withId_withIntArray_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreLockVerifyServer_$1)
