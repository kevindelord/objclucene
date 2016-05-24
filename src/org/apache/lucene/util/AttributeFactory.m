//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/AttributeFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/AssertionError.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/ReflectiveOperationException.h"
#include "org/apache/lucene/util/Attribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/lukhnos/portmobile/invoke/MethodHandle.h"
#include "org/lukhnos/portmobile/invoke/MethodHandles.h"
#include "org/lukhnos/portmobile/invoke/MethodType.h"
#include "org/lukhnos/portmobile/lang/ClassValue.h"

@interface OrgApacheLuceneUtilAttributeFactory ()

+ (void)rethrow0WithNSException:(NSException *)t;

@end

inline OrgLukhnosPortmobileInvokeMethodHandles_Lookup *OrgApacheLuceneUtilAttributeFactory_get_lookup();
static OrgLukhnosPortmobileInvokeMethodHandles_Lookup *OrgApacheLuceneUtilAttributeFactory_lookup;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeFactory, lookup, OrgLukhnosPortmobileInvokeMethodHandles_Lookup *)

inline OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_get_NO_ARG_CTOR();
static OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeFactory, NO_ARG_CTOR, OrgLukhnosPortmobileInvokeMethodType *)

inline OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_get_NO_ARG_RETURNING_ATTRIBUTEIMPL();
static OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeFactory, NO_ARG_RETURNING_ATTRIBUTEIMPL, OrgLukhnosPortmobileInvokeMethodType *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_rethrow0WithNSException_(NSException *t);

@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory : OrgApacheLuceneUtilAttributeFactory {
 @public
  OrgLukhnosPortmobileLangClassValue *constructors_;
}

- (instancetype)init;

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass;

- (IOSClass *)findImplClassWithIOSClass:(IOSClass *)attClass;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory, constructors_, OrgLukhnosPortmobileLangClassValue *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init();

__attribute__((unused)) static IOSClass *OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self, IOSClass *attClass);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory)

@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 : OrgLukhnosPortmobileLangClassValue {
 @public
  OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *this$0_;
}

- (OrgLukhnosPortmobileInvokeMethodHandle *)computeValueWithIOSClass:(IOSClass *)attClass;

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1, this$0_, OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 *self, OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1)

@interface OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory () {
 @public
  OrgApacheLuceneUtilAttributeFactory *delegate_;
  IOSClass *clazz_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory, delegate_, OrgApacheLuceneUtilAttributeFactory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory, clazz_, IOSClass *)

@interface OrgApacheLuceneUtilAttributeFactory_$1 : OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory {
 @public
  OrgLukhnosPortmobileInvokeMethodHandle *val$constr_;
}

- (id)createInstance;

- (instancetype)initWithOrgLukhnosPortmobileInvokeMethodHandle:(OrgLukhnosPortmobileInvokeMethodHandle *)capture$0
                       withOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)arg$0
                                                  withIOSClass:(IOSClass *)arg$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_$1, val$constr_, OrgLukhnosPortmobileInvokeMethodHandle *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory_$1 *self, OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *arg$0, IOSClass *arg$1);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_$1 *new_OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *arg$0, IOSClass *arg$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_$1 *create_OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *arg$0, IOSClass *arg$1);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeFactory_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAttributeFactory)

OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY;

@implementation OrgApacheLuceneUtilAttributeFactory

+ (OrgApacheLuceneUtilAttributeFactory *)DEFAULT_ATTRIBUTE_FACTORY {
  return OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY;
}

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgLukhnosPortmobileInvokeMethodHandle *)findAttributeImplCtorWithIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(clazz);
}

+ (OrgApacheLuceneUtilAttributeFactory *)getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                                                                           withIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(delegate, clazz);
}

+ (void)rethrowWithNSException:(NSException *)t {
  OrgApacheLuceneUtilAttributeFactory_rethrowWithNSException_(t);
}

+ (void)rethrow0WithNSException:(NSException *)t {
  OrgApacheLuceneUtilAttributeFactory_rethrow0WithNSException_(t);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAttributeFactory class]) {
    JreStrongAssign(&OrgApacheLuceneUtilAttributeFactory_lookup, OrgLukhnosPortmobileInvokeMethodHandles_publicLookup());
    JreStrongAssign(&OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR, OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_([IOSClass voidClass]));
    JreStrongAssign(&OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL, OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(OrgApacheLuceneUtilAttributeImpl_class_()));
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY, new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAttributeFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createAttributeInstanceWithIOSClass:", "createAttributeInstance", "Lorg.apache.lucene.util.AttributeImpl;", 0x401, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Lorg/apache/lucene/util/AttributeImpl;" },
    { "findAttributeImplCtorWithIOSClass:", "findAttributeImplCtor", "Lorg.lukhnos.portmobile.invoke.MethodHandle;", 0x18, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/AttributeImpl;>;)Lorg/lukhnos/portmobile/invoke/MethodHandle;" },
    { "getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory:withIOSClass:", "getStaticImplementation", "Lorg.apache.lucene.util.AttributeFactory;", 0x9, NULL, "<A:Lorg/apache/lucene/util/AttributeImpl;>(Lorg/apache/lucene/util/AttributeFactory;Ljava/lang/Class<TA;>;)Lorg/apache/lucene/util/AttributeFactory;" },
    { "rethrowWithNSException:", "rethrow", "V", 0x8, NULL, NULL },
    { "rethrow0WithNSException:", "rethrow0", "V", 0xa, "TT;", "<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;)V" },
    { "init", "AttributeFactory", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "lookup", "lookup", 0x1a, "Lorg.lukhnos.portmobile.invoke.MethodHandles$Lookup;", &OrgApacheLuceneUtilAttributeFactory_lookup, NULL, .constantValue.asLong = 0 },
    { "NO_ARG_CTOR", "NO_ARG_CTOR", 0x1a, "Lorg.lukhnos.portmobile.invoke.MethodType;", &OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR, NULL, .constantValue.asLong = 0 },
    { "NO_ARG_RETURNING_ATTRIBUTEIMPL", "NO_ARG_RETURNING_ATTRIBUTEIMPL", 0x1a, "Lorg.lukhnos.portmobile.invoke.MethodType;", &OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_ATTRIBUTE_FACTORY", "DEFAULT_ATTRIBUTE_FACTORY", 0x19, "Lorg.apache.lucene.util.AttributeFactory;", &OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.AttributeFactory$DefaultAttributeFactory;", "Lorg.apache.lucene.util.AttributeFactory$StaticImplementationAttributeFactory;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory = { 2, "AttributeFactory", "org.apache.lucene.util", NULL, 0x401, 6, methods, 4, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilAttributeFactory;
}

@end

OrgLukhnosPortmobileInvokeMethodHandle *OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(IOSClass *clazz) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  @try {
    return [((OrgLukhnosPortmobileInvokeMethodHandle *) nil_chk([((OrgLukhnosPortmobileInvokeMethodHandles_Lookup *) nil_chk(OrgApacheLuceneUtilAttributeFactory_lookup)) findConstructorWithIOSClass:clazz withOrgLukhnosPortmobileInvokeMethodType:OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR])) asTypeWithOrgLukhnosPortmobileInvokeMethodType:OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL];
  }
  @catch (JavaLangNoSuchMethodException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withNSException_(JreStrcat("$$", @"Cannot lookup accessible no-arg constructor for: ", [((IOSClass *) nil_chk(clazz)) getName]), e);
  }
  @catch (JavaLangIllegalAccessException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withNSException_(JreStrcat("$$", @"Cannot lookup accessible no-arg constructor for: ", [((IOSClass *) nil_chk(clazz)) getName]), e);
  }
  @catch (JavaLangReflectiveOperationException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withNSException_(JreStrcat("$$", @"Cannot lookup accessible no-arg constructor for: ", [((IOSClass *) nil_chk(clazz)) getName]), e);
  }
}

OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  OrgLukhnosPortmobileInvokeMethodHandle *constr = OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(clazz);
  return create_OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(constr, delegate, clazz);
}

void OrgApacheLuceneUtilAttributeFactory_rethrowWithNSException_(NSException *t) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  OrgApacheLuceneUtilAttributeFactory_rethrow0WithNSException_(t);
}

void OrgApacheLuceneUtilAttributeFactory_rethrow0WithNSException_(NSException *t) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  @throw t;
}

void OrgApacheLuceneUtilAttributeFactory_init(OrgApacheLuceneUtilAttributeFactory *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory)

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass {
  @try {
    return (OrgApacheLuceneUtilAttributeImpl *) cast_chk([((OrgLukhnosPortmobileInvokeMethodHandle *) nil_chk([((OrgLukhnosPortmobileLangClassValue *) nil_chk(constructors_)) getWithIOSClass:attClass])) invokeExact], [OrgApacheLuceneUtilAttributeImpl class]);
  }
  @catch (NSException *t) {
    OrgApacheLuceneUtilAttributeFactory_rethrowWithNSException_(t);
    @throw create_JavaLangAssertionError_init();
  }
}

- (IOSClass *)findImplClassWithIOSClass:(IOSClass *)attClass {
  return OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(self, attClass);
}

- (void)dealloc {
  RELEASE_(constructors_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultAttributeFactory", NULL, 0x0, NULL, NULL },
    { "createAttributeInstanceWithIOSClass:", "createAttributeInstance", "Lorg.apache.lucene.util.AttributeImpl;", 0x1, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Lorg/apache/lucene/util/AttributeImpl;" },
    { "findImplClassWithIOSClass:", "findImplClass", "Ljava.lang.Class;", 0x2, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Ljava/lang/Class<+Lorg/apache/lucene/util/AttributeImpl;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "constructors_", NULL, 0x12, "Lorg.lukhnos.portmobile.lang.ClassValue;", NULL, "Lorg/lukhnos/portmobile/lang/ClassValue<Lorg/lukhnos/portmobile/invoke/MethodHandle;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory = { 2, "DefaultAttributeFactory", "org.apache.lucene.util", "AttributeFactory", 0x1a, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory;
}

@end

void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self) {
  OrgApacheLuceneUtilAttributeFactory_init(self);
  JreStrongAssignAndConsume(&self->constructors_, new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(self));
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory, init)
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory, init)
}

IOSClass *OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self, IOSClass *attClass) {
  @try {
    return [((IOSClass *) nil_chk(IOSClass_forName_initialize_classLoader_(JreStrcat("$$", [((IOSClass *) nil_chk(attClass)) getName], @"Impl"), true, [attClass getClassLoader]))) asSubclass:OrgApacheLuceneUtilAttributeImpl_class_()];
  }
  @catch (JavaLangClassNotFoundException *cnfe) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Cannot find implementing class for: ", [attClass getName]));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory)

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1

- (OrgLukhnosPortmobileInvokeMethodHandle *)computeValueWithIOSClass:(IOSClass *)attClass {
  return OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(this$0_, [((IOSClass *) nil_chk(attClass)) asSubclass:OrgApacheLuceneUtilAttribute_class_()]));
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *)outer$ {
  OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "computeValueWithIOSClass:", "computeValue", "Lorg.lukhnos.portmobile.invoke.MethodHandle;", 0x4, NULL, "(Ljava/lang/Class<*>;)Lorg/lukhnos/portmobile/invoke/MethodHandle;" },
    { "initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.AttributeFactory$DefaultAttributeFactory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.lukhnos.portmobile.invoke.MethodHandle;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 = { 2, "", "org.apache.lucene.util", "AttributeFactory$DefaultAttributeFactory", 0x8008, 2, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/lukhnos/portmobile/lang/ClassValue<Lorg/lukhnos/portmobile/invoke/MethodHandle;>;" };
  return &_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1;
}

@end

void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 *self, OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgLukhnosPortmobileLangClassValue_init(self);
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1, initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_, outer$)
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1 *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1, initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_$1)

@implementation OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                               withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(self, delegate, clazz);
  return self;
}

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass {
  return [((IOSClass *) nil_chk(attClass)) isAssignableFrom:clazz_] ? [self createInstance] : [((OrgApacheLuceneUtilAttributeFactory *) nil_chk(delegate_)) createAttributeInstanceWithIOSClass:attClass];
}

- (id)createInstance {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isEqual:(id)other {
  if (self == other) return true;
  if (other == nil || [other getClass] != (id) [self getClass]) return false;
  OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *af = (OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *) cast_chk(other, [OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory class]);
  return [((OrgApacheLuceneUtilAttributeFactory *) nil_chk(self->delegate_)) isEqual:af->delegate_] && self->clazz_ == af->clazz_;
}

- (NSUInteger)hash {
  return 31 * ((jint) [((OrgApacheLuceneUtilAttributeFactory *) nil_chk(delegate_)) hash]) + ((jint) [((IOSClass *) nil_chk(clazz_)) hash]);
}

- (void)dealloc {
  RELEASE_(delegate_);
  RELEASE_(clazz_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilAttributeFactory:withIOSClass:", "StaticImplementationAttributeFactory", NULL, 0x1, NULL, "(Lorg/apache/lucene/util/AttributeFactory;Ljava/lang/Class<TA;>;)V" },
    { "createAttributeInstanceWithIOSClass:", "createAttributeInstance", "Lorg.apache.lucene.util.AttributeImpl;", 0x11, NULL, "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Lorg/apache/lucene/util/AttributeImpl;" },
    { "createInstance", NULL, "TA;", 0x404, NULL, "()TA;" },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", NULL, 0x12, "Lorg.apache.lucene.util.AttributeFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "clazz_", NULL, 0x12, "Ljava.lang.Class;", NULL, "Ljava/lang/Class<TA;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory = { 2, "StaticImplementationAttributeFactory", "org.apache.lucene.util", "AttributeFactory", 0x409, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<A:Lorg/apache/lucene/util/AttributeImpl;>Lorg/apache/lucene/util/AttributeFactory;" };
  return &_OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory;
}

@end

void OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *self, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) {
  OrgApacheLuceneUtilAttributeFactory_init(self);
  JreStrongAssign(&self->delegate_, delegate);
  JreStrongAssign(&self->clazz_, clazz);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory)

@implementation OrgApacheLuceneUtilAttributeFactory_$1

- (id)createInstance {
  @try {
    return (OrgApacheLuceneUtilAttributeImpl *) cast_chk([((OrgLukhnosPortmobileInvokeMethodHandle *) nil_chk(val$constr_)) invokeExact], [OrgApacheLuceneUtilAttributeImpl class]);
  }
  @catch (NSException *t) {
    OrgApacheLuceneUtilAttributeFactory_rethrowWithNSException_(t);
    @throw create_JavaLangAssertionError_init();
  }
}

- (instancetype)initWithOrgLukhnosPortmobileInvokeMethodHandle:(OrgLukhnosPortmobileInvokeMethodHandle *)capture$0
                       withOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)arg$0
                                                  withIOSClass:(IOSClass *)arg$1 {
  OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(self, capture$0, arg$0, arg$1);
  return self;
}

- (void)dealloc {
  RELEASE_(val$constr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createInstance", NULL, "TA;", 0x4, NULL, "()TA;" },
    { "initWithOrgLukhnosPortmobileInvokeMethodHandle:withOrgApacheLuceneUtilAttributeFactory:withIOSClass:", "", NULL, 0x0, NULL, "(Lorg/lukhnos/portmobile/invoke/MethodHandle;Lorg/apache/lucene/util/AttributeFactory;Ljava/lang/Class<TA;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$constr_", NULL, 0x1012, "Lorg.lukhnos.portmobile.invoke.MethodHandle;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TA;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilAttributeFactory", "getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory:withIOSClass:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_$1 = { 2, "", "org.apache.lucene.util", "AttributeFactory", 0x8008, 2, methods, 1, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lorg/apache/lucene/util/AttributeFactory$StaticImplementationAttributeFactory<TA;>;" };
  return &_OrgApacheLuceneUtilAttributeFactory_$1;
}

@end

void OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory_$1 *self, OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *arg$0, IOSClass *arg$1) {
  JreStrongAssign(&self->val$constr_, capture$0);
  OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(self, arg$0, arg$1);
}

OrgApacheLuceneUtilAttributeFactory_$1 *new_OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *arg$0, IOSClass *arg$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeFactory_$1, initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_, capture$0, arg$0, arg$1)
}

OrgApacheLuceneUtilAttributeFactory_$1 *create_OrgApacheLuceneUtilAttributeFactory_$1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *arg$0, IOSClass *arg$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeFactory_$1, initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_, capture$0, arg$0, arg$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory_$1)