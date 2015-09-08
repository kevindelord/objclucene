//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/FieldsConsumer.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.h"
#include "org/apache/lucene/search/suggest/document/CompletionPostingsFormat.h"
#include "org/apache/lucene/search/suggest/document/NRTSuggesterBuilder.h"
#include "org/apache/lucene/store/ByteArrayDataInput.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer () {
 @public
  NSString *delegatePostingsFormatName_;
  id<JavaUtilMap> seenFields_;
  OrgApacheLuceneIndexSegmentWriteState *state_;
  OrgApacheLuceneStoreIndexOutput *dictOut_;
  OrgApacheLuceneCodecsFieldsConsumer *delegateFieldsConsumer_;
  jboolean closed_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, delegatePostingsFormatName_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, seenFields_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, state_, OrgApacheLuceneIndexSegmentWriteState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, dictOut_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer, delegateFieldsConsumer_, OrgApacheLuceneCodecsFieldsConsumer *)

@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData : NSObject {
 @public
  jlong filePointer_;
  jlong minWeight_;
  jlong maxWeight_;
  jbyte type_;
}

- (instancetype)initWithLong:(jlong)filePointer
                    withLong:(jlong)minWeight
                    withLong:(jlong)maxWeight
                    withByte:(jbyte)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *self, jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type);

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData)

@interface OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter : NSObject {
 @public
  OrgApacheLuceneIndexPostingsEnum *postingsEnum_;
  jint docCount_;
  jlong maxWeight_;
  jlong minWeight_;
  jbyte type_;
  jboolean first_;
  OrgApacheLuceneUtilBytesRefBuilder *scratch_;
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *builder_;
}

- (instancetype)init;

- (jboolean)finishWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output;

- (void)writeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
           withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, postingsEnum_, OrgApacheLuceneIndexPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, scratch_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter, builder_, OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *self);

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer

- (instancetype)initWithOrgApacheLuceneCodecsPostingsFormat:(OrgApacheLuceneCodecsPostingsFormat *)delegatePostingsFormat
                  withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(self, delegatePostingsFormat, state);
  return self;
}

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields {
  [((OrgApacheLuceneCodecsFieldsConsumer *) nil_chk(delegateFieldsConsumer_)) writeWithOrgApacheLuceneIndexFields:fields];
  for (NSString * __strong field in nil_chk(fields)) {
    OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *termWriter = [new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init() autorelease];
    OrgApacheLuceneIndexTerms *terms = [fields termsWithNSString:field];
    OrgApacheLuceneIndexTermsEnum *termsEnum = [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator];
    OrgApacheLuceneUtilBytesRef *term;
    while ((term = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next]) != nil) {
      [termWriter writeWithOrgApacheLuceneUtilBytesRef:term withOrgApacheLuceneIndexTermsEnum:termsEnum];
    }
    jlong filePointer = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(dictOut_)) getFilePointer];
    if ([termWriter finishWithOrgApacheLuceneStoreIndexOutput:dictOut_]) {
      [((id<JavaUtilMap>) nil_chk(seenFields_)) putWithId:field withId:[new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(filePointer, termWriter->minWeight_, termWriter->maxWeight_, termWriter->type_) autorelease]];
    }
  }
}

- (void)close {
  if (closed_) {
    return;
  }
  closed_ = YES;
  NSString *indexFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state_))->segmentInfo_))->name_, state_->segmentSuffix_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_INDEX_EXTENSION_);
  jboolean success = NO;
  {
    JavaLangThrowable *__mainException = nil;
    OrgApacheLuceneStoreIndexOutput *indexOut = [((OrgApacheLuceneStoreDirectory *) nil_chk(state_->directory_)) createOutputWithNSString:indexFile withOrgApacheLuceneStoreIOContext:state_->context_];
    @try {
      [((OrgApacheLuceneCodecsFieldsConsumer *) nil_chk(delegateFieldsConsumer_)) close];
      OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(indexOut, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_VERSION_CURRENT, [state_->segmentInfo_ getId], state_->segmentSuffix_);
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(indexOut)) writeStringWithNSString:delegatePostingsFormatName_];
      [indexOut writeVIntWithInt:[((id<JavaUtilMap>) nil_chk(seenFields_)) size]];
      for (id<JavaUtilMap_Entry> __strong seenField in nil_chk([seenFields_ entrySet])) {
        OrgApacheLuceneIndexFieldInfo *fieldInfo = [((OrgApacheLuceneIndexFieldInfos *) nil_chk(state_->fieldInfos_)) fieldInfoWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(seenField)) getKey]];
        [indexOut writeVIntWithInt:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->number_];
        OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *metaData = [seenField getValue];
        [indexOut writeVLongWithLong:((OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *) nil_chk(metaData))->filePointer_];
        [indexOut writeVLongWithLong:metaData->minWeight_];
        [indexOut writeVLongWithLong:metaData->maxWeight_];
        [indexOut writeByteWithByte:metaData->type_];
      }
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(indexOut);
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(dictOut_);
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ dictOut_ } count:1 type:JavaIoCloseable_class_()]);
      success = YES;
    }
    @finally {
      if (success == NO) {
        OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ dictOut_, delegateFieldsConsumer_ } count:2 type:JavaIoCloseable_class_()]);
      }
      @try {
        [indexOut close];
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

- (void)dealloc {
  RELEASE_(delegatePostingsFormatName_);
  RELEASE_(seenFields_);
  RELEASE_(state_);
  RELEASE_(dictOut_);
  RELEASE_(delegateFieldsConsumer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneCodecsPostingsFormat:withOrgApacheLuceneIndexSegmentWriteState:", "CompletionFieldsConsumer", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "writeWithOrgApacheLuceneIndexFields:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delegatePostingsFormatName_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "seenFields_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/search/suggest/document/CompletionFieldsConsumer$CompletionMetaData;>;", .constantValue.asLong = 0 },
    { "state_", NULL, 0x12, "Lorg.apache.lucene.index.SegmentWriteState;", NULL, NULL, .constantValue.asLong = 0 },
    { "dictOut_", NULL, 0x2, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "delegateFieldsConsumer_", NULL, 0x2, "Lorg.apache.lucene.codecs.FieldsConsumer;", NULL, NULL, .constantValue.asLong = 0 },
    { "closed_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.suggest.document.CompletionFieldsConsumer$CompletionMetaData;", "Lorg.apache.lucene.search.suggest.document.CompletionFieldsConsumer$CompletionTermWriter;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer = { 2, "CompletionFieldsConsumer", "org.apache.lucene.search.suggest.document", NULL, 0x10, 3, methods, 6, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *self, OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state) {
  OrgApacheLuceneCodecsFieldsConsumer_init(self);
  JreStrongAssignAndConsume(&self->seenFields_, new_JavaUtilHashMap_init());
  self->closed_ = NO;
  JreStrongAssign(&self->delegatePostingsFormatName_, [((OrgApacheLuceneCodecsPostingsFormat *) nil_chk(delegatePostingsFormat)) getName]);
  JreStrongAssign(&self->state_, state);
  NSString *dictFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_))->name_, state->segmentSuffix_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_DICT_EXTENSION_);
  jboolean success = NO;
  @try {
    JreStrongAssign(&self->delegateFieldsConsumer_, [delegatePostingsFormat fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:state]);
    JreStrongAssign(&self->dictOut_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) createOutputWithNSString:dictFile withOrgApacheLuceneStoreIOContext:state->context_]);
    OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(self->dictOut_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME_, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    success = YES;
  }
  @finally {
    if (success == NO) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ self->dictOut_, self->delegateFieldsConsumer_ } count:2 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat, OrgApacheLuceneIndexSegmentWriteState *state) {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer *self = [OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer alloc];
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(self, delegatePostingsFormat, state);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData

- (instancetype)initWithLong:(jlong)filePointer
                    withLong:(jlong)minWeight
                    withLong:(jlong)maxWeight
                    withByte:(jbyte)type {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(self, filePointer, minWeight, maxWeight, type);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withLong:withLong:withByte:", "CompletionMetaData", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "filePointer_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "minWeight_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "maxWeight_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "type_", NULL, 0x12, "B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData = { 2, "CompletionMetaData", "org.apache.lucene.search.suggest.document", "CompletionFieldsConsumer", 0xa, 1, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *self, jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type) {
  NSObject_init(self);
  self->filePointer_ = filePointer;
  self->minWeight_ = minWeight;
  self->maxWeight_ = maxWeight;
  self->type_ = type;
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(jlong filePointer, jlong minWeight, jlong maxWeight, jbyte type) {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData *self = [OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData alloc];
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData_initWithLong_withLong_withLong_withByte_(self, filePointer, minWeight, maxWeight, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionMetaData)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter

- (instancetype)init {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(self);
  return self;
}

- (jboolean)finishWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output {
  jboolean stored = [((OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *) nil_chk(builder_)) storeWithOrgApacheLuceneStoreDataOutput:output];
  JreAssert((stored || docCount_ == 0), (JreStrcat("$IC", @"the FST is null but docCount is != 0 actual value: [", docCount_, ']')));
  if (docCount_ == 0) {
    minWeight_ = 0;
  }
  return stored;
}

- (void)writeWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
           withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum {
  JreStrongAssign(&postingsEnum_, [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) postingsWithOrgApacheLuceneIndexPostingsEnum:postingsEnum_ withInt:OrgApacheLuceneIndexPostingsEnum_PAYLOADS]);
  [((OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *) nil_chk(builder_)) startTermWithOrgApacheLuceneUtilBytesRef:term];
  jint docFreq = 0;
  while ([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum_)) nextDoc] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    jint docID = [postingsEnum_ docID];
    for (jint i = 0; i < [postingsEnum_ freq]; i++) {
      [postingsEnum_ nextPosition];
      JreAssert(([postingsEnum_ getPayload] != nil), (@"org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.java:206 condition failed: assert postingsEnum.getPayload() != null;"));
      OrgApacheLuceneUtilBytesRef *payload = [postingsEnum_ getPayload];
      OrgApacheLuceneStoreByteArrayDataInput *input = [new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(payload))->bytes_, payload->offset_, payload->length_) autorelease];
      jint len = [input readVInt];
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) growWithInt:len];
      [scratch_ setLengthWithInt:len];
      [input readBytesWithByteArray:[scratch_ bytes] withInt:0 withInt:[scratch_ length]];
      jlong weight = [input readVInt] - 1;
      maxWeight_ = JavaLangMath_maxWithLong_withLong_(maxWeight_, weight);
      minWeight_ = JavaLangMath_minWithLong_withLong_(minWeight_, weight);
      jbyte type = [input readByte];
      if (first_) {
        self->type_ = type;
        first_ = NO;
      }
      else if (self->type_ != type) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"single field name has mixed types") autorelease];
      }
      [builder_ addEntryWithInt:docID withOrgApacheLuceneUtilBytesRef:[scratch_ get] withLong:weight];
    }
    docFreq++;
    docCount_ = JavaLangMath_maxWithInt_withInt_(docCount_, docFreq + 1);
  }
  [builder_ finishTerm];
}

- (void)dealloc {
  RELEASE_(postingsEnum_);
  RELEASE_(scratch_);
  RELEASE_(builder_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CompletionTermWriter", NULL, 0x1, NULL, NULL },
    { "finishWithOrgApacheLuceneStoreIndexOutput:", "finish", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "writeWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermsEnum:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "postingsEnum_", NULL, 0x2, "Lorg.apache.lucene.index.PostingsEnum;", NULL, NULL, .constantValue.asLong = 0 },
    { "docCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxWeight_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "minWeight_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "type_", NULL, 0x2, "B", NULL, NULL, .constantValue.asLong = 0 },
    { "first_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "scratch_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "builder_", NULL, 0x12, "Lorg.apache.lucene.search.suggest.document.NRTSuggesterBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter = { 2, "CompletionTermWriter", "org.apache.lucene.search.suggest.document", "CompletionFieldsConsumer", 0xa, 3, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *self) {
  NSObject_init(self);
  JreStrongAssign(&self->postingsEnum_, nil);
  self->docCount_ = 0;
  self->maxWeight_ = 0;
  self->minWeight_ = JavaLangLong_MAX_VALUE;
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->builder_, new_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_init());
  self->first_ = YES;
}

OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init() {
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter *self = [OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter alloc];
  OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_CompletionTermWriter)
