//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/StandardOpenOption.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgLukhnosPortmobileFileStandardOpenOption_INCLUDE_ALL")
#if OrgLukhnosPortmobileFileStandardOpenOption_RESTRICT
#define OrgLukhnosPortmobileFileStandardOpenOption_INCLUDE_ALL 0
#else
#define OrgLukhnosPortmobileFileStandardOpenOption_INCLUDE_ALL 1
#endif
#undef OrgLukhnosPortmobileFileStandardOpenOption_RESTRICT

#if !defined (_OrgLukhnosPortmobileFileStandardOpenOptionEnum_) && (OrgLukhnosPortmobileFileStandardOpenOption_INCLUDE_ALL || OrgLukhnosPortmobileFileStandardOpenOptionEnum_INCLUDE)
#define _OrgLukhnosPortmobileFileStandardOpenOptionEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgLukhnosPortmobileFileStandardOpenOption) {
  OrgLukhnosPortmobileFileStandardOpenOption_READ = 0,
  OrgLukhnosPortmobileFileStandardOpenOption_WRITE = 1,
  OrgLukhnosPortmobileFileStandardOpenOption_CREATE = 2,
};

@interface OrgLukhnosPortmobileFileStandardOpenOptionEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgLukhnosPortmobileFileStandardOpenOptionEnum_values();

+ (OrgLukhnosPortmobileFileStandardOpenOptionEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgLukhnosPortmobileFileStandardOpenOptionEnum *OrgLukhnosPortmobileFileStandardOpenOptionEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgLukhnosPortmobileFileStandardOpenOptionEnum)

FOUNDATION_EXPORT OrgLukhnosPortmobileFileStandardOpenOptionEnum *OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[];

#define OrgLukhnosPortmobileFileStandardOpenOptionEnum_READ OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[OrgLukhnosPortmobileFileStandardOpenOption_READ]
J2OBJC_ENUM_CONSTANT_GETTER(OrgLukhnosPortmobileFileStandardOpenOptionEnum, READ)

#define OrgLukhnosPortmobileFileStandardOpenOptionEnum_WRITE OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[OrgLukhnosPortmobileFileStandardOpenOption_WRITE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgLukhnosPortmobileFileStandardOpenOptionEnum, WRITE)

#define OrgLukhnosPortmobileFileStandardOpenOptionEnum_CREATE OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[OrgLukhnosPortmobileFileStandardOpenOption_CREATE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgLukhnosPortmobileFileStandardOpenOptionEnum, CREATE)

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileFileStandardOpenOptionEnum)

#endif

#pragma pop_macro("OrgLukhnosPortmobileFileStandardOpenOption_INCLUDE_ALL")