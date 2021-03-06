//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/sandbox/queries/DuplicateFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/sandbox/queries/DuplicateFilter.h"
#include "org/apache/lucene/search/BitsFilteredDocIdSet.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/util/BitDocIdSet.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/SparseFixedBitSet.h"

@interface OrgApacheLuceneSandboxQueriesDuplicateFilter () {
 @public
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *keepMode_;
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *processingMode_;
  NSString *fieldName_;
}

- (OrgApacheLuceneSearchDocIdSet *)correctBitsWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                     withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (OrgApacheLuceneSearchDocIdSet *)fastBitsWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                  withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSandboxQueriesDuplicateFilter, keepMode_, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSandboxQueriesDuplicateFilter, processingMode_, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSandboxQueriesDuplicateFilter, fieldName_, NSString *)

__attribute__((unused)) static OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSandboxQueriesDuplicateFilter_correctBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> acceptDocs);

__attribute__((unused)) static OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSandboxQueriesDuplicateFilter_fastBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> acceptDocs);

__attribute__((unused)) static void OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_initWithNSString_withInt_(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static void OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_initWithNSString_withInt_(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *self, NSString *__name, jint __ordinal);

@implementation OrgApacheLuceneSandboxQueriesDuplicateFilter

- (instancetype)initWithNSString:(NSString *)fieldName {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(self, fieldName);
  return self;
}

- (instancetype)initWithNSString:(NSString *)fieldName
withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)keepMode
withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)processingMode {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(self, fieldName, keepMode, processingMode);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  if (processingMode_ == JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FAST_INVALIDATION)) {
    return OrgApacheLuceneSandboxQueriesDuplicateFilter_fastBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(self, [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], acceptDocs);
  }
  else {
    return OrgApacheLuceneSandboxQueriesDuplicateFilter_correctBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(self, [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], acceptDocs);
  }
}

- (OrgApacheLuceneSearchDocIdSet *)correctBitsWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                     withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_correctBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(self, reader, acceptDocs);
}

- (OrgApacheLuceneSearchDocIdSet *)fastBitsWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                  withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_fastBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(self, reader, acceptDocs);
}

- (NSString *)getFieldName {
  return fieldName_;
}

- (void)setFieldNameWithNSString:(NSString *)fieldName {
  JreStrongAssign(&self->fieldName_, fieldName);
}

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)getKeepMode {
  return keepMode_;
}

- (void)setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)keepMode {
  JreStrongAssign(&self->keepMode_, keepMode);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if ([super isEqual:obj] == false) {
    return false;
  }
  OrgApacheLuceneSandboxQueriesDuplicateFilter *other = (OrgApacheLuceneSandboxQueriesDuplicateFilter *) cast_chk(obj, [OrgApacheLuceneSandboxQueriesDuplicateFilter class]);
  return keepMode_ == ((OrgApacheLuceneSandboxQueriesDuplicateFilter *) nil_chk(other))->keepMode_ && processingMode_ == other->processingMode_ && fieldName_ != nil && [fieldName_ isEqual:other->fieldName_];
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$$$$$$C", @"DuplicateFilter(fieldName=", fieldName_, @",keepMode=", (keepMode_ == JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE) ? @"first" : @"last"), @",processingMode=", (processingMode_ == JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FAST_INVALIDATION) ? @"fast" : @"full"), ')');
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [super hash]);
  hash_ = 31 * hash_ + ((jint) [((OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *) nil_chk(keepMode_)) hash]);
  hash_ = 31 * hash_ + ((jint) [((OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *) nil_chk(processingMode_)) hash]);
  hash_ = 31 * hash_ + ((jint) [((NSString *) nil_chk(fieldName_)) hash]);
  return hash_;
}

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)getProcessingMode {
  return processingMode_;
}

- (void)setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)processingMode {
  JreStrongAssign(&self->processingMode_, processingMode);
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(keepMode_);
  RELEASE_(processingMode_);
  RELEASE_(fieldName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "DuplicateFilter", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:", "DuplicateFilter", NULL, 0x1, NULL, NULL },
    { "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:", "getDocIdSet", "Lorg.apache.lucene.search.DocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "correctBitsWithOrgApacheLuceneIndexLeafReader:withOrgApacheLuceneUtilBits:", "correctBits", "Lorg.apache.lucene.search.DocIdSet;", 0x2, "Ljava.io.IOException;", NULL },
    { "fastBitsWithOrgApacheLuceneIndexLeafReader:withOrgApacheLuceneUtilBits:", "fastBits", "Lorg.apache.lucene.search.DocIdSet;", 0x2, "Ljava.io.IOException;", NULL },
    { "getFieldName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setFieldNameWithNSString:", "setFieldName", "V", 0x1, NULL, NULL },
    { "getKeepMode", NULL, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$KeepMode;", 0x1, NULL, NULL },
    { "setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode:", "setKeepMode", "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "getProcessingMode", NULL, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$ProcessingMode;", 0x1, NULL, NULL },
    { "setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode:", "setProcessingMode", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "keepMode_", NULL, 0x2, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$KeepMode;", NULL, NULL, .constantValue.asLong = 0 },
    { "processingMode_", NULL, 0x2, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$ProcessingMode;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldName_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.sandbox.queries.DuplicateFilter$KeepMode;", "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$ProcessingMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSandboxQueriesDuplicateFilter = { 2, "DuplicateFilter", "org.apache.lucene.sandbox.queries", NULL, 0x1, 14, methods, 3, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSandboxQueriesDuplicateFilter;
}

@end

void OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, NSString *fieldName) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(self, fieldName, JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_LAST_OCCURRENCE), JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FULL_VALIDATION));
}

OrgApacheLuceneSandboxQueriesDuplicateFilter *new_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(NSString *fieldName) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSandboxQueriesDuplicateFilter, initWithNSString_, fieldName)
}

OrgApacheLuceneSandboxQueriesDuplicateFilter *create_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(NSString *fieldName) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSandboxQueriesDuplicateFilter, initWithNSString_, fieldName)
}

void OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *processingMode) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->fieldName_, fieldName);
  JreStrongAssign(&self->keepMode_, keepMode);
  JreStrongAssign(&self->processingMode_, processingMode);
}

OrgApacheLuceneSandboxQueriesDuplicateFilter *new_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *processingMode) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSandboxQueriesDuplicateFilter, initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_, fieldName, keepMode, processingMode)
}

OrgApacheLuceneSandboxQueriesDuplicateFilter *create_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_(NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *processingMode) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSandboxQueriesDuplicateFilter, initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_, fieldName, keepMode, processingMode)
}

OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSandboxQueriesDuplicateFilter_correctBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> acceptDocs) {
  OrgApacheLuceneUtilSparseFixedBitSet *bits = create_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]);
  OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexFields *) nil_chk([reader fields])) termsWithNSString:self->fieldName_];
  if (terms != nil) {
    OrgApacheLuceneIndexTermsEnum *termsEnum = [terms iterator];
    OrgApacheLuceneIndexPostingsEnum *docs = nil;
    while (true) {
      OrgApacheLuceneUtilBytesRef *currTerm = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next];
      if (currTerm == nil) {
        break;
      }
      else {
        docs = [termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:docs withInt:OrgApacheLuceneIndexPostingsEnum_NONE];
        jint doc = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(docs)) nextDoc];
        if (doc != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
          if (self->keepMode_ == JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE)) {
            [bits setWithInt:doc];
          }
          else {
            jint lastDoc = doc;
            while (true) {
              lastDoc = doc;
              doc = [docs nextDoc];
              if (doc == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
                break;
              }
            }
            [bits setWithInt:lastDoc];
          }
        }
      }
    }
  }
  return OrgApacheLuceneSearchBitsFilteredDocIdSet_wrapWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneUtilBits_(create_OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_withLong_(bits, [bits approximateCardinality]), acceptDocs);
}

OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSandboxQueriesDuplicateFilter_fastBitsWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> acceptDocs) {
  OrgApacheLuceneUtilFixedBitSet *bits = create_OrgApacheLuceneUtilFixedBitSet_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]);
  [bits setWithInt:0 withInt:[reader maxDoc]];
  OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexFields *) nil_chk([reader fields])) termsWithNSString:self->fieldName_];
  if (terms != nil) {
    OrgApacheLuceneIndexTermsEnum *termsEnum = [terms iterator];
    OrgApacheLuceneIndexPostingsEnum *docs = nil;
    while (true) {
      OrgApacheLuceneUtilBytesRef *currTerm = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next];
      if (currTerm == nil) {
        break;
      }
      else {
        if ([termsEnum docFreq] > 1) {
          docs = [termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:docs withInt:OrgApacheLuceneIndexPostingsEnum_NONE];
          jint doc = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(docs)) nextDoc];
          if (doc != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
            if (self->keepMode_ == JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE)) {
              doc = [docs nextDoc];
            }
          }
          jint lastDoc = -1;
          while (true) {
            lastDoc = doc;
            [bits clearWithInt:lastDoc];
            doc = [docs nextDoc];
            if (doc == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
              break;
            }
          }
          if (self->keepMode_ == JreLoadEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_LAST_OCCURRENCE)) {
            [bits setWithInt:lastDoc];
          }
        }
      }
    }
  }
  return OrgApacheLuceneSearchBitsFilteredDocIdSet_wrapWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneUtilBits_(create_OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_(bits), acceptDocs);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSandboxQueriesDuplicateFilter)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode)

OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values_[2];

@implementation OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)KM_USE_FIRST_OCCURRENCE {
  return JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE);
}

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)KM_USE_LAST_OCCURRENCE {
  return JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_LAST_OCCURRENCE);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values();
}

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_valueOfWithNSString_(name);
}

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_Enum)toNSEnum {
  return (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 2 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_initWithNSString_withInt_(e, @"KM_USE_FIRST_OCCURRENCE", 0);
    (JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_LAST_OCCURRENCE) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_initWithNSString_withInt_(e, @"KM_USE_LAST_OCCURRENCE", 1);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "KM_USE_FIRST_OCCURRENCE", "KM_USE_FIRST_OCCURRENCE", 0x4019, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$KeepMode;", &JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_FIRST_OCCURRENCE), NULL, .constantValue.asLong = 0 },
    { "KM_USE_LAST_OCCURRENCE", "KM_USE_LAST_OCCURRENCE", 0x4019, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$KeepMode;", &JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode, KM_USE_LAST_OCCURRENCE), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.sandbox.queries.DuplicateFilter$KeepMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode = { 2, "KeepMode", "org.apache.lucene.sandbox.queries", "DuplicateFilter", 0x4019, 0, NULL, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/sandbox/queries/DuplicateFilter$KeepMode;>;" };
  return &_OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode;
}

@end

void OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_initWithNSString_withInt_(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values() {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values_ count:2 type:OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_class_()];
}

OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_initialize();
  for (int i = 0; i < 2; i++) {
    OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *e = OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode)

OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values_[2];

@implementation OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)PM_FULL_VALIDATION {
  return JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FULL_VALIDATION);
}

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)PM_FAST_INVALIDATION {
  return JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FAST_INVALIDATION);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values();
}

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_valueOfWithNSString_(name);
}

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_Enum)toNSEnum {
  return (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 2 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FULL_VALIDATION) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_initWithNSString_withInt_(e, @"PM_FULL_VALIDATION", 0);
    (JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FAST_INVALIDATION) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_initWithNSString_withInt_(e, @"PM_FAST_INVALIDATION", 1);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "PM_FULL_VALIDATION", "PM_FULL_VALIDATION", 0x4019, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$ProcessingMode;", &JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FULL_VALIDATION), NULL, .constantValue.asLong = 0 },
    { "PM_FAST_INVALIDATION", "PM_FAST_INVALIDATION", 0x4019, "Lorg.apache.lucene.sandbox.queries.DuplicateFilter$ProcessingMode;", &JreEnum(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode, PM_FAST_INVALIDATION), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.sandbox.queries.DuplicateFilter$ProcessingMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode = { 2, "ProcessingMode", "org.apache.lucene.sandbox.queries", "DuplicateFilter", 0x4019, 0, NULL, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/sandbox/queries/DuplicateFilter$ProcessingMode;>;" };
  return &_OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode;
}

@end

void OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_initWithNSString_withInt_(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values() {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values_ count:2 type:OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_class_()];
}

OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_initialize();
  for (int i = 0; i < 2; i++) {
    OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *e = OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode)
