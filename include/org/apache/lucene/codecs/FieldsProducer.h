//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/FieldsProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsFieldsProducer_INCLUDE_ALL")
#if OrgApacheLuceneCodecsFieldsProducer_RESTRICT
#define OrgApacheLuceneCodecsFieldsProducer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsFieldsProducer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsFieldsProducer_RESTRICT

#if !defined (_OrgApacheLuceneCodecsFieldsProducer_) && (OrgApacheLuceneCodecsFieldsProducer_INCLUDE_ALL || OrgApacheLuceneCodecsFieldsProducer_INCLUDE)
#define _OrgApacheLuceneCodecsFieldsProducer_

#define OrgApacheLuceneIndexFields_RESTRICT 1
#define OrgApacheLuceneIndexFields_INCLUDE 1
#include "org/apache/lucene/index/Fields.h"

#define JavaIoCloseable_RESTRICT 1
#define JavaIoCloseable_INCLUDE 1
#include "java/io/Closeable.h"

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@interface OrgApacheLuceneCodecsFieldsProducer : OrgApacheLuceneIndexFields < JavaIoCloseable, OrgApacheLuceneUtilAccountable >

#pragma mark Public

- (void)checkIntegrity;

- (void)close;

- (OrgApacheLuceneCodecsFieldsProducer *)getMergeInstance;

#pragma mark Protected

- (instancetype)init;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsFieldsProducer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsFieldsProducer_init(OrgApacheLuceneCodecsFieldsProducer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsFieldsProducer)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsFieldsProducer_INCLUDE_ALL")