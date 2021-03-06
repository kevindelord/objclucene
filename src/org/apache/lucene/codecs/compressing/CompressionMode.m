//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressionMode.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/util/zip/DataFormatException.h"
#include "java/util/zip/Deflater.h"
#include "java/util/zip/Inflater.h"
#include "org/apache/lucene/codecs/compressing/CompressionMode.h"
#include "org/apache/lucene/codecs/compressing/Compressor.h"
#include "org/apache/lucene/codecs/compressing/Decompressor.h"
#include "org/apache/lucene/codecs/compressing/LZ4.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"

inline OrgApacheLuceneCodecsCompressingDecompressor *OrgApacheLuceneCodecsCompressingCompressionMode_get_LZ4_DECOMPRESSOR();
static OrgApacheLuceneCodecsCompressingDecompressor *OrgApacheLuceneCodecsCompressingCompressionMode_LZ4_DECOMPRESSOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCompressingCompressionMode, LZ4_DECOMPRESSOR, OrgApacheLuceneCodecsCompressingDecompressor *)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor : OrgApacheLuceneCodecsCompressingCompressor {
 @public
  OrgApacheLuceneCodecsCompressingLZ4_HashTable *ht_;
}

- (instancetype)init;

- (void)compressWithByteArray:(IOSByteArray *)bytes
                      withInt:(jint)off
                      withInt:(jint)len
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor, ht_, OrgApacheLuceneCodecsCompressingLZ4_HashTable *)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor : OrgApacheLuceneCodecsCompressingCompressor {
 @public
  OrgApacheLuceneCodecsCompressingLZ4_HCHashTable *ht_;
}

- (instancetype)init;

- (void)compressWithByteArray:(IOSByteArray *)bytes
                      withInt:(jint)off
                      withInt:(jint)len
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor, ht_, OrgApacheLuceneCodecsCompressingLZ4_HCHashTable *)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor : OrgApacheLuceneCodecsCompressingDecompressor {
 @public
  JavaUtilZipInflater *decompressor_;
  IOSByteArray *compressed_;
}

- (instancetype)init;

- (void)decompressWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                            withInt:(jint)originalLength
                                            withInt:(jint)offset
                                            withInt:(jint)length
                    withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

- (OrgApacheLuceneCodecsCompressingDecompressor *)clone;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor, decompressor_, JavaUtilZipInflater *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor, compressed_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor : OrgApacheLuceneCodecsCompressingCompressor {
 @public
  JavaUtilZipDeflater *compressor_;
  IOSByteArray *compressed_;
}

- (instancetype)initWithInt:(jint)level;

- (void)compressWithByteArray:(IOSByteArray *)bytes
                      withInt:(jint)off
                      withInt:(jint)len
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor, compressor_, JavaUtilZipDeflater *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor, compressed_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor *self, jint level);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(jint level) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(jint level);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_$1 : OrgApacheLuceneCodecsCompressingCompressionMode

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_$1)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_$1_init(OrgApacheLuceneCodecsCompressingCompressionMode_$1 *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$1 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$1 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_$1)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_$2 : OrgApacheLuceneCodecsCompressingCompressionMode

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_$2)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_$2_init(OrgApacheLuceneCodecsCompressingCompressionMode_$2 *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$2 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$2 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$2_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_$2)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_$3 : OrgApacheLuceneCodecsCompressingCompressionMode

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_$3)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_$3_init(OrgApacheLuceneCodecsCompressingCompressionMode_$3 *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$3 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$3_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$3 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$3_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_$3)

@interface OrgApacheLuceneCodecsCompressingCompressionMode_$4 : OrgApacheLuceneCodecsCompressingDecompressor

- (void)decompressWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                            withInt:(jint)originalLength
                                            withInt:(jint)offset
                                            withInt:(jint)length
                    withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

- (OrgApacheLuceneCodecsCompressingDecompressor *)clone;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressionMode_$4)

__attribute__((unused)) static void OrgApacheLuceneCodecsCompressingCompressionMode_$4_init(OrgApacheLuceneCodecsCompressingCompressionMode_$4 *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$4 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$4_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCompressingCompressionMode_$4 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$4_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressionMode_$4)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsCompressingCompressionMode)

OrgApacheLuceneCodecsCompressingCompressionMode *OrgApacheLuceneCodecsCompressingCompressionMode_FAST;
OrgApacheLuceneCodecsCompressingCompressionMode *OrgApacheLuceneCodecsCompressingCompressionMode_HIGH_COMPRESSION;
OrgApacheLuceneCodecsCompressingCompressionMode *OrgApacheLuceneCodecsCompressingCompressionMode_FAST_DECOMPRESSION;

@implementation OrgApacheLuceneCodecsCompressingCompressionMode

+ (OrgApacheLuceneCodecsCompressingCompressionMode *)FAST {
  return OrgApacheLuceneCodecsCompressingCompressionMode_FAST;
}

+ (OrgApacheLuceneCodecsCompressingCompressionMode *)HIGH_COMPRESSION {
  return OrgApacheLuceneCodecsCompressingCompressionMode_HIGH_COMPRESSION;
}

+ (OrgApacheLuceneCodecsCompressingCompressionMode *)FAST_DECOMPRESSION {
  return OrgApacheLuceneCodecsCompressingCompressionMode_FAST_DECOMPRESSION;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsCompressingCompressionMode class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCompressingCompressionMode_FAST, new_OrgApacheLuceneCodecsCompressingCompressionMode_$1_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCompressingCompressionMode_HIGH_COMPRESSION, new_OrgApacheLuceneCodecsCompressingCompressionMode_$2_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCompressingCompressionMode_FAST_DECOMPRESSION, new_OrgApacheLuceneCodecsCompressingCompressionMode_$3_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCompressingCompressionMode_LZ4_DECOMPRESSOR, new_OrgApacheLuceneCodecsCompressingCompressionMode_$4_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsCompressingCompressionMode)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CompressionMode", NULL, 0x4, NULL, NULL },
    { "newCompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Compressor;", 0x401, NULL, NULL },
    { "newDecompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Decompressor;", 0x401, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FAST", "FAST", 0x19, "Lorg.apache.lucene.codecs.compressing.CompressionMode;", &OrgApacheLuceneCodecsCompressingCompressionMode_FAST, NULL, .constantValue.asLong = 0 },
    { "HIGH_COMPRESSION", "HIGH_COMPRESSION", 0x19, "Lorg.apache.lucene.codecs.compressing.CompressionMode;", &OrgApacheLuceneCodecsCompressingCompressionMode_HIGH_COMPRESSION, NULL, .constantValue.asLong = 0 },
    { "FAST_DECOMPRESSION", "FAST_DECOMPRESSION", 0x19, "Lorg.apache.lucene.codecs.compressing.CompressionMode;", &OrgApacheLuceneCodecsCompressingCompressionMode_FAST_DECOMPRESSION, NULL, .constantValue.asLong = 0 },
    { "LZ4_DECOMPRESSOR", "LZ4_DECOMPRESSOR", 0x1a, "Lorg.apache.lucene.codecs.compressing.Decompressor;", &OrgApacheLuceneCodecsCompressingCompressionMode_LZ4_DECOMPRESSOR, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.compressing.CompressionMode$LZ4FastCompressor;", "Lorg.apache.lucene.codecs.compressing.CompressionMode$LZ4HighCompressor;", "Lorg.apache.lucene.codecs.compressing.CompressionMode$DeflateDecompressor;", "Lorg.apache.lucene.codecs.compressing.CompressionMode$DeflateCompressor;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode = { 2, "CompressionMode", "org.apache.lucene.codecs.compressing", NULL, 0x401, 3, methods, 4, fields, 0, NULL, 4, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_init(OrgApacheLuceneCodecsCompressingCompressionMode *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)compressWithByteArray:(IOSByteArray *)bytes
                      withInt:(jint)off
                      withInt:(jint)len
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  OrgApacheLuceneCodecsCompressingLZ4_compressWithByteArray_withInt_withInt_withOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneCodecsCompressingLZ4_HashTable_(bytes, off, len, outArg, ht_);
}

- (void)dealloc {
  RELEASE_(ht_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LZ4FastCompressor", NULL, 0x0, NULL, NULL },
    { "compressWithByteArray:withInt:withInt:withOrgApacheLuceneStoreDataOutput:", "compress", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ht_", NULL, 0x12, "Lorg.apache.lucene.codecs.compressing.LZ4$HashTable;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor = { 2, "LZ4FastCompressor", "org.apache.lucene.codecs.compressing", "CompressionMode", 0x1a, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor *self) {
  OrgApacheLuceneCodecsCompressingCompressor_init(self);
  JreStrongAssignAndConsume(&self->ht_, new_OrgApacheLuceneCodecsCompressingLZ4_HashTable_init());
}

OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor, init)
}

OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)compressWithByteArray:(IOSByteArray *)bytes
                      withInt:(jint)off
                      withInt:(jint)len
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  OrgApacheLuceneCodecsCompressingLZ4_compressHCWithByteArray_withInt_withInt_withOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneCodecsCompressingLZ4_HCHashTable_(bytes, off, len, outArg, ht_);
}

- (void)dealloc {
  RELEASE_(ht_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LZ4HighCompressor", NULL, 0x0, NULL, NULL },
    { "compressWithByteArray:withInt:withInt:withOrgApacheLuceneStoreDataOutput:", "compress", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ht_", NULL, 0x12, "Lorg.apache.lucene.codecs.compressing.LZ4$HCHashTable;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor = { 2, "LZ4HighCompressor", "org.apache.lucene.codecs.compressing", "CompressionMode", 0x1a, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor *self) {
  OrgApacheLuceneCodecsCompressingCompressor_init(self);
  JreStrongAssignAndConsume(&self->ht_, new_OrgApacheLuceneCodecsCompressingLZ4_HCHashTable_init());
}

OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor, init)
}

OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)decompressWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                            withInt:(jint)originalLength
                                            withInt:(jint)offset
                                            withInt:(jint)length
                    withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  JreAssert((offset + length <= originalLength), (@"org/apache/lucene/codecs/compressing/CompressionMode.java:197 condition failed: assert offset + length <= originalLength;"));
  if (length == 0) {
    ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_ = 0;
    return;
  }
  jint compressedLength = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  jint paddedLength = compressedLength + 1;
  JreStrongAssign(&compressed_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(compressed_, paddedLength));
  [inArg readBytesWithByteArray:compressed_ withInt:0 withInt:compressedLength];
  *IOSByteArray_GetRef(nil_chk(compressed_), compressedLength) = 0;
  [((JavaUtilZipInflater *) nil_chk(decompressor_)) reset];
  [decompressor_ setInputWithByteArray:compressed_ withInt:0 withInt:paddedLength];
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->offset_ = bytes->length_ = 0;
  JreStrongAssign(&bytes->bytes_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(bytes->bytes_, originalLength));
  @try {
    bytes->length_ = [decompressor_ inflateWithByteArray:bytes->bytes_ withInt:bytes->length_ withInt:originalLength];
  }
  @catch (JavaUtilZipDataFormatException *e) {
    @throw create_JavaIoIOException_initWithNSException_(e);
  }
  if (![decompressor_ finished]) {
    @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$Z$Z", @"Invalid decoder state: needsInput=", [decompressor_ needsInput], @", needsDict=", [decompressor_ needsDictionary]), inArg);
  }
  if (bytes->length_ != originalLength) {
    @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I$I", @"Lengths mismatch: ", bytes->length_, @" != ", originalLength), inArg);
  }
  bytes->offset_ = offset;
  bytes->length_ = length;
}

- (OrgApacheLuceneCodecsCompressingDecompressor *)clone {
  return create_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init();
}

- (void)dealloc {
  RELEASE_(decompressor_);
  RELEASE_(compressed_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DeflateDecompressor", NULL, 0x0, NULL, NULL },
    { "decompressWithOrgApacheLuceneStoreDataInput:withInt:withInt:withInt:withOrgApacheLuceneUtilBytesRef:", "decompress", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.codecs.compressing.Decompressor;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "decompressor_", NULL, 0x10, "Ljava.util.zip.Inflater;", NULL, NULL, .constantValue.asLong = 0 },
    { "compressed_", NULL, 0x0, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor = { 2, "DeflateDecompressor", "org.apache.lucene.codecs.compressing", "CompressionMode", 0x1a, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *self) {
  OrgApacheLuceneCodecsCompressingDecompressor_init(self);
  JreStrongAssignAndConsume(&self->decompressor_, new_JavaUtilZipInflater_initWithBoolean_(true));
  JreStrongAssignAndConsume(&self->compressed_, [IOSByteArray newArrayWithLength:0]);
}

OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor, init)
}

OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor

- (instancetype)initWithInt:(jint)level {
  OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(self, level);
  return self;
}

- (void)compressWithByteArray:(IOSByteArray *)bytes
                      withInt:(jint)off
                      withInt:(jint)len
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  [((JavaUtilZipDeflater *) nil_chk(compressor_)) reset];
  [compressor_ setInputWithByteArray:bytes withInt:off withInt:len];
  [compressor_ finish];
  if ([compressor_ needsInput]) {
    JreAssert((len == 0), (JavaLangInteger_valueOfWithInt_(len)));
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:0];
    return;
  }
  jint totalCount = 0;
  for (; ; ) {
    jint count = [compressor_ deflateWithByteArray:compressed_ withInt:totalCount withInt:((IOSByteArray *) nil_chk(compressed_))->size_ - totalCount];
    totalCount += count;
    JreAssert((totalCount <= ((IOSByteArray *) nil_chk(compressed_))->size_), (@"org/apache/lucene/codecs/compressing/CompressionMode.java:266 condition failed: assert totalCount <= compressed.length;"));
    if ([compressor_ finished]) {
      break;
    }
    else {
      JreStrongAssign(&compressed_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_(compressed_));
    }
  }
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:totalCount];
  [outArg writeBytesWithByteArray:compressed_ withInt:totalCount];
}

- (void)dealloc {
  RELEASE_(compressor_);
  RELEASE_(compressed_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "DeflateCompressor", NULL, 0x0, NULL, NULL },
    { "compressWithByteArray:withInt:withInt:withOrgApacheLuceneStoreDataOutput:", "compress", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "compressor_", NULL, 0x10, "Ljava.util.zip.Deflater;", NULL, NULL, .constantValue.asLong = 0 },
    { "compressed_", NULL, 0x0, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor = { 2, "DeflateCompressor", "org.apache.lucene.codecs.compressing", "CompressionMode", 0xa, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor *self, jint level) {
  OrgApacheLuceneCodecsCompressingCompressor_init(self);
  JreStrongAssignAndConsume(&self->compressor_, new_JavaUtilZipDeflater_initWithInt_withBoolean_(level, true));
  JreStrongAssignAndConsume(&self->compressed_, [IOSByteArray newArrayWithLength:64]);
}

OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor *new_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(jint level) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor, initWithInt_, level)
}

OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor *create_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(jint level) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor, initWithInt_, level)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$1

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor {
  return create_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4FastCompressor_init();
}

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor {
  return JreLoadStatic(OrgApacheLuceneCodecsCompressingCompressionMode, LZ4_DECOMPRESSOR);
}

- (NSString *)description {
  return @"FAST";
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "newCompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Compressor;", 0x1, NULL, NULL },
    { "newDecompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Decompressor;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_$1 = { 2, "", "org.apache.lucene.codecs.compressing", "CompressionMode", 0x8008, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_$1;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_$1_init(OrgApacheLuceneCodecsCompressingCompressionMode_$1 *self) {
  OrgApacheLuceneCodecsCompressingCompressionMode_init(self);
}

OrgApacheLuceneCodecsCompressingCompressionMode_$1 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$1, init)
}

OrgApacheLuceneCodecsCompressingCompressionMode_$1 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_$1)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$2

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor {
  return create_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor_initWithInt_(6);
}

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor {
  return create_OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor_init();
}

- (NSString *)description {
  return @"HIGH_COMPRESSION";
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_$2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "newCompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Compressor;", 0x1, NULL, NULL },
    { "newDecompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Decompressor;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_$2 = { 2, "", "org.apache.lucene.codecs.compressing", "CompressionMode", 0x8008, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_$2;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_$2_init(OrgApacheLuceneCodecsCompressingCompressionMode_$2 *self) {
  OrgApacheLuceneCodecsCompressingCompressionMode_init(self);
}

OrgApacheLuceneCodecsCompressingCompressionMode_$2 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$2, init)
}

OrgApacheLuceneCodecsCompressingCompressionMode_$2 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$2, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_$2)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$3

- (OrgApacheLuceneCodecsCompressingCompressor *)newCompressor {
  return create_OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor_init();
}

- (OrgApacheLuceneCodecsCompressingDecompressor *)newDecompressor {
  return JreLoadStatic(OrgApacheLuceneCodecsCompressingCompressionMode, LZ4_DECOMPRESSOR);
}

- (NSString *)description {
  return @"FAST_DECOMPRESSION";
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_$3_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "newCompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Compressor;", 0x1, NULL, NULL },
    { "newDecompressor", NULL, "Lorg.apache.lucene.codecs.compressing.Decompressor;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_$3 = { 2, "", "org.apache.lucene.codecs.compressing", "CompressionMode", 0x8008, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_$3;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_$3_init(OrgApacheLuceneCodecsCompressingCompressionMode_$3 *self) {
  OrgApacheLuceneCodecsCompressingCompressionMode_init(self);
}

OrgApacheLuceneCodecsCompressingCompressionMode_$3 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$3_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$3, init)
}

OrgApacheLuceneCodecsCompressingCompressionMode_$3 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$3_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$3, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_$3)

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$4

- (void)decompressWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                            withInt:(jint)originalLength
                                            withInt:(jint)offset
                                            withInt:(jint)length
                    withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  JreAssert((offset + length <= originalLength), (@"org/apache/lucene/codecs/compressing/CompressionMode.java:133 condition failed: assert offset + length <= originalLength;"));
  if (((IOSByteArray *) nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->bytes_))->size_ < originalLength + 7) {
    JreStrongAssignAndConsume(&bytes->bytes_, [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(originalLength + 7, 1)]);
  }
  jint decompressedLength = OrgApacheLuceneCodecsCompressingLZ4_decompressWithOrgApacheLuceneStoreDataInput_withInt_withByteArray_withInt_(inArg, offset + length, bytes->bytes_, 0);
  if (decompressedLength > originalLength) {
    @throw create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I$I", @"Corrupted: lengths mismatch: ", decompressedLength, @" > ", originalLength), inArg);
  }
  bytes->offset_ = offset;
  bytes->length_ = length;
}

- (OrgApacheLuceneCodecsCompressingDecompressor *)clone {
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingCompressionMode_$4_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "decompressWithOrgApacheLuceneStoreDataInput:withInt:withInt:withInt:withOrgApacheLuceneUtilBytesRef:", "decompress", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.codecs.compressing.Decompressor;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingCompressionMode_$4 = { 2, "", "org.apache.lucene.codecs.compressing", "CompressionMode", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingCompressionMode_$4;
}

@end

void OrgApacheLuceneCodecsCompressingCompressionMode_$4_init(OrgApacheLuceneCodecsCompressingCompressionMode_$4 *self) {
  OrgApacheLuceneCodecsCompressingDecompressor_init(self);
}

OrgApacheLuceneCodecsCompressingCompressionMode_$4 *new_OrgApacheLuceneCodecsCompressingCompressionMode_$4_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$4, init)
}

OrgApacheLuceneCodecsCompressingCompressionMode_$4 *create_OrgApacheLuceneCodecsCompressingCompressionMode_$4_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCompressingCompressionMode_$4, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingCompressionMode_$4)
