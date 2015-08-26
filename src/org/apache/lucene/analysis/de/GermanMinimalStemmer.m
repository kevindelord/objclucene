//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanMinimalStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/de/GermanMinimalStemmer.h"

@implementation OrgApacheLuceneAnalysisDeGermanMinimalStemmer

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  if (len < 5) return len;
  for (jint i = 0; i < len; i++) switch (IOSCharArray_Get(nil_chk(s), i)) {
    case 0x00e4:
    *IOSCharArray_GetRef(s, i) = 'a';
    break;
    case 0x00f6:
    *IOSCharArray_GetRef(s, i) = 'o';
    break;
    case 0x00fc:
    *IOSCharArray_GetRef(s, i) = 'u';
    break;
  }
  if (len > 6 && IOSCharArray_Get(nil_chk(s), len - 3) == 'n' && IOSCharArray_Get(s, len - 2) == 'e' && IOSCharArray_Get(s, len - 1) == 'n') return len - 3;
  if (len > 5) switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 'n':
    if (IOSCharArray_Get(s, len - 2) == 'e') return len - 2;
    else break;
    case 'e':
    if (IOSCharArray_Get(s, len - 2) == 's') return len - 2;
    else break;
    case 's':
    if (IOSCharArray_Get(s, len - 2) == 'e') return len - 2;
    else break;
    case 'r':
    if (IOSCharArray_Get(s, len - 2) == 'e') return len - 2;
    else break;
  }
  switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 'n':
    case 'e':
    case 's':
    case 'r':
    return len - 1;
  }
  return len;
}

- (instancetype)init {
  OrgApacheLuceneAnalysisDeGermanMinimalStemmer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:", "stem", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisDeGermanMinimalStemmer = { 2, "GermanMinimalStemmer", "org.apache.lucene.analysis.de", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisDeGermanMinimalStemmer;
}

@end

void OrgApacheLuceneAnalysisDeGermanMinimalStemmer_init(OrgApacheLuceneAnalysisDeGermanMinimalStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisDeGermanMinimalStemmer *new_OrgApacheLuceneAnalysisDeGermanMinimalStemmer_init() {
  OrgApacheLuceneAnalysisDeGermanMinimalStemmer *self = [OrgApacheLuceneAnalysisDeGermanMinimalStemmer alloc];
  OrgApacheLuceneAnalysisDeGermanMinimalStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisDeGermanMinimalStemmer)