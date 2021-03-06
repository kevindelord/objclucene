//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocumentsWriterFlushQueue.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Thread.h"
#include "java/util/LinkedList.h"
#include "java/util/Queue.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "java/util/concurrent/locks/ReentrantLock.h"
#include "org/apache/lucene/index/DocumentsWriterDeleteQueue.h"
#include "org/apache/lucene/index/DocumentsWriterFlushQueue.h"
#include "org/apache/lucene/index/DocumentsWriterPerThread.h"
#include "org/apache/lucene/index/FrozenBufferedUpdates.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/SegmentCommitInfo.h"
#include "org/apache/lucene/util/InfoStream.h"

@interface OrgApacheLuceneIndexDocumentsWriterFlushQueue () {
 @public
  id<JavaUtilQueue> queue_;
  JavaUtilConcurrentAtomicAtomicInteger *ticketCount_;
  JavaUtilConcurrentLocksReentrantLock *purgeLock_;
}

- (void)incTickets;

- (void)decTickets;

- (jint)innerPurgeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterFlushQueue, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterFlushQueue, ticketCount_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterFlushQueue, purgeLock_, JavaUtilConcurrentLocksReentrantLock *)

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterFlushQueue_incTickets(OrgApacheLuceneIndexDocumentsWriterFlushQueue *self);

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterFlushQueue_decTickets(OrgApacheLuceneIndexDocumentsWriterFlushQueue *self);

__attribute__((unused)) static jint OrgApacheLuceneIndexDocumentsWriterFlushQueue_innerPurgeWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexDocumentsWriterFlushQueue *self, OrgApacheLuceneIndexIndexWriter *writer);

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_publishFlushedSegmentWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *self, OrgApacheLuceneIndexIndexWriter *indexWriter, OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *newSegment, OrgApacheLuceneIndexFrozenBufferedUpdates *globalPacket);

__attribute__((unused)) static void OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_finishFlushWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *self, OrgApacheLuceneIndexIndexWriter *indexWriter, OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *newSegment, OrgApacheLuceneIndexFrozenBufferedUpdates *bufferedUpdates);

@interface OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket () {
 @public
  OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *segment_;
  jboolean failed_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket, segment_, OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *)

@implementation OrgApacheLuceneIndexDocumentsWriterFlushQueue

- (void)addDeletesWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue:(OrgApacheLuceneIndexDocumentsWriterDeleteQueue *)deleteQueue {
  @synchronized(self) {
    OrgApacheLuceneIndexDocumentsWriterFlushQueue_incTickets(self);
    jboolean success = false;
    @try {
      [((id<JavaUtilQueue>) nil_chk(queue_)) addWithId:create_OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_([((OrgApacheLuceneIndexDocumentsWriterDeleteQueue *) nil_chk(deleteQueue)) freezeGlobalBufferWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue_DeleteSlice:nil])];
      success = true;
    }
    @finally {
      if (!success) {
        OrgApacheLuceneIndexDocumentsWriterFlushQueue_decTickets(self);
      }
    }
  }
}

- (void)incTickets {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_incTickets(self);
}

- (void)decTickets {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_decTickets(self);
}

- (OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *)addFlushTicketWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)dwpt {
  @synchronized(self) {
    OrgApacheLuceneIndexDocumentsWriterFlushQueue_incTickets(self);
    jboolean success = false;
    @try {
      OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *ticket = create_OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_([((OrgApacheLuceneIndexDocumentsWriterPerThread *) nil_chk(dwpt)) prepareFlush]);
      [((id<JavaUtilQueue>) nil_chk(queue_)) addWithId:ticket];
      success = true;
      return ticket;
    }
    @finally {
      if (!success) {
        OrgApacheLuceneIndexDocumentsWriterFlushQueue_decTickets(self);
      }
    }
  }
}

- (void)addSegmentWithOrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket:(OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *)ticket
                       withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *)segment {
  @synchronized(self) {
    [((OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *) nil_chk(ticket)) setSegmentWithOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:segment];
  }
}

- (void)markTicketFailedWithOrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket:(OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *)ticket {
  @synchronized(self) {
    [((OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *) nil_chk(ticket)) setFailed];
  }
}

- (jboolean)hasTickets {
  JreAssert(([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ticketCount_)) get] >= 0), (JreStrcat("$I", @"ticketCount should be >= 0 but was: ", [ticketCount_ get])));
  return [ticketCount_ get] != 0;
}

- (jint)innerPurgeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  return OrgApacheLuceneIndexDocumentsWriterFlushQueue_innerPurgeWithOrgApacheLuceneIndexIndexWriter_(self, writer);
}

- (jint)forcePurgeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  JreAssert((!JavaLangThread_holdsLockWithId_(self)), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:134 condition failed: assert !Thread.holdsLock(this);"));
  JreAssert((!JavaLangThread_holdsLockWithId_(writer)), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:135 condition failed: assert !Thread.holdsLock(writer);"));
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(purgeLock_)) lock];
  @try {
    return OrgApacheLuceneIndexDocumentsWriterFlushQueue_innerPurgeWithOrgApacheLuceneIndexIndexWriter_(self, writer);
  }
  @finally {
    [purgeLock_ unlock];
  }
}

- (jint)tryPurgeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  JreAssert((!JavaLangThread_holdsLockWithId_(self)), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:145 condition failed: assert !Thread.holdsLock(this);"));
  JreAssert((!JavaLangThread_holdsLockWithId_(writer)), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:146 condition failed: assert !Thread.holdsLock(writer);"));
  if ([((JavaUtilConcurrentLocksReentrantLock *) nil_chk(purgeLock_)) tryLock]) {
    @try {
      return OrgApacheLuceneIndexDocumentsWriterFlushQueue_innerPurgeWithOrgApacheLuceneIndexIndexWriter_(self, writer);
    }
    @finally {
      [purgeLock_ unlock];
    }
  }
  return 0;
}

- (jint)getTicketCount {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ticketCount_)) get];
}

- (void)clear {
  @synchronized(self) {
    [((id<JavaUtilQueue>) nil_chk(queue_)) clear];
    [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ticketCount_)) setWithInt:0];
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(queue_);
  RELEASE_(ticketCount_);
  RELEASE_(purgeLock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addDeletesWithOrgApacheLuceneIndexDocumentsWriterDeleteQueue:", "addDeletes", "V", 0x0, "Ljava.io.IOException;", NULL },
    { "incTickets", NULL, "V", 0x2, NULL, NULL },
    { "decTickets", NULL, "V", 0x2, NULL, NULL },
    { "addFlushTicketWithOrgApacheLuceneIndexDocumentsWriterPerThread:", "addFlushTicket", "Lorg.apache.lucene.index.DocumentsWriterFlushQueue$SegmentFlushTicket;", 0x20, NULL, NULL },
    { "addSegmentWithOrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket:withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:", "addSegment", "V", 0x20, NULL, NULL },
    { "markTicketFailedWithOrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket:", "markTicketFailed", "V", 0x20, NULL, NULL },
    { "hasTickets", NULL, "Z", 0x0, NULL, NULL },
    { "innerPurgeWithOrgApacheLuceneIndexIndexWriter:", "innerPurge", "I", 0x2, "Ljava.io.IOException;", NULL },
    { "forcePurgeWithOrgApacheLuceneIndexIndexWriter:", "forcePurge", "I", 0x0, "Ljava.io.IOException;", NULL },
    { "tryPurgeWithOrgApacheLuceneIndexIndexWriter:", "tryPurge", "I", 0x0, "Ljava.io.IOException;", NULL },
    { "getTicketCount", NULL, "I", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x20, NULL, NULL },
    { "init", "DocumentsWriterFlushQueue", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "queue_", NULL, 0x12, "Ljava.util.Queue;", NULL, "Ljava/util/Queue<Lorg/apache/lucene/index/DocumentsWriterFlushQueue$FlushTicket;>;", .constantValue.asLong = 0 },
    { "ticketCount_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
    { "purgeLock_", NULL, 0x12, "Ljava.util.concurrent.locks.ReentrantLock;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.DocumentsWriterFlushQueue$FlushTicket;", "Lorg.apache.lucene.index.DocumentsWriterFlushQueue$GlobalDeletesTicket;", "Lorg.apache.lucene.index.DocumentsWriterFlushQueue$SegmentFlushTicket;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterFlushQueue = { 2, "DocumentsWriterFlushQueue", "org.apache.lucene.index", NULL, 0x0, 13, methods, 3, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexDocumentsWriterFlushQueue;
}

@end

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_incTickets(OrgApacheLuceneIndexDocumentsWriterFlushQueue *self) {
  jint numTickets = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->ticketCount_)) incrementAndGet];
  JreAssert((numTickets > 0), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:55 condition failed: assert numTickets > 0;"));
}

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_decTickets(OrgApacheLuceneIndexDocumentsWriterFlushQueue *self) {
  jint numTickets = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->ticketCount_)) decrementAndGet];
  JreAssert((numTickets >= 0), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:60 condition failed: assert numTickets >= 0;"));
}

jint OrgApacheLuceneIndexDocumentsWriterFlushQueue_innerPurgeWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexDocumentsWriterFlushQueue *self, OrgApacheLuceneIndexIndexWriter *writer) {
  JreAssert(([((JavaUtilConcurrentLocksReentrantLock *) nil_chk(self->purgeLock_)) isHeldByCurrentThread]), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:98 condition failed: assert purgeLock.isHeldByCurrentThread();"));
  jint numPurged = 0;
  while (true) {
    OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *head;
    jboolean canPublish;
    @synchronized(self) {
      head = [((id<JavaUtilQueue>) nil_chk(self->queue_)) peek];
      canPublish = (head != nil && [head canPublish]);
    }
    if (canPublish) {
      numPurged++;
      @try {
        [((OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *) nil_chk(head)) publishWithOrgApacheLuceneIndexIndexWriter:writer];
      }
      @finally {
        @synchronized(self) {
          OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *poll = [self->queue_ poll];
          [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->ticketCount_)) decrementAndGet];
          JreAssert((poll == head), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:123 condition failed: assert poll == head;"));
        }
      }
    }
    else {
      break;
    }
  }
  return numPurged;
}

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_init(OrgApacheLuceneIndexDocumentsWriterFlushQueue *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->queue_, new_JavaUtilLinkedList_init());
  JreStrongAssignAndConsume(&self->ticketCount_, new_JavaUtilConcurrentAtomicAtomicInteger_init());
  JreStrongAssignAndConsume(&self->purgeLock_, new_JavaUtilConcurrentLocksReentrantLock_init());
}

OrgApacheLuceneIndexDocumentsWriterFlushQueue *new_OrgApacheLuceneIndexDocumentsWriterFlushQueue_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterFlushQueue, init)
}

OrgApacheLuceneIndexDocumentsWriterFlushQueue *create_OrgApacheLuceneIndexDocumentsWriterFlushQueue_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterFlushQueue, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterFlushQueue)

@implementation OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket

- (instancetype)initWithOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)frozenUpdates {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(self, frozenUpdates);
  return self;
}

- (void)publishWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)canPublish {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)publishFlushedSegmentWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)indexWriter
 withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *)newSegment
                   withOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)globalPacket {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_publishFlushedSegmentWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(self, indexWriter, newSegment, globalPacket);
}

- (void)finishFlushWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)indexWriter
withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *)newSegment
         withOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)bufferedUpdates {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_finishFlushWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(self, indexWriter, newSegment, bufferedUpdates);
}

- (void)dealloc {
  RELEASE_(frozenUpdates_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexFrozenBufferedUpdates:", "FlushTicket", NULL, 0x4, NULL, NULL },
    { "publishWithOrgApacheLuceneIndexIndexWriter:", "publish", "V", 0x404, "Ljava.io.IOException;", NULL },
    { "canPublish", NULL, "Z", 0x404, NULL, NULL },
    { "publishFlushedSegmentWithOrgApacheLuceneIndexIndexWriter:withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:withOrgApacheLuceneIndexFrozenBufferedUpdates:", "publishFlushedSegment", "V", 0x14, "Ljava.io.IOException;", NULL },
    { "finishFlushWithOrgApacheLuceneIndexIndexWriter:withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:withOrgApacheLuceneIndexFrozenBufferedUpdates:", "finishFlush", "V", 0x14, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "frozenUpdates_", NULL, 0x4, "Lorg.apache.lucene.index.FrozenBufferedUpdates;", NULL, NULL, .constantValue.asLong = 0 },
    { "published_", NULL, 0x4, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket = { 2, "FlushTicket", "org.apache.lucene.index", "DocumentsWriterFlushQueue", 0x408, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket;
}

@end

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *self, OrgApacheLuceneIndexFrozenBufferedUpdates *frozenUpdates) {
  NSObject_init(self);
  self->published_ = false;
  JreAssert((frozenUpdates != nil), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:171 condition failed: assert frozenUpdates != null;"));
  JreStrongAssign(&self->frozenUpdates_, frozenUpdates);
}

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_publishFlushedSegmentWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *self, OrgApacheLuceneIndexIndexWriter *indexWriter, OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *newSegment, OrgApacheLuceneIndexFrozenBufferedUpdates *globalPacket) {
  JreAssert((newSegment != nil), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:186 condition failed: assert newSegment != null;"));
  JreAssert((((OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *) nil_chk(newSegment))->segmentInfo_ != nil), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:187 condition failed: assert newSegment.segmentInfo != null;"));
  OrgApacheLuceneIndexFrozenBufferedUpdates *segmentUpdates = newSegment->segmentUpdates_;
  if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(((OrgApacheLuceneIndexIndexWriter *) nil_chk(indexWriter))->infoStream_)) isEnabledWithNSString:@"DW"]) {
    [indexWriter->infoStream_ messageWithNSString:@"DW" withNSString:JreStrcat("$@", @"publishFlushedSegment seg-private updates=", segmentUpdates)];
  }
  if (segmentUpdates != nil && [indexWriter->infoStream_ isEnabledWithNSString:@"DW"]) {
    [indexWriter->infoStream_ messageWithNSString:@"DW" withNSString:JreStrcat("$@", @"flush: push buffered seg private updates: ", segmentUpdates)];
  }
  [indexWriter publishFlushedSegmentWithOrgApacheLuceneIndexSegmentCommitInfo:newSegment->segmentInfo_ withOrgApacheLuceneIndexFrozenBufferedUpdates:segmentUpdates withOrgApacheLuceneIndexFrozenBufferedUpdates:globalPacket];
}

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_finishFlushWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket *self, OrgApacheLuceneIndexIndexWriter *indexWriter, OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *newSegment, OrgApacheLuceneIndexFrozenBufferedUpdates *bufferedUpdates) {
  if (newSegment == nil) {
    JreAssert((bufferedUpdates != nil), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:205 condition failed: assert bufferedUpdates != null;"));
    if (bufferedUpdates != nil && [bufferedUpdates any]) {
      [((OrgApacheLuceneIndexIndexWriter *) nil_chk(indexWriter)) publishFrozenUpdatesWithOrgApacheLuceneIndexFrozenBufferedUpdates:bufferedUpdates];
      if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(indexWriter->infoStream_)) isEnabledWithNSString:@"DW"]) {
        [indexWriter->infoStream_ messageWithNSString:@"DW" withNSString:JreStrcat("$@", @"flush: push buffered updates: ", bufferedUpdates)];
      }
    }
  }
  else {
    OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_publishFlushedSegmentWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(self, indexWriter, newSegment, bufferedUpdates);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket)

@implementation OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket

- (instancetype)initWithOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)frozenUpdates {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(self, frozenUpdates);
  return self;
}

- (void)publishWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  JreAssert((!published_), (@"ticket was already publised - can not publish twice"));
  published_ = true;
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_finishFlushWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(self, writer, nil, frozenUpdates_);
}

- (jboolean)canPublish {
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexFrozenBufferedUpdates:", "GlobalDeletesTicket", NULL, 0x4, NULL, NULL },
    { "publishWithOrgApacheLuceneIndexIndexWriter:", "publish", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "canPublish", NULL, "Z", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket = { 2, "GlobalDeletesTicket", "org.apache.lucene.index", "DocumentsWriterFlushQueue", 0x18, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket;
}

@end

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket *self, OrgApacheLuceneIndexFrozenBufferedUpdates *frozenUpdates) {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(self, frozenUpdates);
}

OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket *new_OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexFrozenBufferedUpdates *frozenUpdates) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket, initWithOrgApacheLuceneIndexFrozenBufferedUpdates_, frozenUpdates)
}

OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket *create_OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexFrozenBufferedUpdates *frozenUpdates) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket, initWithOrgApacheLuceneIndexFrozenBufferedUpdates_, frozenUpdates)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterFlushQueue_GlobalDeletesTicket)

@implementation OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket

- (instancetype)initWithOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)frozenDeletes {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(self, frozenDeletes);
  return self;
}

- (void)publishWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  JreAssert((!published_), (@"ticket was already publised - can not publish twice"));
  published_ = true;
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_finishFlushWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment_withOrgApacheLuceneIndexFrozenBufferedUpdates_(self, writer, segment_, frozenUpdates_);
}

- (void)setSegmentWithOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:(OrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment *)segment {
  JreAssert((!failed_), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:253 condition failed: assert !failed;"));
  JreStrongAssign(&self->segment_, segment);
}

- (void)setFailed {
  JreAssert((segment_ == nil), (@"org/apache/lucene/index/DocumentsWriterFlushQueue.java:258 condition failed: assert segment == null;"));
  failed_ = true;
}

- (jboolean)canPublish {
  return segment_ != nil || failed_;
}

- (void)dealloc {
  RELEASE_(segment_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexFrozenBufferedUpdates:", "SegmentFlushTicket", NULL, 0x4, NULL, NULL },
    { "publishWithOrgApacheLuceneIndexIndexWriter:", "publish", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "setSegmentWithOrgApacheLuceneIndexDocumentsWriterPerThread_FlushedSegment:", "setSegment", "V", 0x4, NULL, NULL },
    { "setFailed", NULL, "V", 0x4, NULL, NULL },
    { "canPublish", NULL, "Z", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "segment_", NULL, 0x2, "Lorg.apache.lucene.index.DocumentsWriterPerThread$FlushedSegment;", NULL, NULL, .constantValue.asLong = 0 },
    { "failed_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket = { 2, "SegmentFlushTicket", "org.apache.lucene.index", "DocumentsWriterFlushQueue", 0x18, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket;
}

@end

void OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *self, OrgApacheLuceneIndexFrozenBufferedUpdates *frozenDeletes) {
  OrgApacheLuceneIndexDocumentsWriterFlushQueue_FlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(self, frozenDeletes);
  self->failed_ = false;
}

OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *new_OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexFrozenBufferedUpdates *frozenDeletes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket, initWithOrgApacheLuceneIndexFrozenBufferedUpdates_, frozenDeletes)
}

OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket *create_OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket_initWithOrgApacheLuceneIndexFrozenBufferedUpdates_(OrgApacheLuceneIndexFrozenBufferedUpdates *frozenDeletes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket, initWithOrgApacheLuceneIndexFrozenBufferedUpdates_, frozenDeletes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocumentsWriterFlushQueue_SegmentFlushTicket)
