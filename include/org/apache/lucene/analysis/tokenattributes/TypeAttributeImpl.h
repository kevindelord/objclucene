//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/TypeAttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_RESTRICT
#define OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_) && (OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_INCLUDE_ALL || OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_INCLUDE)
#define _OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_

#define OrgApacheLuceneUtilAttributeImpl_RESTRICT 1
#define OrgApacheLuceneUtilAttributeImpl_INCLUDE 1
#include "org/apache/lucene/util/AttributeImpl.h"

#define OrgApacheLuceneAnalysisTokenattributesTypeAttribute_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenattributesTypeAttribute_INCLUDE 1
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"

@protocol OrgApacheLuceneUtilAttributeReflector;

@interface OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl : OrgApacheLuceneUtilAttributeImpl < OrgApacheLuceneAnalysisTokenattributesTypeAttribute, NSCopying >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)type;

- (void)clear;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

- (void)setTypeWithNSString:(NSString *)type;

- (NSString *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self, NSString *type);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(NSString *type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_INCLUDE_ALL")