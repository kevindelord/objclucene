//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicStemmer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/ar/ArabicStemmer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisArArabicStemmer)

IOSObjectArray *OrgApacheLuceneAnalysisArArabicStemmer_prefixes;
IOSObjectArray *OrgApacheLuceneAnalysisArArabicStemmer_suffixes;

@implementation OrgApacheLuceneAnalysisArArabicStemmer

+ (jchar)ALEF {
  return OrgApacheLuceneAnalysisArArabicStemmer_ALEF;
}

+ (jchar)BEH {
  return OrgApacheLuceneAnalysisArArabicStemmer_BEH;
}

+ (jchar)TEH_MARBUTA {
  return OrgApacheLuceneAnalysisArArabicStemmer_TEH_MARBUTA;
}

+ (jchar)TEH {
  return OrgApacheLuceneAnalysisArArabicStemmer_TEH;
}

+ (jchar)FEH {
  return OrgApacheLuceneAnalysisArArabicStemmer_FEH;
}

+ (jchar)KAF {
  return OrgApacheLuceneAnalysisArArabicStemmer_KAF;
}

+ (jchar)LAM {
  return OrgApacheLuceneAnalysisArArabicStemmer_LAM;
}

+ (jchar)NOON {
  return OrgApacheLuceneAnalysisArArabicStemmer_NOON;
}

+ (jchar)HEH {
  return OrgApacheLuceneAnalysisArArabicStemmer_HEH;
}

+ (jchar)WAW {
  return OrgApacheLuceneAnalysisArArabicStemmer_WAW;
}

+ (jchar)YEH {
  return OrgApacheLuceneAnalysisArArabicStemmer_YEH;
}

+ (IOSObjectArray *)prefixes {
  return OrgApacheLuceneAnalysisArArabicStemmer_prefixes;
}

+ (IOSObjectArray *)suffixes {
  return OrgApacheLuceneAnalysisArArabicStemmer_suffixes;
}

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  len = [self stemPrefixWithCharArray:s withInt:len];
  len = [self stemSuffixWithCharArray:s withInt:len];
  return len;
}

- (jint)stemPrefixWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(OrgApacheLuceneAnalysisArArabicStemmer_prefixes))->size_; i++) if ([self startsWithCheckLengthWithCharArray:s withInt:len withCharArray:IOSObjectArray_Get(OrgApacheLuceneAnalysisArArabicStemmer_prefixes, i)]) return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(s, 0, len, ((IOSCharArray *) nil_chk(IOSObjectArray_Get(OrgApacheLuceneAnalysisArArabicStemmer_prefixes, i)))->size_);
  return len;
}

- (jint)stemSuffixWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(OrgApacheLuceneAnalysisArArabicStemmer_suffixes))->size_; i++) if ([self endsWithCheckLengthWithCharArray:s withInt:len withCharArray:IOSObjectArray_Get(OrgApacheLuceneAnalysisArArabicStemmer_suffixes, i)]) len = OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(s, len - ((IOSCharArray *) nil_chk(IOSObjectArray_Get(OrgApacheLuceneAnalysisArArabicStemmer_suffixes, i)))->size_, len, ((IOSCharArray *) nil_chk(IOSObjectArray_Get(OrgApacheLuceneAnalysisArArabicStemmer_suffixes, i)))->size_);
  return len;
}

- (jboolean)startsWithCheckLengthWithCharArray:(IOSCharArray *)s
                                       withInt:(jint)len
                                 withCharArray:(IOSCharArray *)prefix {
  if (((IOSCharArray *) nil_chk(prefix))->size_ == 1 && len < 4) {
    return false;
  }
  else if (len < prefix->size_ + 2) {
    return false;
  }
  else {
    for (jint i = 0; i < prefix->size_; i++) if (IOSCharArray_Get(nil_chk(s), i) != IOSCharArray_Get(prefix, i)) return false;
    return true;
  }
}

- (jboolean)endsWithCheckLengthWithCharArray:(IOSCharArray *)s
                                     withInt:(jint)len
                               withCharArray:(IOSCharArray *)suffix {
  if (len < ((IOSCharArray *) nil_chk(suffix))->size_ + 2) {
    return false;
  }
  else {
    for (jint i = 0; i < suffix->size_; i++) if (IOSCharArray_Get(nil_chk(s), len - suffix->size_ + i) != IOSCharArray_Get(suffix, i)) return false;
    return true;
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisArArabicStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisArArabicStemmer class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisArArabicStemmer_prefixes, [IOSObjectArray newArrayWithObjects:(id[]){ [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_ALEF, OrgApacheLuceneAnalysisArArabicStemmer_LAM)) toCharArray], [(JreStrcat("CCC", OrgApacheLuceneAnalysisArArabicStemmer_WAW, OrgApacheLuceneAnalysisArArabicStemmer_ALEF, OrgApacheLuceneAnalysisArArabicStemmer_LAM)) toCharArray], [(JreStrcat("CCC", OrgApacheLuceneAnalysisArArabicStemmer_BEH, OrgApacheLuceneAnalysisArArabicStemmer_ALEF, OrgApacheLuceneAnalysisArArabicStemmer_LAM)) toCharArray], [(JreStrcat("CCC", OrgApacheLuceneAnalysisArArabicStemmer_KAF, OrgApacheLuceneAnalysisArArabicStemmer_ALEF, OrgApacheLuceneAnalysisArArabicStemmer_LAM)) toCharArray], [(JreStrcat("CCC", OrgApacheLuceneAnalysisArArabicStemmer_FEH, OrgApacheLuceneAnalysisArArabicStemmer_ALEF, OrgApacheLuceneAnalysisArArabicStemmer_LAM)) toCharArray], [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_LAM, OrgApacheLuceneAnalysisArArabicStemmer_LAM)) toCharArray], [(JreStrcat("C", OrgApacheLuceneAnalysisArArabicStemmer_WAW)) toCharArray] } count:7 type:IOSClass_charArray(1)]);
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisArArabicStemmer_suffixes, [IOSObjectArray newArrayWithObjects:(id[]){ [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_HEH, OrgApacheLuceneAnalysisArArabicStemmer_ALEF)) toCharArray], [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_ALEF, OrgApacheLuceneAnalysisArArabicStemmer_NOON)) toCharArray], [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_ALEF, OrgApacheLuceneAnalysisArArabicStemmer_TEH)) toCharArray], [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_WAW, OrgApacheLuceneAnalysisArArabicStemmer_NOON)) toCharArray], [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_YEH, OrgApacheLuceneAnalysisArArabicStemmer_NOON)) toCharArray], [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_YEH, OrgApacheLuceneAnalysisArArabicStemmer_HEH)) toCharArray], [(JreStrcat("CC", OrgApacheLuceneAnalysisArArabicStemmer_YEH, OrgApacheLuceneAnalysisArArabicStemmer_TEH_MARBUTA)) toCharArray], [(JreStrcat("C", OrgApacheLuceneAnalysisArArabicStemmer_HEH)) toCharArray], [(JreStrcat("C", OrgApacheLuceneAnalysisArArabicStemmer_TEH_MARBUTA)) toCharArray], [(JreStrcat("C", OrgApacheLuceneAnalysisArArabicStemmer_YEH)) toCharArray] } count:10 type:IOSClass_charArray(1)]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisArArabicStemmer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:", "stem", "I", 0x1, NULL, NULL },
    { "stemPrefixWithCharArray:withInt:", "stemPrefix", "I", 0x1, NULL, NULL },
    { "stemSuffixWithCharArray:withInt:", "stemSuffix", "I", 0x1, NULL, NULL },
    { "startsWithCheckLengthWithCharArray:withInt:withCharArray:", "startsWithCheckLength", "Z", 0x0, NULL, NULL },
    { "endsWithCheckLengthWithCharArray:withInt:withCharArray:", "endsWithCheckLength", "Z", 0x0, NULL, NULL },
    { "init", "ArabicStemmer", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ALEF", "ALEF", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_ALEF },
    { "BEH", "BEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_BEH },
    { "TEH_MARBUTA", "TEH_MARBUTA", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_TEH_MARBUTA },
    { "TEH", "TEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_TEH },
    { "FEH", "FEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_FEH },
    { "KAF", "KAF", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_KAF },
    { "LAM", "LAM", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_LAM },
    { "NOON", "NOON", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_NOON },
    { "HEH", "HEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_HEH },
    { "WAW", "WAW", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_WAW },
    { "YEH", "YEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicStemmer_YEH },
    { "prefixes", "prefixes", 0x19, "[[C", &OrgApacheLuceneAnalysisArArabicStemmer_prefixes, NULL, .constantValue.asLong = 0 },
    { "suffixes", "suffixes", 0x19, "[[C", &OrgApacheLuceneAnalysisArArabicStemmer_suffixes, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisArArabicStemmer = { 2, "ArabicStemmer", "org.apache.lucene.analysis.ar", NULL, 0x1, 6, methods, 13, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisArArabicStemmer;
}

@end

void OrgApacheLuceneAnalysisArArabicStemmer_init(OrgApacheLuceneAnalysisArArabicStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisArArabicStemmer *new_OrgApacheLuceneAnalysisArArabicStemmer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisArArabicStemmer, init)
}

OrgApacheLuceneAnalysisArArabicStemmer *create_OrgApacheLuceneAnalysisArArabicStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisArArabicStemmer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisArArabicStemmer)
