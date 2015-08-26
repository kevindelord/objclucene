//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50FieldInfosFormat.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Throwable.h"
#include "java/util/Collections.h"
#include "java/util/Map.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/FieldInfosFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50FieldInfosFormat.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/index/DocValuesType.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/store/ChecksumIndexInput.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

@interface OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat ()

+ (jbyte)docValuesByteWithOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type;

+ (OrgApacheLuceneIndexDocValuesTypeEnum *)getDocValuesTypeWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                                                                     withByte:(jbyte)b;

+ (jbyte)indexOptionsByteWithOrgApacheLuceneIndexIndexOptionsEnum:(OrgApacheLuceneIndexIndexOptionsEnum *)indexOptions;

+ (OrgApacheLuceneIndexIndexOptionsEnum *)getIndexOptionsWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                                                                   withByte:(jbyte)b;

@end

__attribute__((unused)) static jbyte OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_docValuesByteWithOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexDocValuesTypeEnum *type);

__attribute__((unused)) static OrgApacheLuceneIndexDocValuesTypeEnum *OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getDocValuesTypeWithOrgApacheLuceneStoreIndexInput_withByte_(OrgApacheLuceneStoreIndexInput *input, jbyte b);

__attribute__((unused)) static jbyte OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_indexOptionsByteWithOrgApacheLuceneIndexIndexOptionsEnum_(OrgApacheLuceneIndexIndexOptionsEnum *indexOptions);

__attribute__((unused)) static OrgApacheLuceneIndexIndexOptionsEnum *OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getIndexOptionsWithOrgApacheLuceneStoreIndexInput_withByte_(OrgApacheLuceneStoreIndexInput *input, jbyte b);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat)

NSString *OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_ = @"fnm";
NSString *OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_ = @"Lucene50FieldInfos";

@implementation OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat

- (instancetype)init {
  OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init(self);
  return self;
}

- (OrgApacheLuceneIndexFieldInfos *)readWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                      withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                                             withNSString:(NSString *)segmentSuffix
                                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  NSString *fileName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(segmentInfo))->name_, segmentSuffix, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_);
  {
    JavaLangThrowable *__mainException = nil;
    OrgApacheLuceneStoreChecksumIndexInput *input = [((OrgApacheLuceneStoreDirectory *) nil_chk(directory)) openChecksumInputWithNSString:fileName withOrgApacheLuceneStoreIOContext:context];
    @try {
      JavaLangThrowable *priorE = nil;
      IOSObjectArray *infos = nil;
      @try {
        jint format = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(input, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_FORMAT_START, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_FORMAT_CURRENT, [segmentInfo getId], segmentSuffix);
        jint size = [((OrgApacheLuceneStoreChecksumIndexInput *) nil_chk(input)) readVInt];
        infos = [IOSObjectArray arrayWithLength:size type:OrgApacheLuceneIndexFieldInfo_class_()];
        id<JavaUtilMap> lastAttributes = JavaUtilCollections_emptyMap();
        for (jint i = 0; i < size; i++) {
          NSString *name = [input readString];
          jint fieldNumber = [input readVInt];
          if (fieldNumber < 0) {
            @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$$$I", @"invalid field number for field: ", name, @", fieldNumber=", fieldNumber), input) autorelease];
          }
          jbyte bits = [input readByte];
          jboolean storeTermVector = (bits & OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_STORE_TERMVECTOR) != 0;
          jboolean omitNorms = (bits & OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_OMIT_NORMS) != 0;
          jboolean storePayloads = (bits & OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_STORE_PAYLOADS) != 0;
          OrgApacheLuceneIndexIndexOptionsEnum *indexOptions = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getIndexOptionsWithOrgApacheLuceneStoreIndexInput_withByte_(input, [input readByte]);
          OrgApacheLuceneIndexDocValuesTypeEnum *docValuesType = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getDocValuesTypeWithOrgApacheLuceneStoreIndexInput_withByte_(input, [input readByte]);
          jlong dvGen = [input readLong];
          id<JavaUtilMap> attributes;
          if (format >= OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_FORMAT_SAFE_MAPS) {
            attributes = [input readMapOfStrings];
          }
          else {
            attributes = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_([input readStringStringMap]);
          }
          if ([((id<JavaUtilMap>) nil_chk(attributes)) isEqual:lastAttributes]) {
            attributes = lastAttributes;
          }
          lastAttributes = attributes;
          @try {
            IOSObjectArray_SetAndConsume(infos, i, new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(name, fieldNumber, storeTermVector, omitNorms, storePayloads, indexOptions, docValuesType, dvGen, attributes));
            [((OrgApacheLuceneIndexFieldInfo *) nil_chk(IOSObjectArray_Get(infos, i))) checkConsistency];
          }
          @catch (JavaLangIllegalStateException *e) {
            @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withJavaLangThrowable_(JreStrcat("$$$I", @"invalid fieldinfo for field: ", name, @", fieldNumber=", fieldNumber), input, e) autorelease];
          }
        }
      }
      @catch (JavaLangThrowable *exception) {
        priorE = exception;
      }
      @finally {
        OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(input, priorE);
      }
      return [new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(infos) autorelease];
    }
    @finally {
      @try {
        [input close];
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

+ (jbyte)docValuesByteWithOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type {
  return OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_docValuesByteWithOrgApacheLuceneIndexDocValuesTypeEnum_(type);
}

+ (OrgApacheLuceneIndexDocValuesTypeEnum *)getDocValuesTypeWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                                                                     withByte:(jbyte)b {
  return OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getDocValuesTypeWithOrgApacheLuceneStoreIndexInput_withByte_(input, b);
}

+ (jbyte)indexOptionsByteWithOrgApacheLuceneIndexIndexOptionsEnum:(OrgApacheLuceneIndexIndexOptionsEnum *)indexOptions {
  return OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_indexOptionsByteWithOrgApacheLuceneIndexIndexOptionsEnum_(indexOptions);
}

+ (OrgApacheLuceneIndexIndexOptionsEnum *)getIndexOptionsWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                                                                   withByte:(jbyte)b {
  return OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getIndexOptionsWithOrgApacheLuceneStoreIndexInput_withByte_(input, b);
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)segmentInfo
                                  withNSString:(NSString *)segmentSuffix
            withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  NSString *fileName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(segmentInfo))->name_, segmentSuffix, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_);
  {
    JavaLangThrowable *__mainException = nil;
    OrgApacheLuceneStoreIndexOutput *output = [((OrgApacheLuceneStoreDirectory *) nil_chk(directory)) createOutputWithNSString:fileName withOrgApacheLuceneStoreIOContext:context];
    @try {
      OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(output, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_FORMAT_CURRENT, [segmentInfo getId], segmentSuffix);
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(output)) writeVIntWithInt:[((OrgApacheLuceneIndexFieldInfos *) nil_chk(infos)) size]];
      for (OrgApacheLuceneIndexFieldInfo * __strong fi in infos) {
        [((OrgApacheLuceneIndexFieldInfo *) nil_chk(fi)) checkConsistency];
        [output writeStringWithNSString:fi->name_];
        [output writeVIntWithInt:fi->number_];
        jbyte bits = (jint) 0x0;
        if ([fi hasVectors]) bits |= OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_STORE_TERMVECTOR;
        if ([fi omitsNorms]) bits |= OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_OMIT_NORMS;
        if ([fi hasPayloads]) bits |= OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_STORE_PAYLOADS;
        [output writeByteWithByte:bits];
        [output writeByteWithByte:OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_indexOptionsByteWithOrgApacheLuceneIndexIndexOptionsEnum_([fi getIndexOptions])];
        [output writeByteWithByte:OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_docValuesByteWithOrgApacheLuceneIndexDocValuesTypeEnum_([fi getDocValuesType])];
        [output writeLongWithLong:[fi getDocValuesGen]];
        [output writeMapOfStringsWithJavaUtilMap:[fi attributes]];
      }
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(output);
    }
    @finally {
      @try {
        [output close];
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

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat class]) {
    {
      JreAssert((((IOSObjectArray *) nil_chk(OrgApacheLuceneIndexDocValuesTypeEnum_values()))->size_ == 6), (@"org/apache/lucene/codecs/lucene50/Lucene50FieldInfosFormat.java:173 condition failed: assert DocValuesType.values().length == 6;"));
    }
    {
      JreAssert((((IOSObjectArray *) nil_chk(OrgApacheLuceneIndexIndexOptionsEnum_values()))->size_ == 5), (@"org/apache/lucene/codecs/lucene50/Lucene50FieldInfosFormat.java:218 condition failed: assert IndexOptions.values().length == 5;"));
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Lucene50FieldInfosFormat", NULL, 0x1, NULL, NULL },
    { "readWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withNSString:withOrgApacheLuceneStoreIOContext:", "read", "Lorg.apache.lucene.index.FieldInfos;", 0x1, "Ljava.io.IOException;", NULL },
    { "docValuesByteWithOrgApacheLuceneIndexDocValuesTypeEnum:", "docValuesByte", "B", 0xa, NULL, NULL },
    { "getDocValuesTypeWithOrgApacheLuceneStoreIndexInput:withByte:", "getDocValuesType", "Lorg.apache.lucene.index.DocValuesType;", 0xa, "Ljava.io.IOException;", NULL },
    { "indexOptionsByteWithOrgApacheLuceneIndexIndexOptionsEnum:", "indexOptionsByte", "B", 0xa, NULL, NULL },
    { "getIndexOptionsWithOrgApacheLuceneStoreIndexInput:withByte:", "getIndexOptions", "Lorg.apache.lucene.index.IndexOptions;", 0xa, "Ljava.io.IOException;", NULL },
    { "writeWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withNSString:withOrgApacheLuceneIndexFieldInfos:withOrgApacheLuceneStoreIOContext:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_, NULL, .constantValue.asLong = 0 },
    { "CODEC_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_, NULL, .constantValue.asLong = 0 },
    { "FORMAT_START", "FORMAT_START", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_FORMAT_START },
    { "FORMAT_SAFE_MAPS", "FORMAT_SAFE_MAPS", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_FORMAT_SAFE_MAPS },
    { "FORMAT_CURRENT", "FORMAT_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_FORMAT_CURRENT },
    { "STORE_TERMVECTOR", "STORE_TERMVECTOR", 0x18, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_STORE_TERMVECTOR },
    { "OMIT_NORMS", "OMIT_NORMS", 0x18, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_OMIT_NORMS },
    { "STORE_PAYLOADS", "STORE_PAYLOADS", 0x18, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_STORE_PAYLOADS },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat = { 2, "Lucene50FieldInfosFormat", "org.apache.lucene.codecs.lucene50", NULL, 0x11, 7, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat *self) {
  OrgApacheLuceneCodecsFieldInfosFormat_init(self);
}

OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat *new_OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init() {
  OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat *self = [OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat alloc];
  OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init(self);
  return self;
}

jbyte OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_docValuesByteWithOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexDocValuesTypeEnum *type) {
  OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_initialize();
  switch ([type ordinal]) {
    case OrgApacheLuceneIndexDocValuesType_NONE:
    return 0;
    case OrgApacheLuceneIndexDocValuesType_NUMERIC:
    return 1;
    case OrgApacheLuceneIndexDocValuesType_BINARY:
    return 2;
    case OrgApacheLuceneIndexDocValuesType_SORTED:
    return 3;
    case OrgApacheLuceneIndexDocValuesType_SORTED_SET:
    return 4;
    case OrgApacheLuceneIndexDocValuesType_SORTED_NUMERIC:
    return 5;
    default:
    @throw [new_JavaLangAssertionError_initWithId_(JreStrcat("$@", @"unhandled DocValuesType: ", type)) autorelease];
  }
}

OrgApacheLuceneIndexDocValuesTypeEnum *OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getDocValuesTypeWithOrgApacheLuceneStoreIndexInput_withByte_(OrgApacheLuceneStoreIndexInput *input, jbyte b) {
  OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_initialize();
  switch (b) {
    case 0:
    return JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE);
    case 1:
    return JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NUMERIC);
    case 2:
    return JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, BINARY);
    case 3:
    return JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED);
    case 4:
    return JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED_SET);
    case 5:
    return JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED_NUMERIC);
    default:
    @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$B", @"invalid docvalues byte: ", b), input) autorelease];
  }
}

jbyte OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_indexOptionsByteWithOrgApacheLuceneIndexIndexOptionsEnum_(OrgApacheLuceneIndexIndexOptionsEnum *indexOptions) {
  OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_initialize();
  switch ([indexOptions ordinal]) {
    case OrgApacheLuceneIndexIndexOptions_NONE:
    return 0;
    case OrgApacheLuceneIndexIndexOptions_DOCS:
    return 1;
    case OrgApacheLuceneIndexIndexOptions_DOCS_AND_FREQS:
    return 2;
    case OrgApacheLuceneIndexIndexOptions_DOCS_AND_FREQS_AND_POSITIONS:
    return 3;
    case OrgApacheLuceneIndexIndexOptions_DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS:
    return 4;
    default:
    @throw [new_JavaLangAssertionError_initWithId_(JreStrcat("$@", @"unhandled IndexOptions: ", indexOptions)) autorelease];
  }
}

OrgApacheLuceneIndexIndexOptionsEnum *OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_getIndexOptionsWithOrgApacheLuceneStoreIndexInput_withByte_(OrgApacheLuceneStoreIndexInput *input, jbyte b) {
  OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_initialize();
  switch (b) {
    case 0:
    return JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, NONE);
    case 1:
    return JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS);
    case 2:
    return JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS);
    case 3:
    return JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS_AND_POSITIONS);
    case 4:
    return JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS);
    default:
    @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$B", @"invalid IndexOptions byte: ", b), input) autorelease];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat)