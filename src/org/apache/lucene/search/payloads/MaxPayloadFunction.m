//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/MaxPayloadFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/payloads/MaxPayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"

@implementation OrgApacheLuceneSearchPayloadsMaxPayloadFunction

- (jfloat)currentScoreWithInt:(jint)docId
                 withNSString:(NSString *)field
                      withInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)numPayloadsSeen
                    withFloat:(jfloat)currentScore
                    withFloat:(jfloat)currentPayloadScore {
  if (numPayloadsSeen == 0) {
    return currentPayloadScore;
  }
  else {
    return JavaLangMath_maxWithFloat_withFloat_(currentPayloadScore, currentScore);
  }
}

- (jfloat)docScoreWithInt:(jint)docId
             withNSString:(NSString *)field
                  withInt:(jint)numPayloadsSeen
                withFloat:(jfloat)payloadScore {
  return numPayloadsSeen > 0 ? payloadScore : 1;
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + ((jint) [[self getClass] hash]);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self getClass] != (id) [obj getClass]) return false;
  return true;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "currentScoreWithInt:withNSString:withInt:withInt:withInt:withFloat:withFloat:", "currentScore", "F", 0x1, NULL, NULL },
    { "docScoreWithInt:withNSString:withInt:withFloat:", "docScore", "F", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "init", "MaxPayloadFunction", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsMaxPayloadFunction = { 2, "MaxPayloadFunction", "org.apache.lucene.search.payloads", NULL, 0x1, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsMaxPayloadFunction;
}

@end

void OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init(OrgApacheLuceneSearchPayloadsMaxPayloadFunction *self) {
  OrgApacheLuceneSearchPayloadsPayloadFunction_init(self);
}

OrgApacheLuceneSearchPayloadsMaxPayloadFunction *new_OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsMaxPayloadFunction, init)
}

OrgApacheLuceneSearchPayloadsMaxPayloadFunction *create_OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsMaxPayloadFunction, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsMaxPayloadFunction)