//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/CompoundFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50CompoundFormat.h"
#include "org/apache/lucene/codecs/lucene50/Lucene50CompoundReader.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"

NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION = @"cfs";
NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION = @"cfe";
NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC = @"Lucene50CompoundData";
NSString *OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC = @"Lucene50CompoundEntries";

@implementation OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat

+ (NSString *)DATA_EXTENSION {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION;
}

+ (NSString *)ENTRIES_EXTENSION {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION;
}

+ (NSString *)DATA_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC;
}

+ (NSString *)ENTRY_CODEC {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC;
}

+ (jint)VERSION_START {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_START;
}

+ (jint)VERSION_CURRENT {
  return OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneStoreDirectory *)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  return create_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(dir, si, context);
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
           withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
             withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  NSString *dataFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si))->name_, @"", OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION);
  NSString *entriesFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(si->name_, @"", OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION);
  {
    OrgApacheLuceneStoreIndexOutput *data = [((OrgApacheLuceneStoreDirectory *) nil_chk(dir)) createOutputWithNSString:dataFile withOrgApacheLuceneStoreIOContext:context];
    NSException *__primaryException2 = nil;
    @try {
      OrgApacheLuceneStoreIndexOutput *entries = [dir createOutputWithNSString:entriesFile withOrgApacheLuceneStoreIOContext:context];
      NSException *__primaryException1 = nil;
      @try {
        OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(data, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT, [si getId], @"");
        OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(entries, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT, [si getId], @"");
        [((OrgApacheLuceneStoreIndexOutput *) nil_chk(entries)) writeVIntWithInt:[((id<JavaUtilSet>) nil_chk([si files])) size]];
        for (NSString * __strong file in nil_chk([si files])) {
          jlong startOffset = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(data)) getFilePointer];
          {
            OrgApacheLuceneStoreIndexInput *in = [dir openInputWithNSString:file withOrgApacheLuceneStoreIOContext:JreLoadStatic(OrgApacheLuceneStoreIOContext, READONCE)];
            NSException *__primaryException1 = nil;
            @try {
              [data copyBytesWithOrgApacheLuceneStoreDataInput:in withLong:[((OrgApacheLuceneStoreIndexInput *) nil_chk(in)) length]];
            }
            @catch (NSException *e) {
              __primaryException1 = e;
              @throw e;
            }
            @finally {
              if (in != nil) {
                if (__primaryException1 != nil) {
                  @try {
                    [in close];
                  } @catch (NSException *e) {
                    [__primaryException1 addSuppressedWithNSException:e];
                  }
                } else {
                  [in close];
                }
              }
            }
          }
          jlong endOffset = [data getFilePointer];
          jlong length = endOffset - startOffset;
          [entries writeStringWithNSString:OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(file)];
          [entries writeLongWithLong:startOffset];
          [entries writeLongWithLong:length];
        }
        OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(data);
        OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(entries);
      }
      @catch (NSException *e) {
        __primaryException1 = e;
        @throw e;
      }
      @finally {
        if (entries != nil) {
          if (__primaryException1 != nil) {
            @try {
              [entries close];
            } @catch (NSException *e) {
              [__primaryException1 addSuppressedWithNSException:e];
            }
          } else {
            [entries close];
          }
        }
      }
    }
    @catch (NSException *e) {
      __primaryException2 = e;
      @throw e;
    }
    @finally {
      if (data != nil) {
        if (__primaryException2 != nil) {
          @try {
            [data close];
          } @catch (NSException *e) {
            [__primaryException2 addSuppressedWithNSException:e];
          }
        } else {
          [data close];
        }
      }
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Lucene50CompoundFormat", NULL, 0x1, NULL, NULL },
    { "getCompoundReaderWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneStoreIOContext:", "getCompoundReader", "Lorg.apache.lucene.store.Directory;", 0x1, "Ljava.io.IOException;", NULL },
    { "writeWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentInfo:withOrgApacheLuceneStoreIOContext:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DATA_EXTENSION", "DATA_EXTENSION", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION, NULL, .constantValue.asLong = 0 },
    { "ENTRIES_EXTENSION", "ENTRIES_EXTENSION", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION, NULL, .constantValue.asLong = 0 },
    { "DATA_CODEC", "DATA_CODEC", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC, NULL, .constantValue.asLong = 0 },
    { "ENTRY_CODEC", "ENTRY_CODEC", 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC, NULL, .constantValue.asLong = 0 },
    { "VERSION_START", "VERSION_START", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_START },
    { "VERSION_CURRENT", "VERSION_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_VERSION_CURRENT },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat = { 2, "Lucene50CompoundFormat", "org.apache.lucene.codecs.lucene50", NULL, 0x11, 3, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat;
}

@end

void OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *self) {
  OrgApacheLuceneCodecsCompoundFormat_init(self);
}

OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, init)
}

OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *create_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat)
