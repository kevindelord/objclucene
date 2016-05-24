//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FieldInfo.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DocValuesType.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneIndexFieldInfo () {
 @public
  OrgApacheLuceneIndexDocValuesType *docValuesType_;
  jboolean storeTermVector_;
  jboolean omitNorms_;
  OrgApacheLuceneIndexIndexOptions *indexOptions_;
  jboolean storePayloads_;
  id<JavaUtilMap> attributes_;
  jlong dvGen_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfo, docValuesType_, OrgApacheLuceneIndexDocValuesType *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfo, indexOptions_, OrgApacheLuceneIndexIndexOptions *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfo, attributes_, id<JavaUtilMap>)

@implementation OrgApacheLuceneIndexFieldInfo

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)number
                     withBoolean:(jboolean)storeTermVector
                     withBoolean:(jboolean)omitNorms
                     withBoolean:(jboolean)storePayloads
withOrgApacheLuceneIndexIndexOptions:(OrgApacheLuceneIndexIndexOptions *)indexOptions
withOrgApacheLuceneIndexDocValuesType:(OrgApacheLuceneIndexDocValuesType *)docValues
                        withLong:(jlong)dvGen
                 withJavaUtilMap:(id<JavaUtilMap>)attributes {
  OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptions_withOrgApacheLuceneIndexDocValuesType_withLong_withJavaUtilMap_(self, name, number, storeTermVector, omitNorms, storePayloads, indexOptions, docValues, dvGen, attributes);
  return self;
}

- (jboolean)checkConsistency {
  if (indexOptions_ != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
    if ([((OrgApacheLuceneIndexIndexOptions *) nil_chk(indexOptions_)) compareToWithId:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS)] < 0 && storePayloads_) {
      @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$", @"indexed field '", name_, @"' cannot have payloads without positions"));
    }
  }
  else {
    if (storeTermVector_) {
      @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$", @"non-indexed field '", name_, @"' cannot store term vectors"));
    }
    if (storePayloads_) {
      @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$", @"non-indexed field '", name_, @"' cannot store payloads"));
    }
    if (omitNorms_) {
      @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$", @"non-indexed field '", name_, @"' cannot omit norms"));
    }
  }
  if (dvGen_ != -1 && docValuesType_ == JreLoadEnum(OrgApacheLuceneIndexDocValuesType, NONE)) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$", @"field '", name_, @"' cannot have a docvalues update generation without having docvalues"));
  }
  return true;
}

- (void)updateWithBoolean:(jboolean)storeTermVector
              withBoolean:(jboolean)omitNorms
              withBoolean:(jboolean)storePayloads
withOrgApacheLuceneIndexIndexOptions:(OrgApacheLuceneIndexIndexOptions *)indexOptions {
  if (indexOptions == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(JreStrcat("$$$", @"IndexOptions cannot be null (field: \"", name_, @"\")"));
  }
  if (self->indexOptions_ != indexOptions) {
    if (self->indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
      JreStrongAssign(&self->indexOptions_, indexOptions);
    }
    else if (indexOptions != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
      JreStrongAssign(&self->indexOptions_, [((OrgApacheLuceneIndexIndexOptions *) nil_chk(self->indexOptions_)) compareToWithId:indexOptions] < 0 ? self->indexOptions_ : indexOptions);
    }
  }
  if (self->indexOptions_ != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
    self->storeTermVector_ |= storeTermVector;
    self->storePayloads_ |= storePayloads;
    if (indexOptions != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE) && self->omitNorms_ != omitNorms) {
      self->omitNorms_ = true;
    }
  }
  if (self->indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE) || [((OrgApacheLuceneIndexIndexOptions *) nil_chk(self->indexOptions_)) compareToWithId:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS)] < 0) {
    self->storePayloads_ = false;
  }
  JreAssert(([self checkConsistency]), (@"org/apache/lucene/index/FieldInfo.java:133 condition failed: assert checkConsistency();"));
}

- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesType:(OrgApacheLuceneIndexDocValuesType *)type {
  if (type == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(JreStrcat("$$$", @"DocValuesType cannot be null (field: \"", name_, @"\")"));
  }
  if (docValuesType_ != JreLoadEnum(OrgApacheLuceneIndexDocValuesType, NONE) && type != JreLoadEnum(OrgApacheLuceneIndexDocValuesType, NONE) && docValuesType_ != type) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@$$C", @"cannot change DocValues type from ", docValuesType_, @" to ", type, @" for field \"", name_, '"'));
  }
  JreStrongAssign(&docValuesType_, type);
  JreAssert(([self checkConsistency]), (@"org/apache/lucene/index/FieldInfo.java:144 condition failed: assert checkConsistency();"));
}

- (OrgApacheLuceneIndexIndexOptions *)getIndexOptions {
  return indexOptions_;
}

- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:(OrgApacheLuceneIndexIndexOptions *)newIndexOptions {
  if (indexOptions_ != newIndexOptions) {
    if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
      JreStrongAssign(&indexOptions_, newIndexOptions);
    }
    else if (newIndexOptions != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
      JreStrongAssign(&indexOptions_, [((OrgApacheLuceneIndexIndexOptions *) nil_chk(indexOptions_)) compareToWithId:newIndexOptions] < 0 ? indexOptions_ : newIndexOptions);
    }
  }
  if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE) || [((OrgApacheLuceneIndexIndexOptions *) nil_chk(indexOptions_)) compareToWithId:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS)] < 0) {
    storePayloads_ = false;
  }
}

- (OrgApacheLuceneIndexDocValuesType *)getDocValuesType {
  return docValuesType_;
}

- (void)setDocValuesGenWithLong:(jlong)dvGen {
  self->dvGen_ = dvGen;
  JreAssert(([self checkConsistency]), (@"org/apache/lucene/index/FieldInfo.java:180 condition failed: assert checkConsistency();"));
}

- (jlong)getDocValuesGen {
  return dvGen_;
}

- (void)setStoreTermVectors {
  storeTermVector_ = true;
  JreAssert(([self checkConsistency]), (@"org/apache/lucene/index/FieldInfo.java:193 condition failed: assert checkConsistency();"));
}

- (void)setStorePayloads {
  if (indexOptions_ != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE) && [((OrgApacheLuceneIndexIndexOptions *) nil_chk(indexOptions_)) compareToWithId:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS)] >= 0) {
    storePayloads_ = true;
  }
  JreAssert(([self checkConsistency]), (@"org/apache/lucene/index/FieldInfo.java:200 condition failed: assert checkConsistency();"));
}

- (jboolean)omitsNorms {
  return omitNorms_;
}

- (void)setOmitsNorms {
  if (indexOptions_ == JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"cannot omit norms: this field is not indexed");
  }
  omitNorms_ = true;
}

- (jboolean)hasNorms {
  return indexOptions_ != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE) && omitNorms_ == false;
}

- (jboolean)hasPayloads {
  return storePayloads_;
}

- (jboolean)hasVectors {
  return storeTermVector_;
}

- (NSString *)getAttributeWithNSString:(NSString *)key {
  return [((id<JavaUtilMap>) nil_chk(attributes_)) getWithId:key];
}

- (NSString *)putAttributeWithNSString:(NSString *)key
                          withNSString:(NSString *)value {
  return [((id<JavaUtilMap>) nil_chk(attributes_)) putWithId:key withId:value];
}

- (id<JavaUtilMap>)attributes {
  return attributes_;
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(docValuesType_);
  RELEASE_(indexOptions_);
  RELEASE_(attributes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withBoolean:withBoolean:withBoolean:withOrgApacheLuceneIndexIndexOptions:withOrgApacheLuceneIndexDocValuesType:withLong:withJavaUtilMap:", "FieldInfo", NULL, 0x1, NULL, "(Ljava/lang/String;IZZZLorg/apache/lucene/index/IndexOptions;Lorg/apache/lucene/index/DocValuesType;JLjava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "checkConsistency", NULL, "Z", 0x1, NULL, NULL },
    { "updateWithBoolean:withBoolean:withBoolean:withOrgApacheLuceneIndexIndexOptions:", "update", "V", 0x0, NULL, NULL },
    { "setDocValuesTypeWithOrgApacheLuceneIndexDocValuesType:", "setDocValuesType", "V", 0x0, NULL, NULL },
    { "getIndexOptions", NULL, "Lorg.apache.lucene.index.IndexOptions;", 0x1, NULL, NULL },
    { "setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:", "setIndexOptions", "V", 0x1, NULL, NULL },
    { "getDocValuesType", NULL, "Lorg.apache.lucene.index.DocValuesType;", 0x1, NULL, NULL },
    { "setDocValuesGenWithLong:", "setDocValuesGen", "V", 0x0, NULL, NULL },
    { "getDocValuesGen", NULL, "J", 0x1, NULL, NULL },
    { "setStoreTermVectors", NULL, "V", 0x0, NULL, NULL },
    { "setStorePayloads", NULL, "V", 0x0, NULL, NULL },
    { "omitsNorms", NULL, "Z", 0x1, NULL, NULL },
    { "setOmitsNorms", NULL, "V", 0x1, NULL, NULL },
    { "hasNorms", NULL, "Z", 0x1, NULL, NULL },
    { "hasPayloads", NULL, "Z", 0x1, NULL, NULL },
    { "hasVectors", NULL, "Z", 0x1, NULL, NULL },
    { "getAttributeWithNSString:", "getAttribute", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "putAttributeWithNSString:withNSString:", "putAttribute", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "attributes", NULL, "Ljava.util.Map;", 0x1, NULL, "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x11, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "number_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "docValuesType_", NULL, 0x2, "Lorg.apache.lucene.index.DocValuesType;", NULL, NULL, .constantValue.asLong = 0 },
    { "storeTermVector_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "omitNorms_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "indexOptions_", NULL, 0x2, "Lorg.apache.lucene.index.IndexOptions;", NULL, NULL, .constantValue.asLong = 0 },
    { "storePayloads_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "attributes_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "dvGen_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldInfo = { 2, "FieldInfo", "org.apache.lucene.index", NULL, 0x11, 19, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFieldInfo;
}

@end

void OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptions_withOrgApacheLuceneIndexDocValuesType_withLong_withJavaUtilMap_(OrgApacheLuceneIndexFieldInfo *self, NSString *name, jint number, jboolean storeTermVector, jboolean omitNorms, jboolean storePayloads, OrgApacheLuceneIndexIndexOptions *indexOptions, OrgApacheLuceneIndexDocValuesType *docValues, jlong dvGen, id<JavaUtilMap> attributes) {
  NSObject_init(self);
  JreStrongAssign(&self->docValuesType_, JreLoadEnum(OrgApacheLuceneIndexDocValuesType, NONE));
  JreStrongAssign(&self->indexOptions_, JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE));
  JreStrongAssign(&self->name_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(name));
  self->number_ = number;
  JreStrongAssign(&self->docValuesType_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(docValues, JreStrcat("$$$", @"DocValuesType cannot be null (field: \"", name, @"\")")));
  JreStrongAssign(&self->indexOptions_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(indexOptions, JreStrcat("$$$", @"IndexOptions cannot be null (field: \"", name, @"\")")));
  if (indexOptions != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, NONE)) {
    self->storeTermVector_ = storeTermVector;
    self->storePayloads_ = storePayloads;
    self->omitNorms_ = omitNorms;
  }
  else {
    self->storeTermVector_ = false;
    self->storePayloads_ = false;
    self->omitNorms_ = false;
  }
  self->dvGen_ = dvGen;
  JreStrongAssign(&self->attributes_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(attributes));
  JreAssert(([self checkConsistency]), (@"org/apache/lucene/index/FieldInfo.java:73 condition failed: assert checkConsistency();"));
}

OrgApacheLuceneIndexFieldInfo *new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptions_withOrgApacheLuceneIndexDocValuesType_withLong_withJavaUtilMap_(NSString *name, jint number, jboolean storeTermVector, jboolean omitNorms, jboolean storePayloads, OrgApacheLuceneIndexIndexOptions *indexOptions, OrgApacheLuceneIndexDocValuesType *docValues, jlong dvGen, id<JavaUtilMap> attributes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFieldInfo, initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptions_withOrgApacheLuceneIndexDocValuesType_withLong_withJavaUtilMap_, name, number, storeTermVector, omitNorms, storePayloads, indexOptions, docValues, dvGen, attributes)
}

OrgApacheLuceneIndexFieldInfo *create_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptions_withOrgApacheLuceneIndexDocValuesType_withLong_withJavaUtilMap_(NSString *name, jint number, jboolean storeTermVector, jboolean omitNorms, jboolean storePayloads, OrgApacheLuceneIndexIndexOptions *indexOptions, OrgApacheLuceneIndexDocValuesType *docValues, jlong dvGen, id<JavaUtilMap> attributes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFieldInfo, initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptions_withOrgApacheLuceneIndexDocValuesType_withLong_withJavaUtilMap_, name, number, storeTermVector, omitNorms, storePayloads, indexOptions, docValues, dvGen, attributes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldInfo)