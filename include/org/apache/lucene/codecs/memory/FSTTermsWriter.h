//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/memory/FSTTermsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsMemoryFSTTermsWriter_INCLUDE_ALL")
#if OrgApacheLuceneCodecsMemoryFSTTermsWriter_RESTRICT
#define OrgApacheLuceneCodecsMemoryFSTTermsWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsMemoryFSTTermsWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsMemoryFSTTermsWriter_RESTRICT

#if !defined (_OrgApacheLuceneCodecsMemoryFSTTermsWriter_) && (OrgApacheLuceneCodecsMemoryFSTTermsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsMemoryFSTTermsWriter_INCLUDE)
#define _OrgApacheLuceneCodecsMemoryFSTTermsWriter_

#define OrgApacheLuceneCodecsFieldsConsumer_RESTRICT 1
#define OrgApacheLuceneCodecsFieldsConsumer_INCLUDE 1
#include "org/apache/lucene/codecs/FieldsConsumer.h"

@class OrgApacheLuceneCodecsPostingsWriterBase;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneStoreIndexOutput;
@protocol JavaUtilList;

#define OrgApacheLuceneCodecsMemoryFSTTermsWriter_TERMS_VERSION_START 2
#define OrgApacheLuceneCodecsMemoryFSTTermsWriter_TERMS_VERSION_CURRENT 2

@interface OrgApacheLuceneCodecsMemoryFSTTermsWriter : OrgApacheLuceneCodecsFieldsConsumer {
 @public
  OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  OrgApacheLuceneStoreIndexOutput *out_;
  jint maxDoc_;
  id<JavaUtilList> fields_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                  withOrgApacheLuceneCodecsPostingsWriterBase:(OrgApacheLuceneCodecsPostingsWriterBase *)postingsWriter;

- (void)close;

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsMemoryFSTTermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, postingsWriter_, OrgApacheLuceneCodecsPostingsWriterBase *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, out_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, fields_, id<JavaUtilList>)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsMemoryFSTTermsWriter_TERMS_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, TERMS_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsMemoryFSTTermsWriter_TERMS_CODEC_NAME_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, TERMS_CODEC_NAME_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, TERMS_VERSION_START, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryFSTTermsWriter, TERMS_VERSION_CURRENT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsMemoryFSTTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_(OrgApacheLuceneCodecsMemoryFSTTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter);

FOUNDATION_EXPORT OrgApacheLuceneCodecsMemoryFSTTermsWriter *new_OrgApacheLuceneCodecsMemoryFSTTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsPostingsWriterBase_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsPostingsWriterBase *postingsWriter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsMemoryFSTTermsWriter)

#endif

#if !defined (_OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter_) && (OrgApacheLuceneCodecsMemoryFSTTermsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter_INCLUDE)
#define _OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter_

@class OrgApacheLuceneCodecsBlockTermState;
@class OrgApacheLuceneCodecsMemoryFSTTermsWriter;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter : NSObject

#pragma mark Public

- (void)finishWithLong:(jlong)sumTotalTermFreq
              withLong:(jlong)sumDocFreq
               withInt:(jint)docCount;

- (void)finishTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
          withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)state;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneCodecsMemoryFSTTermsWriter:(OrgApacheLuceneCodecsMemoryFSTTermsWriter *)outer$
                                withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsMemoryFSTTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter *self, OrgApacheLuceneCodecsMemoryFSTTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo);

FOUNDATION_EXPORT OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter *new_OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter_initWithOrgApacheLuceneCodecsMemoryFSTTermsWriter_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneCodecsMemoryFSTTermsWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsMemoryFSTTermsWriter_TermsWriter)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsMemoryFSTTermsWriter_INCLUDE_ALL")