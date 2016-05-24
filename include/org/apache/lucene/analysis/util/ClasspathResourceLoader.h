//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/ClasspathResourceLoader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilClasspathResourceLoader")
#ifdef RESTRICT_OrgApacheLuceneAnalysisUtilClasspathResourceLoader
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilClasspathResourceLoader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilClasspathResourceLoader 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisUtilClasspathResourceLoader

#if !defined (OrgApacheLuceneAnalysisUtilClasspathResourceLoader_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisUtilClasspathResourceLoader || defined(INCLUDE_OrgApacheLuceneAnalysisUtilClasspathResourceLoader))
#define OrgApacheLuceneAnalysisUtilClasspathResourceLoader_

#define RESTRICT_OrgApacheLuceneAnalysisUtilResourceLoader 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilResourceLoader 1
#include "org/apache/lucene/analysis/util/ResourceLoader.h"

@class IOSClass;
@class JavaIoInputStream;
@class JavaLangClassLoader;

/*!
 @brief Simple <code>ResourceLoader</code> that uses <code>ClassLoader.getResourceAsStream(String)</code>
 and <code>Class.forName(String,boolean,ClassLoader)</code> to open resources and
 classes, respectively.
 */
@interface OrgApacheLuceneAnalysisUtilClasspathResourceLoader : NSObject < OrgApacheLuceneAnalysisUtilResourceLoader >

#pragma mark Public

/*!
 @brief Creates an instance using the context classloader to load Resources and classes.
 Resource paths must be absolute.
 */
- (instancetype)init;

/*!
 @brief Creates an instance using the context classloader to load Resources and classes
 Resources are resolved relative to the given class, if path is not absolute.
 */
- (instancetype)initWithIOSClass:(IOSClass *)clazz;

/*!
 @brief Creates an instance using the given classloader to load Resources and classes.
 Resource paths must be absolute.
 */
- (instancetype)initWithJavaLangClassLoader:(JavaLangClassLoader *)loader;

- (IOSClass *)findClassWithNSString:(NSString *)cname
                       withIOSClass:(IOSClass *)expectedType;

- (id)newInstanceWithNSString:(NSString *)cname
                 withIOSClass:(IOSClass *)expectedType OBJC_METHOD_FAMILY_NONE;

- (JavaIoInputStream *)openResourceWithNSString:(NSString *)resource;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilClasspathResourceLoader)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self, JavaLangClassLoader *loader);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(JavaLangClassLoader *loader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithJavaLangClassLoader_(JavaLangClassLoader *loader);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_(OrgApacheLuceneAnalysisUtilClasspathResourceLoader *self, IOSClass *clazz);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilClasspathResourceLoader *new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_(IOSClass *clazz) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilClasspathResourceLoader *create_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_initWithIOSClass_(IOSClass *clazz);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilClasspathResourceLoader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilClasspathResourceLoader")