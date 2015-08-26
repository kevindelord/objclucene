//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IOUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilIOUtils_INCLUDE_ALL")
#if OrgApacheLuceneUtilIOUtils_RESTRICT
#define OrgApacheLuceneUtilIOUtils_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilIOUtils_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilIOUtils_RESTRICT

#if !defined (_OrgApacheLuceneUtilIOUtils_) && (OrgApacheLuceneUtilIOUtils_INCLUDE_ALL || OrgApacheLuceneUtilIOUtils_INCLUDE)
#define _OrgApacheLuceneUtilIOUtils_

@class IOSClass;
@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaIoReader;
@class JavaLangThrowable;
@class JavaNioCharsetCharset;
@class OrgApacheLuceneStoreDirectory;
@class OrgLukhnosPortmobileFilePath;
@protocol JavaLangIterable;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneUtilIOUtils : NSObject

#pragma mark Public

+ (void)closeWithJavaIoCloseableArray:(IOSObjectArray *)objects;

+ (void)closeWithJavaLangIterable:(id<JavaLangIterable>)objects;

+ (void)closeWhileHandlingExceptionWithJavaIoCloseableArray:(IOSObjectArray *)objects;

+ (void)closeWhileHandlingExceptionWithJavaLangIterable:(id<JavaLangIterable>)objects;

+ (void)deleteFilesIfExistWithJavaUtilCollection:(id<JavaUtilCollection>)files;

+ (void)deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)files;

+ (void)deleteFilesIgnoringExceptionsWithJavaUtilCollection:(id<JavaUtilCollection>)files;

+ (void)deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                     withNSStringArray:(IOSObjectArray *)files;

+ (void)deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)files;

+ (void)fsyncWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)fileToSync
                                  withBoolean:(jboolean)isDir;

+ (JavaIoReader *)getDecodingReaderWithIOSClass:(IOSClass *)clazz
                                   withNSString:(NSString *)resource
                      withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charSet;

+ (JavaIoReader *)getDecodingReaderWithJavaIoInputStream:(JavaIoInputStream *)stream
                               withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charSet;

+ (void)reThrowWithJavaLangThrowable:(JavaLangThrowable *)th;

+ (void)reThrowUncheckedWithJavaLangThrowable:(JavaLangThrowable *)th;

+ (void)rmWithOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)locations;

+ (jboolean)spinsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

+ (jboolean)spinsWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path;

#pragma mark Package-Private

+ (jboolean)spinsLinuxWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilIOUtils)

FOUNDATION_EXPORT JavaNioCharsetCharset *OrgApacheLuceneUtilIOUtils_CHARSET_UTF_8_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIOUtils, CHARSET_UTF_8_, JavaNioCharsetCharset *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilIOUtils_UTF_8_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilIOUtils, UTF_8_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(IOSObjectArray *objects);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(id<JavaLangIterable> objects);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(IOSObjectArray *objects);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(id<JavaLangIterable> objects);

FOUNDATION_EXPORT JavaIoReader *OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(JavaIoInputStream *stream, JavaNioCharsetCharset *charSet);

FOUNDATION_EXPORT JavaIoReader *OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(IOSClass *clazz, NSString *resource, JavaNioCharsetCharset *charSet);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(OrgApacheLuceneStoreDirectory *dir, IOSObjectArray *files);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray_(IOSObjectArray *files);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithJavaUtilCollection_(id<JavaUtilCollection> files);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray_(IOSObjectArray *files);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithJavaUtilCollection_(id<JavaUtilCollection> files);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_rmWithOrgLukhnosPortmobileFilePathArray_(IOSObjectArray *locations);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(JavaLangThrowable *th);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(JavaLangThrowable *th);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIOUtils_fsyncWithOrgLukhnosPortmobileFilePath_withBoolean_(OrgLukhnosPortmobileFilePath *fileToSync, jboolean isDir);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilIOUtils_spinsWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilIOUtils_spinsWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path);

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilIOUtils_spinsLinuxWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIOUtils)

#endif

#pragma pop_macro("OrgApacheLuceneUtilIOUtils_INCLUDE_ALL")