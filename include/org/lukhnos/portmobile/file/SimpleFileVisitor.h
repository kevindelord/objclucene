//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/SimpleFileVisitor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgLukhnosPortmobileFileSimpleFileVisitor_INCLUDE_ALL")
#if OrgLukhnosPortmobileFileSimpleFileVisitor_RESTRICT
#define OrgLukhnosPortmobileFileSimpleFileVisitor_INCLUDE_ALL 0
#else
#define OrgLukhnosPortmobileFileSimpleFileVisitor_INCLUDE_ALL 1
#endif
#undef OrgLukhnosPortmobileFileSimpleFileVisitor_RESTRICT

#if !defined (_OrgLukhnosPortmobileFileSimpleFileVisitor_) && (OrgLukhnosPortmobileFileSimpleFileVisitor_INCLUDE_ALL || OrgLukhnosPortmobileFileSimpleFileVisitor_INCLUDE)
#define _OrgLukhnosPortmobileFileSimpleFileVisitor_

#define OrgLukhnosPortmobileFileFileVisitor_RESTRICT 1
#define OrgLukhnosPortmobileFileFileVisitor_INCLUDE 1
#include "org/lukhnos/portmobile/file/FileVisitor.h"

@class JavaIoIOException;
@class OrgLukhnosPortmobileFileAttributeBasicFileAttributes;
@class OrgLukhnosPortmobileFileFileVisitResultEnum;

@interface OrgLukhnosPortmobileFileSimpleFileVisitor : NSObject < OrgLukhnosPortmobileFileFileVisitor >

#pragma mark Public

- (instancetype)init;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)postVisitDirectoryWithId:(id)dir
                                                    withJavaIoIOException:(JavaIoIOException *)exc;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)preVisitDirectoryWithId:(id)dir
                withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileWithId:(id)file
        withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileFailedWithId:(id)file
                                                 withJavaIoIOException:(JavaIoIOException *)exc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileFileSimpleFileVisitor)

FOUNDATION_EXPORT void OrgLukhnosPortmobileFileSimpleFileVisitor_init(OrgLukhnosPortmobileFileSimpleFileVisitor *self);

FOUNDATION_EXPORT OrgLukhnosPortmobileFileSimpleFileVisitor *new_OrgLukhnosPortmobileFileSimpleFileVisitor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileFileSimpleFileVisitor)

#endif

#pragma pop_macro("OrgLukhnosPortmobileFileSimpleFileVisitor_INCLUDE_ALL")