//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/FileVisitor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosPortmobileFileFileVisitor")
#ifdef RESTRICT_OrgLukhnosPortmobileFileFileVisitor
#define INCLUDE_ALL_OrgLukhnosPortmobileFileFileVisitor 0
#else
#define INCLUDE_ALL_OrgLukhnosPortmobileFileFileVisitor 1
#endif
#undef RESTRICT_OrgLukhnosPortmobileFileFileVisitor

#if !defined (OrgLukhnosPortmobileFileFileVisitor_) && (INCLUDE_ALL_OrgLukhnosPortmobileFileFileVisitor || defined(INCLUDE_OrgLukhnosPortmobileFileFileVisitor))
#define OrgLukhnosPortmobileFileFileVisitor_

@class JavaIoIOException;
@class OrgLukhnosPortmobileFileAttributeBasicFileAttributes;
@class OrgLukhnosPortmobileFileFileVisitResult;

@protocol OrgLukhnosPortmobileFileFileVisitor < NSObject, JavaObject >

- (OrgLukhnosPortmobileFileFileVisitResult *)preVisitDirectoryWithId:(id)dir
            withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResult *)visitFileWithId:(id)file
    withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResult *)visitFileFailedWithId:(id)file
                                             withJavaIoIOException:(JavaIoIOException *)exc;

- (OrgLukhnosPortmobileFileFileVisitResult *)postVisitDirectoryWithId:(id)dir
                                                withJavaIoIOException:(JavaIoIOException *)exc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosPortmobileFileFileVisitor)

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosPortmobileFileFileVisitor)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgLukhnosPortmobileFileFileVisitor")