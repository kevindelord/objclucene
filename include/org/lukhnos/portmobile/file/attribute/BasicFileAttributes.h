//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/attribute/BasicFileAttributes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosPortmobileFileAttributeBasicFileAttributes")
#ifdef RESTRICT_OrgLukhnosPortmobileFileAttributeBasicFileAttributes
#define INCLUDE_ALL_OrgLukhnosPortmobileFileAttributeBasicFileAttributes 0
#else
#define INCLUDE_ALL_OrgLukhnosPortmobileFileAttributeBasicFileAttributes 1
#endif
#undef RESTRICT_OrgLukhnosPortmobileFileAttributeBasicFileAttributes

#if !defined (OrgLukhnosPortmobileFileAttributeBasicFileAttributes_) && (INCLUDE_ALL_OrgLukhnosPortmobileFileAttributeBasicFileAttributes || defined(INCLUDE_OrgLukhnosPortmobileFileAttributeBasicFileAttributes))
#define OrgLukhnosPortmobileFileAttributeBasicFileAttributes_

@class JavaIoFile;
@class OrgLukhnosPortmobileFileAttributeFileTime;

@interface OrgLukhnosPortmobileFileAttributeBasicFileAttributes : NSObject {
 @public
  JavaIoFile *file_;
}

#pragma mark Public

- (instancetype)initWithJavaIoFile:(JavaIoFile *)file;

/*!
 @brief WARNING: This is NOT the actual creation time.
 This curretly works just because of how
 SimpleFSLock works!!
 */
- (OrgLukhnosPortmobileFileAttributeFileTime *)creationTime;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileFileAttributeBasicFileAttributes)

J2OBJC_FIELD_SETTER(OrgLukhnosPortmobileFileAttributeBasicFileAttributes, file_, JavaIoFile *)

FOUNDATION_EXPORT void OrgLukhnosPortmobileFileAttributeBasicFileAttributes_initWithJavaIoFile_(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *self, JavaIoFile *file);

FOUNDATION_EXPORT OrgLukhnosPortmobileFileAttributeBasicFileAttributes *new_OrgLukhnosPortmobileFileAttributeBasicFileAttributes_initWithJavaIoFile_(JavaIoFile *file) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgLukhnosPortmobileFileAttributeBasicFileAttributes *create_OrgLukhnosPortmobileFileAttributeBasicFileAttributes_initWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT void OrgLukhnosPortmobileFileAttributeBasicFileAttributes_init(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *self);

FOUNDATION_EXPORT OrgLukhnosPortmobileFileAttributeBasicFileAttributes *new_OrgLukhnosPortmobileFileAttributeBasicFileAttributes_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgLukhnosPortmobileFileAttributeBasicFileAttributes *create_OrgLukhnosPortmobileFileAttributeBasicFileAttributes_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileFileAttributeBasicFileAttributes)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgLukhnosPortmobileFileAttributeBasicFileAttributes")