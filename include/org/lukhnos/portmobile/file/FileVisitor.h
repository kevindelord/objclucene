//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/FileVisitor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgLukhnosPortmobileFileFileVisitor_INCLUDE_ALL")
#if OrgLukhnosPortmobileFileFileVisitor_RESTRICT
#define OrgLukhnosPortmobileFileFileVisitor_INCLUDE_ALL 0
#else
#define OrgLukhnosPortmobileFileFileVisitor_INCLUDE_ALL 1
#endif
#undef OrgLukhnosPortmobileFileFileVisitor_RESTRICT

#if !defined (_OrgLukhnosPortmobileFileFileVisitor_) && (OrgLukhnosPortmobileFileFileVisitor_INCLUDE_ALL || OrgLukhnosPortmobileFileFileVisitor_INCLUDE)
#define _OrgLukhnosPortmobileFileFileVisitor_

@class JavaIoIOException;
@class OrgLukhnosPortmobileFileAttributeBasicFileAttributes;
@class OrgLukhnosPortmobileFileFileVisitResultEnum;

@protocol OrgLukhnosPortmobileFileFileVisitor < NSObject, JavaObject >

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)preVisitDirectoryWithId:(id)dir
                withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileWithId:(id)file
        withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileFailedWithId:(id)file
                                                 withJavaIoIOException:(JavaIoIOException *)exc;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)postVisitDirectoryWithId:(id)dir
                                                    withJavaIoIOException:(JavaIoIOException *)exc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileFileFileVisitor)

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileFileFileVisitor)

#endif

#pragma pop_macro("OrgLukhnosPortmobileFileFileVisitor_INCLUDE_ALL")