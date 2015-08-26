//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/DoubleField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneDocumentDoubleField_INCLUDE_ALL")
#if OrgApacheLuceneDocumentDoubleField_RESTRICT
#define OrgApacheLuceneDocumentDoubleField_INCLUDE_ALL 0
#else
#define OrgApacheLuceneDocumentDoubleField_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneDocumentDoubleField_RESTRICT

#if !defined (_OrgApacheLuceneDocumentDoubleField_) && (OrgApacheLuceneDocumentDoubleField_INCLUDE_ALL || OrgApacheLuceneDocumentDoubleField_INCLUDE)
#define _OrgApacheLuceneDocumentDoubleField_

#define OrgApacheLuceneDocumentField_RESTRICT 1
#define OrgApacheLuceneDocumentField_INCLUDE 1
#include "org/apache/lucene/document/Field.h"

@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneDocumentField_StoreEnum;

@interface OrgApacheLuceneDocumentDoubleField : OrgApacheLuceneDocumentField

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
                      withDouble:(jdouble)value
withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)type;

- (instancetype)initWithNSString:(NSString *)name
                      withDouble:(jdouble)value
withOrgApacheLuceneDocumentField_StoreEnum:(OrgApacheLuceneDocumentField_StoreEnum *)stored;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentDoubleField)

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentDoubleField_TYPE_NOT_STORED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneDocumentDoubleField, TYPE_NOT_STORED_, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentDoubleField_TYPE_STORED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneDocumentDoubleField, TYPE_STORED_, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentDoubleField_initWithNSString_withDouble_withOrgApacheLuceneDocumentField_StoreEnum_(OrgApacheLuceneDocumentDoubleField *self, NSString *name, jdouble value, OrgApacheLuceneDocumentField_StoreEnum *stored);

FOUNDATION_EXPORT OrgApacheLuceneDocumentDoubleField *new_OrgApacheLuceneDocumentDoubleField_initWithNSString_withDouble_withOrgApacheLuceneDocumentField_StoreEnum_(NSString *name, jdouble value, OrgApacheLuceneDocumentField_StoreEnum *stored) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneDocumentDoubleField_initWithNSString_withDouble_withOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentDoubleField *self, NSString *name, jdouble value, OrgApacheLuceneDocumentFieldType *type);

FOUNDATION_EXPORT OrgApacheLuceneDocumentDoubleField *new_OrgApacheLuceneDocumentDoubleField_initWithNSString_withDouble_withOrgApacheLuceneDocumentFieldType_(NSString *name, jdouble value, OrgApacheLuceneDocumentFieldType *type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDoubleField)

#endif

#pragma pop_macro("OrgApacheLuceneDocumentDoubleField_INCLUDE_ALL")