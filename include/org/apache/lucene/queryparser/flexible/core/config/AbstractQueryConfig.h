//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/config/AbstractQueryConfig.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig))
#define OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig_

@class OrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey;

/*!
 @brief <p>
 This class is the base of <code>QueryConfigHandler</code> and <code>FieldConfig</code>.
 It has operations to set, unset and get configuration values.
 </p>
 <p>
 Each configuration is is a key-&gt;value pair. The key should be an unique
 <code>ConfigurationKey</code> instance and it also holds the value's type.
 </p>
 - seealso: ConfigurationKey
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig : NSObject

#pragma mark Public

/*!
 @brief Returns the value held by the given key.
 @param key the key, cannot be <code>null</code>
 @return the value held by the given key
 */
- (id)getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:(OrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey *)key;

/*!
 @brief Returns true if there is a value set with the given key, otherwise false.
 @param key the key, cannot be <code>null</code>
 @return true if there is a value set with the given key, otherwise false
 */
- (jboolean)hasWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:(OrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey *)key;

/*!
 @brief Sets a key and its value.
 @param key the key, cannot be <code>null</code>
 @param value value to set
 */
- (void)setWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:(OrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey *)key
                                                                     withId:(id)value;

/*!
 @brief Unsets the given key and its value.
 @param key the key
 @return true if the key and value was set and removed, otherwise false
 */
- (jboolean)unsetWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:(OrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey *)key;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig_init(OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig")