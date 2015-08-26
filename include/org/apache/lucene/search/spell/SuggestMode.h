//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestMode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpellSuggestMode_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpellSuggestMode_RESTRICT
#define OrgApacheLuceneSearchSpellSuggestMode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpellSuggestMode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpellSuggestMode_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpellSuggestModeEnum_) && (OrgApacheLuceneSearchSpellSuggestMode_INCLUDE_ALL || OrgApacheLuceneSearchSpellSuggestModeEnum_INCLUDE)
#define _OrgApacheLuceneSearchSpellSuggestModeEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchSpellSuggestMode) {
  OrgApacheLuceneSearchSpellSuggestMode_SUGGEST_WHEN_NOT_IN_INDEX = 0,
  OrgApacheLuceneSearchSpellSuggestMode_SUGGEST_MORE_POPULAR = 1,
  OrgApacheLuceneSearchSpellSuggestMode_SUGGEST_ALWAYS = 2,
};

@interface OrgApacheLuceneSearchSpellSuggestModeEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchSpellSuggestModeEnum_values();

+ (OrgApacheLuceneSearchSpellSuggestModeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestModeEnum *OrgApacheLuceneSearchSpellSuggestModeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSpellSuggestModeEnum)

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestModeEnum *OrgApacheLuceneSearchSpellSuggestModeEnum_values_[];

#define OrgApacheLuceneSearchSpellSuggestModeEnum_SUGGEST_WHEN_NOT_IN_INDEX OrgApacheLuceneSearchSpellSuggestModeEnum_values_[OrgApacheLuceneSearchSpellSuggestMode_SUGGEST_WHEN_NOT_IN_INDEX]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_WHEN_NOT_IN_INDEX)

#define OrgApacheLuceneSearchSpellSuggestModeEnum_SUGGEST_MORE_POPULAR OrgApacheLuceneSearchSpellSuggestModeEnum_values_[OrgApacheLuceneSearchSpellSuggestMode_SUGGEST_MORE_POPULAR]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_MORE_POPULAR)

#define OrgApacheLuceneSearchSpellSuggestModeEnum_SUGGEST_ALWAYS OrgApacheLuceneSearchSpellSuggestModeEnum_values_[OrgApacheLuceneSearchSpellSuggestMode_SUGGEST_ALWAYS]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_ALWAYS)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellSuggestModeEnum)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpellSuggestMode_INCLUDE_ALL")