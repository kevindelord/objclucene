//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FuzzyQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/SingleTermsEnum.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/FuzzyQuery.h"
#include "org/apache/lucene/search/FuzzyTermsEnum.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/apache/lucene/util/automaton/LevenshteinAutomata.h"

@interface OrgApacheLuceneSearchFuzzyQuery () {
 @public
  jint maxEdits_;
  jint maxExpansions_;
  jboolean transpositions_;
  jint prefixLength_;
  OrgApacheLuceneIndexTerm *term_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFuzzyQuery, term_, OrgApacheLuceneIndexTerm *)

@implementation OrgApacheLuceneSearchFuzzyQuery

+ (jint)defaultMaxEdits {
  return OrgApacheLuceneSearchFuzzyQuery_defaultMaxEdits;
}

+ (jint)defaultPrefixLength {
  return OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength;
}

+ (jint)defaultMaxExpansions {
  return OrgApacheLuceneSearchFuzzyQuery_defaultMaxExpansions;
}

+ (jboolean)defaultTranspositions {
  return OrgApacheLuceneSearchFuzzyQuery_defaultTranspositions;
}

+ (jfloat)defaultMinSimilarity {
  return OrgApacheLuceneSearchFuzzyQuery_defaultMinSimilarity;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)maxEdits
                                         withInt:(jint)prefixLength
                                         withInt:(jint)maxExpansions
                                     withBoolean:(jboolean)transpositions {
  OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_(self, term, maxEdits, prefixLength, maxExpansions, transpositions);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)maxEdits
                                         withInt:(jint)prefixLength {
  OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(self, term, maxEdits, prefixLength);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)maxEdits {
  OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_(self, term, maxEdits);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  return self;
}

- (jint)getMaxEdits {
  return maxEdits_;
}

- (jint)getPrefixLength {
  return prefixLength_;
}

- (jboolean)getTranspositions {
  return transpositions_;
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts {
  if (maxEdits_ == 0 || prefixLength_ >= ((jint) [((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term_)) text])) length])) {
    return create_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_([((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator], [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) bytes]);
  }
  return create_OrgApacheLuceneSearchFuzzyTermsEnum_initWithOrgApacheLuceneIndexTerms_withOrgApacheLuceneUtilAttributeSource_withOrgApacheLuceneIndexTerm_withFloat_withInt_withBoolean_(terms, atts, [self getTerm], maxEdits_, prefixLength_, transpositions_);
}

- (OrgApacheLuceneIndexTerm *)getTerm {
  return term_;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  if (![((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term_)) field])) isEqual:field]) {
    [buffer appendWithNSString:[term_ field]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithNSString:[term_ text]];
  [buffer appendWithChar:'~'];
  [buffer appendWithNSString:JavaLangInteger_toStringWithInt_(maxEdits_)];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + maxEdits_;
  result = prime * result + prefixLength_;
  result = prime * result + maxExpansions_;
  result = prime * result + (transpositions_ ? 0 : 1);
  result = prime * result + ((term_ == nil) ? 0 : ((jint) [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (![super isEqual:obj]) return false;
  if ([self getClass] != (id) [nil_chk(obj) getClass]) return false;
  OrgApacheLuceneSearchFuzzyQuery *other = (OrgApacheLuceneSearchFuzzyQuery *) cast_chk(obj, [OrgApacheLuceneSearchFuzzyQuery class]);
  if (maxEdits_ != other->maxEdits_) return false;
  if (prefixLength_ != other->prefixLength_) return false;
  if (maxExpansions_ != other->maxExpansions_) return false;
  if (transpositions_ != other->transpositions_) return false;
  if (term_ == nil) {
    if (other->term_ != nil) return false;
  }
  else if (![term_ isEqual:other->term_]) return false;
  return true;
}

+ (jint)floatToEditsWithFloat:(jfloat)minimumSimilarity
                      withInt:(jint)termLen {
  return OrgApacheLuceneSearchFuzzyQuery_floatToEditsWithFloat_withInt_(minimumSimilarity, termLen);
}

+ (IOSObjectArray *)__annotations_defaultMinSimilarity_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_floatToEditsWithFloat_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(term_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTerm:withInt:withInt:withInt:withBoolean:", "FuzzyQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withInt:withInt:", "FuzzyQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:withInt:", "FuzzyQuery", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexTerm:", "FuzzyQuery", NULL, 0x1, NULL, NULL },
    { "getMaxEdits", NULL, "I", 0x1, NULL, NULL },
    { "getPrefixLength", NULL, "I", 0x1, NULL, NULL },
    { "getTranspositions", NULL, "Z", 0x1, NULL, NULL },
    { "getTermsEnumWithOrgApacheLuceneIndexTerms:withOrgApacheLuceneUtilAttributeSource:", "getTermsEnum", "Lorg.apache.lucene.index.TermsEnum;", 0x4, "Ljava.io.IOException;", NULL },
    { "getTerm", NULL, "Lorg.apache.lucene.index.Term;", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "floatToEditsWithFloat:withInt:", "floatToEdits", "I", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "defaultMaxEdits", "defaultMaxEdits", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchFuzzyQuery_defaultMaxEdits },
    { "defaultPrefixLength", "defaultPrefixLength", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength },
    { "defaultMaxExpansions", "defaultMaxExpansions", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchFuzzyQuery_defaultMaxExpansions },
    { "defaultTranspositions", "defaultTranspositions", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneSearchFuzzyQuery_defaultTranspositions },
    { "maxEdits_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxExpansions_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "transpositions_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "prefixLength_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "term_", NULL, 0x12, "Lorg.apache.lucene.index.Term;", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultMinSimilarity", "defaultMinSimilarity", 0x19, "F", NULL, NULL, .constantValue.asFloat = OrgApacheLuceneSearchFuzzyQuery_defaultMinSimilarity },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFuzzyQuery = { 2, "FuzzyQuery", "org.apache.lucene.search", NULL, 0x1, 13, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchFuzzyQuery;
}

@end

void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength, jint maxExpansions, jboolean transpositions) {
  OrgApacheLuceneSearchMultiTermQuery_initWithNSString_(self, [((OrgApacheLuceneIndexTerm *) nil_chk(term)) field]);
  if (maxEdits < 0 || maxEdits > OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"maxEdits must be between 0 and ", OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE));
  }
  if (prefixLength < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"prefixLength cannot be negative.");
  }
  if (maxExpansions <= 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"maxExpansions must be positive.");
  }
  JreStrongAssign(&self->term_, term);
  self->maxEdits_ = maxEdits;
  self->prefixLength_ = prefixLength;
  self->transpositions_ = transpositions;
  self->maxExpansions_ = maxExpansions;
  [self setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:create_OrgApacheLuceneSearchMultiTermQuery_TopTermsBlendedFreqScoringRewrite_initWithInt_(maxExpansions)];
}

OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength, jint maxExpansions, jboolean transpositions) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_, term, maxEdits, prefixLength, maxExpansions, transpositions)
}

OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength, jint maxExpansions, jboolean transpositions) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_, term, maxEdits, prefixLength, maxExpansions, transpositions)
}

void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength) {
  OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_(self, term, maxEdits, prefixLength, OrgApacheLuceneSearchFuzzyQuery_defaultMaxExpansions, OrgApacheLuceneSearchFuzzyQuery_defaultTranspositions);
}

OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_, term, maxEdits, prefixLength)
}

OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_withInt_withInt_, term, maxEdits, prefixLength)
}

void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jint maxEdits) {
  OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(self, term, maxEdits, OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength);
}

OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneIndexTerm *term, jint maxEdits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_withInt_, term, maxEdits)
}

OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneIndexTerm *term, jint maxEdits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_withInt_, term, maxEdits)
}

void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_(self, term, OrgApacheLuceneSearchFuzzyQuery_defaultMaxEdits);
}

OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

OrgApacheLuceneSearchFuzzyQuery *create_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFuzzyQuery, initWithOrgApacheLuceneIndexTerm_, term)
}

jint OrgApacheLuceneSearchFuzzyQuery_floatToEditsWithFloat_withInt_(jfloat minimumSimilarity, jint termLen) {
  OrgApacheLuceneSearchFuzzyQuery_initialize();
  if (minimumSimilarity >= 1.0f) {
    return JreFpToInt(JavaLangMath_minWithFloat_withFloat_(minimumSimilarity, OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE));
  }
  else if (minimumSimilarity == 0.0f) {
    return 0;
  }
  else {
    return JavaLangMath_minWithInt_withInt_(JreFpToInt(((1.0 - minimumSimilarity) * termLen)), OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFuzzyQuery)