//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/SuggestField.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/search/suggest/document/CompletionAnalyzer.h"
#include "org/apache/lucene/search/suggest/document/CompletionTokenStream.h"
#include "org/apache/lucene/search/suggest/document/NRTSuggesterBuilder.h"
#include "org/apache/lucene/search/suggest/document/SuggestField.h"
#include "org/apache/lucene/store/OutputStreamDataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneSearchSuggestDocumentSuggestField () {
 @public
  OrgApacheLuceneUtilBytesRef *surfaceForm_;
  jint weight_;
}

- (OrgApacheLuceneUtilBytesRef *)buildSuggestPayload;

- (jboolean)isReservedWithChar:(jchar)c;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentSuggestField, surfaceForm_, OrgApacheLuceneUtilBytesRef *)

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneSearchSuggestDocumentSuggestField_buildSuggestPayload(OrgApacheLuceneSearchSuggestDocumentSuggestField *self);

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSuggestDocumentSuggestField_isReservedWithChar_(OrgApacheLuceneSearchSuggestDocumentSuggestField *self, jchar c);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSuggestDocumentSuggestField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE;

@implementation OrgApacheLuceneSearchSuggestDocumentSuggestField

+ (OrgApacheLuceneDocumentFieldType *)FIELD_TYPE {
  return OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE;
}

+ (jbyte)TYPE {
  return OrgApacheLuceneSearchSuggestDocumentSuggestField_TYPE;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
                         withInt:(jint)weight {
  OrgApacheLuceneSearchSuggestDocumentSuggestField_initWithNSString_withNSString_withInt_(self, name, value, weight);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)reuse {
  OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *completionStream = [self wrapTokenStreamWithOrgApacheLuceneAnalysisTokenStream:[super tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:analyzer withOrgApacheLuceneAnalysisTokenStream:reuse]];
  [((OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *) nil_chk(completionStream)) setPayloadWithOrgApacheLuceneUtilBytesRef:OrgApacheLuceneSearchSuggestDocumentSuggestField_buildSuggestPayload(self)];
  return completionStream;
}

- (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *)wrapTokenStreamWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream {
  if ([stream isKindOfClass:[OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream class]]) {
    return (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *) cast_chk(stream, [OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream class]);
  }
  else {
    return create_OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream_initWithOrgApacheLuceneAnalysisTokenStream_(stream);
  }
}

- (jbyte)type {
  return OrgApacheLuceneSearchSuggestDocumentSuggestField_TYPE;
}

- (OrgApacheLuceneUtilBytesRef *)buildSuggestPayload {
  return OrgApacheLuceneSearchSuggestDocumentSuggestField_buildSuggestPayload(self);
}

- (jboolean)isReservedWithChar:(jchar)c {
  return OrgApacheLuceneSearchSuggestDocumentSuggestField_isReservedWithChar_(self, c);
}

- (void)dealloc {
  RELEASE_(surfaceForm_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSuggestDocumentSuggestField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE setTokenizedWithBoolean:true];
      [OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE setStoredWithBoolean:false];
      [OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE setStoreTermVectorsWithBoolean:false];
      [OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE setOmitNormsWithBoolean:false];
      [OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS)];
      [OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSuggestDocumentSuggestField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withInt:", "SuggestField", NULL, 0x1, NULL, NULL },
    { "tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneAnalysisTokenStream:", "tokenStream", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, "Ljava.io.IOException;", NULL },
    { "wrapTokenStreamWithOrgApacheLuceneAnalysisTokenStream:", "wrapTokenStream", "Lorg.apache.lucene.search.suggest.document.CompletionTokenStream;", 0x4, NULL, NULL },
    { "type", NULL, "B", 0x4, NULL, NULL },
    { "buildSuggestPayload", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x2, "Ljava.io.IOException;", NULL },
    { "isReservedWithChar:", "isReserved", "Z", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FIELD_TYPE", "FIELD_TYPE", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE, NULL, .constantValue.asLong = 0 },
    { "TYPE", "TYPE", 0x18, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestDocumentSuggestField_TYPE },
    { "surfaceForm_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "weight_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentSuggestField = { 2, "SuggestField", "org.apache.lucene.search.suggest.document", NULL, 0x1, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentSuggestField;
}

@end

void OrgApacheLuceneSearchSuggestDocumentSuggestField_initWithNSString_withNSString_withInt_(OrgApacheLuceneSearchSuggestDocumentSuggestField *self, NSString *name, NSString *value, jint weight) {
  OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(self, name, value, OrgApacheLuceneSearchSuggestDocumentSuggestField_FIELD_TYPE);
  if (weight < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"weight must be >= 0");
  }
  if (((jint) [((NSString *) nil_chk(value)) length]) == 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"value must have a length > 0");
  }
  for (jint i = 0; i < ((jint) [value length]); i++) {
    if (OrgApacheLuceneSearchSuggestDocumentSuggestField_isReservedWithChar_(self, [value charAtWithInt:i])) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$$I$", @"Illegal input [", value, @"] UTF-16 codepoint [0x", JavaLangInteger_toHexStringWithInt_((jint) [value charAtWithInt:i]), @"] at position ", i, @" is a reserved character"));
    }
  }
  JreStrongAssignAndConsume(&self->surfaceForm_, new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(value));
  self->weight_ = weight;
}

OrgApacheLuceneSearchSuggestDocumentSuggestField *new_OrgApacheLuceneSearchSuggestDocumentSuggestField_initWithNSString_withNSString_withInt_(NSString *name, NSString *value, jint weight) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentSuggestField, initWithNSString_withNSString_withInt_, name, value, weight)
}

OrgApacheLuceneSearchSuggestDocumentSuggestField *create_OrgApacheLuceneSearchSuggestDocumentSuggestField_initWithNSString_withNSString_withInt_(NSString *name, NSString *value, jint weight) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentSuggestField, initWithNSString_withNSString_withInt_, name, value, weight)
}

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneSearchSuggestDocumentSuggestField_buildSuggestPayload(OrgApacheLuceneSearchSuggestDocumentSuggestField *self) {
  JavaIoByteArrayOutputStream *byteArrayOutputStream = create_JavaIoByteArrayOutputStream_init();
  {
    OrgApacheLuceneStoreOutputStreamDataOutput *output = create_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(byteArrayOutputStream);
    NSException *__primaryException1 = nil;
    @try {
      [output writeVIntWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(self->surfaceForm_))->length_];
      [output writeBytesWithByteArray:self->surfaceForm_->bytes_ withInt:self->surfaceForm_->offset_ withInt:self->surfaceForm_->length_];
      [output writeVIntWithInt:self->weight_ + 1];
      [output writeByteWithByte:[self type]];
    }
    @catch (NSException *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (output != nil) {
        if (__primaryException1 != nil) {
          @try {
            [output close];
          } @catch (NSException *e) {
            [__primaryException1 addSuppressedWithNSException:e];
          }
        } else {
          [output close];
        }
      }
    }
  }
  return create_OrgApacheLuceneUtilBytesRef_initWithByteArray_([byteArrayOutputStream toByteArray]);
}

jboolean OrgApacheLuceneSearchSuggestDocumentSuggestField_isReservedWithChar_(OrgApacheLuceneSearchSuggestDocumentSuggestField *self, jchar c) {
  switch (c) {
    case OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_SEP_LABEL:
    case OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_HOLE_CHARACTER:
    case OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_END_BYTE:
    return true;
    default:
    return false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentSuggestField)
