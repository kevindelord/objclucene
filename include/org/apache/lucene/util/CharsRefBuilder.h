//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/CharsRefBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilCharsRefBuilder")
#ifdef RESTRICT_OrgApacheLuceneUtilCharsRefBuilder
#define INCLUDE_ALL_OrgApacheLuceneUtilCharsRefBuilder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilCharsRefBuilder 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilCharsRefBuilder

#if !defined (OrgApacheLuceneUtilCharsRefBuilder_) && (INCLUDE_ALL_OrgApacheLuceneUtilCharsRefBuilder || defined(INCLUDE_OrgApacheLuceneUtilCharsRefBuilder))
#define OrgApacheLuceneUtilCharsRefBuilder_

#define RESTRICT_JavaLangAppendable 1
#define INCLUDE_JavaLangAppendable 1
#include "java/lang/Appendable.h"

@class IOSByteArray;
@class IOSCharArray;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilCharsRef;
@protocol JavaLangCharSequence;

/*!
 @brief A builder for <code>CharsRef</code> instances.
 */
@interface OrgApacheLuceneUtilCharsRefBuilder : NSObject < JavaLangAppendable >

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)init;

- (OrgApacheLuceneUtilCharsRefBuilder *)appendWithChar:(jchar)c;

/*!
 @brief Appends the given array to this CharsRef
 */
- (void)appendWithCharArray:(IOSCharArray *)otherChars
                    withInt:(jint)otherOffset
                    withInt:(jint)otherLength;

- (OrgApacheLuceneUtilCharsRefBuilder *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq;

- (OrgApacheLuceneUtilCharsRefBuilder *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                               withInt:(jint)start
                                                               withInt:(jint)end;

/*!
 @brief Return the char at the given offset.
 */
- (jchar)charAtWithInt:(jint)offset;

/*!
 @brief Return a reference to the chars of this builder.
 */
- (IOSCharArray *)chars;

/*!
 @brief Reset this builder to the empty state.
 */
- (void)clear;

/*!
 @brief Copies the given array into this instance.
 */
- (void)copyCharsWithCharArray:(IOSCharArray *)otherChars
                       withInt:(jint)otherOffset
                       withInt:(jint)otherLength OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Copies the given <code>CharsRef</code> referenced content into this instance.
 */
- (void)copyCharsWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Copy the provided bytes, interpreted as UTF-8 bytes.
 */
- (void)copyUTF8BytesWithByteArray:(IOSByteArray *)bytes
                           withInt:(jint)offset
                           withInt:(jint)length OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Copy the provided bytes, interpreted as UTF-8 bytes.
 */
- (void)copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)obj;

/*!
 @brief Return a <code>CharsRef</code> that points to the internal content of this
 builder.
 Any update to the content of this builder might invalidate
 the provided <code>ref</code> and vice-versa.
 */
- (OrgApacheLuceneUtilCharsRef *)get;

/*!
 @brief Used to grow the reference array.
 */
- (void)growWithInt:(jint)newLength;

- (NSUInteger)hash;

/*!
 @brief Return the number of chars in this buffer.
 */
- (jint)length;

/*!
 @brief Set a char.
 */
- (void)setCharAtWithInt:(jint)offset
                withChar:(jchar)b;

/*!
 @brief Set the length.
 */
- (void)setLengthWithInt:(jint)length;

/*!
 @brief Build a new <code>CharsRef</code> that has the same content as this builder.
 */
- (OrgApacheLuceneUtilCharsRef *)toCharsRef;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCharsRefBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRefBuilder_init(OrgApacheLuceneUtilCharsRefBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRefBuilder *new_OrgApacheLuceneUtilCharsRefBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRefBuilder *create_OrgApacheLuceneUtilCharsRefBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCharsRefBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilCharsRefBuilder")