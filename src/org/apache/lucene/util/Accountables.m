//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Accountables.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Comparator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneUtilAccountables ()

- (instancetype)init;

+ (JavaLangStringBuilder *)toStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)dest
                          withOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)a
                                                     withInt:(jint)depth;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilAccountables_init(OrgApacheLuceneUtilAccountables *self);

__attribute__((unused)) static OrgApacheLuceneUtilAccountables *new_OrgApacheLuceneUtilAccountables_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAccountables *create_OrgApacheLuceneUtilAccountables_init();

__attribute__((unused)) static JavaLangStringBuilder *OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(JavaLangStringBuilder *dest, id<OrgApacheLuceneUtilAccountable> a, jint depth);

@interface OrgApacheLuceneUtilAccountables_$1 : NSObject < JavaUtilComparator >

- (jint)compareWithId:(id<OrgApacheLuceneUtilAccountable>)o1
               withId:(id<OrgApacheLuceneUtilAccountable>)o2;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAccountables_$1)

__attribute__((unused)) static void OrgApacheLuceneUtilAccountables_$1_init(OrgApacheLuceneUtilAccountables_$1 *self);

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_$1 *new_OrgApacheLuceneUtilAccountables_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_$1 *create_OrgApacheLuceneUtilAccountables_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAccountables_$1)

@interface OrgApacheLuceneUtilAccountables_$2 : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  jlong val$bytes_;
  id<JavaUtilCollection> val$children_;
  NSString *val$description_;
}

- (jlong)ramBytesUsed;

- (id<JavaUtilCollection>)getChildResources;

- (NSString *)description;

- (instancetype)initWithLong:(jlong)capture$0
      withJavaUtilCollection:(id<JavaUtilCollection>)capture$1
                withNSString:(NSString *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAccountables_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAccountables_$2, val$children_, id<JavaUtilCollection>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAccountables_$2, val$description_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(OrgApacheLuceneUtilAccountables_$2 *self, jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2);

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_$2 *new_OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAccountables_$2 *create_OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAccountables_$2)

@implementation OrgApacheLuceneUtilAccountables

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAccountables_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)toStringWithOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)a {
  return OrgApacheLuceneUtilAccountables_toStringWithOrgApacheLuceneUtilAccountable_(a);
}

+ (JavaLangStringBuilder *)toStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)dest
                          withOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)a
                                                     withInt:(jint)depth {
  return OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(dest, a, depth);
}

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                withOrgApacheLuceneUtilAccountable:(id<OrgApacheLuceneUtilAccountable>)inArg {
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(description_, inArg);
}

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                                          withLong:(jlong)bytes {
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(description_, bytes);
}

+ (id<JavaUtilCollection>)namedAccountablesWithNSString:(NSString *)prefix
                                        withJavaUtilMap:(id<JavaUtilMap>)inArg {
  return OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(prefix, inArg);
}

+ (id<OrgApacheLuceneUtilAccountable>)namedAccountableWithNSString:(NSString *)description_
                                            withJavaUtilCollection:(id<JavaUtilCollection>)children
                                                          withLong:(jlong)bytes {
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(description_, children, bytes);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Accountables", NULL, 0x2, NULL, NULL },
    { "toStringWithOrgApacheLuceneUtilAccountable:", "toString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "toStringWithJavaLangStringBuilder:withOrgApacheLuceneUtilAccountable:withInt:", "toString", "Ljava.lang.StringBuilder;", 0xa, NULL, NULL },
    { "namedAccountableWithNSString:withOrgApacheLuceneUtilAccountable:", "namedAccountable", "Lorg.apache.lucene.util.Accountable;", 0x9, NULL, NULL },
    { "namedAccountableWithNSString:withLong:", "namedAccountable", "Lorg.apache.lucene.util.Accountable;", 0x9, NULL, NULL },
    { "namedAccountablesWithNSString:withJavaUtilMap:", "namedAccountables", "Ljava.util.Collection;", 0x9, NULL, "(Ljava/lang/String;Ljava/util/Map<*+Lorg/apache/lucene/util/Accountable;>;)Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "namedAccountableWithNSString:withJavaUtilCollection:withLong:", "namedAccountable", "Lorg.apache.lucene.util.Accountable;", 0x9, NULL, "(Ljava/lang/String;Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;J)Lorg/apache/lucene/util/Accountable;" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAccountables = { 2, "Accountables", "org.apache.lucene.util", NULL, 0x1, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAccountables;
}

@end

void OrgApacheLuceneUtilAccountables_init(OrgApacheLuceneUtilAccountables *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAccountables *new_OrgApacheLuceneUtilAccountables_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAccountables, init)
}

OrgApacheLuceneUtilAccountables *create_OrgApacheLuceneUtilAccountables_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAccountables, init)
}

NSString *OrgApacheLuceneUtilAccountables_toStringWithOrgApacheLuceneUtilAccountable_(id<OrgApacheLuceneUtilAccountable> a) {
  OrgApacheLuceneUtilAccountables_initialize();
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(sb, a, 0);
  return [sb description];
}

JavaLangStringBuilder *OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(JavaLangStringBuilder *dest, id<OrgApacheLuceneUtilAccountable> a, jint depth) {
  OrgApacheLuceneUtilAccountables_initialize();
  for (jint i = 1; i < depth; i++) {
    [((JavaLangStringBuilder *) nil_chk(dest)) appendWithNSString:@"    "];
  }
  if (depth > 0) {
    [((JavaLangStringBuilder *) nil_chk(dest)) appendWithNSString:@"|-- "];
  }
  [((JavaLangStringBuilder *) nil_chk(dest)) appendWithNSString:[((id<OrgApacheLuceneUtilAccountable>) nil_chk(a)) description]];
  [dest appendWithNSString:@": "];
  [dest appendWithNSString:OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_([a ramBytesUsed])];
  [dest appendWithNSString:JavaLangSystem_lineSeparator()];
  for (id<OrgApacheLuceneUtilAccountable> __strong child in nil_chk([a getChildResources])) {
    OrgApacheLuceneUtilAccountables_toStringWithJavaLangStringBuilder_withOrgApacheLuceneUtilAccountable_withInt_(dest, child, depth + 1);
  }
  return dest;
}

id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(NSString *description_, id<OrgApacheLuceneUtilAccountable> inArg) {
  OrgApacheLuceneUtilAccountables_initialize();
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(JreStrcat("$$@C", description_, @" [", inArg, ']'), [((id<OrgApacheLuceneUtilAccountable>) nil_chk(inArg)) getChildResources], [inArg ramBytesUsed]);
}

id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(NSString *description_, jlong bytes) {
  OrgApacheLuceneUtilAccountables_initialize();
  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(description_, JavaUtilCollections_emptyList(), bytes);
}

id<JavaUtilCollection> OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(NSString *prefix, id<JavaUtilMap> inArg) {
  OrgApacheLuceneUtilAccountables_initialize();
  id<JavaUtilList> resources = create_JavaUtilArrayList_init();
  for (id<JavaUtilMap_Entry> __strong kv in nil_chk([((id<JavaUtilMap>) nil_chk(inArg)) entrySet])) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(JreStrcat("$$@C", prefix, @" '", [((id<JavaUtilMap_Entry>) nil_chk(kv)) getKey], '\''), [kv getValue])];
  }
  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(resources, create_OrgApacheLuceneUtilAccountables_$1_init());
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(resources);
}

id<OrgApacheLuceneUtilAccountable> OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(NSString *description_, id<JavaUtilCollection> children, jlong bytes) {
  OrgApacheLuceneUtilAccountables_initialize();
  return create_OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(bytes, children, description_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAccountables)

@implementation OrgApacheLuceneUtilAccountables_$1

- (jint)compareWithId:(id<OrgApacheLuceneUtilAccountable>)o1
               withId:(id<OrgApacheLuceneUtilAccountable>)o2 {
  return [((NSString *) nil_chk([((id<OrgApacheLuceneUtilAccountable>) nil_chk(o1)) description])) compareToWithId:[((id<OrgApacheLuceneUtilAccountable>) nil_chk(o2)) description]];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAccountables_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareWithId:withId:", "compare", "I", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilAccountables", "namedAccountablesWithNSString:withJavaUtilMap:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAccountables_$1 = { 2, "", "org.apache.lucene.util", "Accountables", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/util/Accountable;>;" };
  return &_OrgApacheLuceneUtilAccountables_$1;
}

@end

void OrgApacheLuceneUtilAccountables_$1_init(OrgApacheLuceneUtilAccountables_$1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAccountables_$1 *new_OrgApacheLuceneUtilAccountables_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAccountables_$1, init)
}

OrgApacheLuceneUtilAccountables_$1 *create_OrgApacheLuceneUtilAccountables_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAccountables_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAccountables_$1)

@implementation OrgApacheLuceneUtilAccountables_$2

- (jlong)ramBytesUsed {
  return val$bytes_;
}

- (id<JavaUtilCollection>)getChildResources {
  return val$children_;
}

- (NSString *)description {
  return val$description_;
}

- (instancetype)initWithLong:(jlong)capture$0
      withJavaUtilCollection:(id<JavaUtilCollection>)capture$1
                withNSString:(NSString *)capture$2 {
  OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(self, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(val$children_);
  RELEASE_(val$description_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "initWithLong:withJavaUtilCollection:withNSString:", "", NULL, 0x0, NULL, "(JLjava/util/Collection<Lorg/apache/lucene/util/Accountable;>;Ljava/lang/String;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$bytes_", NULL, 0x1012, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "val$children_", NULL, 0x1012, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;", .constantValue.asLong = 0 },
    { "val$description_", NULL, 0x1012, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilAccountables", "namedAccountableWithNSString:withJavaUtilCollection:withLong:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAccountables_$2 = { 2, "", "org.apache.lucene.util", "Accountables", 0x8008, 4, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilAccountables_$2;
}

@end

void OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(OrgApacheLuceneUtilAccountables_$2 *self, jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) {
  self->val$bytes_ = capture$0;
  JreStrongAssign(&self->val$children_, capture$1);
  JreStrongAssign(&self->val$description_, capture$2);
  NSObject_init(self);
}

OrgApacheLuceneUtilAccountables_$2 *new_OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAccountables_$2, initWithLong_withJavaUtilCollection_withNSString_, capture$0, capture$1, capture$2)
}

OrgApacheLuceneUtilAccountables_$2 *create_OrgApacheLuceneUtilAccountables_$2_initWithLong_withJavaUtilCollection_withNSString_(jlong capture$0, id<JavaUtilCollection> capture$1, NSString *capture$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAccountables_$2, initWithLong_withJavaUtilCollection_withNSString_, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAccountables_$2)