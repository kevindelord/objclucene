//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/NorwegianStemmer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"
#include "org/tartarus/snowball/ext/NorwegianStemmer.h"

#define OrgTartarusSnowballExtNorwegianStemmer_serialVersionUID 1LL

@interface OrgTartarusSnowballExtNorwegianStemmer () {
 @public
  jint I_x_;
  jint I_p1_;
}

- (void)copy_fromWithOrgTartarusSnowballExtNorwegianStemmer:(OrgTartarusSnowballExtNorwegianStemmer *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)r_mark_regions;

- (jboolean)r_main_suffix;

- (jboolean)r_consonant_pair;

- (jboolean)r_other_suffix;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtNorwegianStemmer, serialVersionUID, jlong)

static OrgTartarusSnowballExtNorwegianStemmer *OrgTartarusSnowballExtNorwegianStemmer_methodObject_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtNorwegianStemmer, methodObject_, OrgTartarusSnowballExtNorwegianStemmer *)

static IOSObjectArray *OrgTartarusSnowballExtNorwegianStemmer_a_0_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtNorwegianStemmer, a_0_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtNorwegianStemmer_a_1_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtNorwegianStemmer, a_1_, IOSObjectArray *)

static IOSObjectArray *OrgTartarusSnowballExtNorwegianStemmer_a_2_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtNorwegianStemmer, a_2_, IOSObjectArray *)

static IOSCharArray *OrgTartarusSnowballExtNorwegianStemmer_g_v_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtNorwegianStemmer, g_v_, IOSCharArray *)

static IOSCharArray *OrgTartarusSnowballExtNorwegianStemmer_g_s_ending_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballExtNorwegianStemmer, g_s_ending_, IOSCharArray *)

__attribute__((unused)) static jboolean OrgTartarusSnowballExtNorwegianStemmer_r_mark_regions(OrgTartarusSnowballExtNorwegianStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtNorwegianStemmer_r_main_suffix(OrgTartarusSnowballExtNorwegianStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtNorwegianStemmer_r_consonant_pair(OrgTartarusSnowballExtNorwegianStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtNorwegianStemmer_r_other_suffix(OrgTartarusSnowballExtNorwegianStemmer *self);

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballExtNorwegianStemmer)

@implementation OrgTartarusSnowballExtNorwegianStemmer

- (void)copy_fromWithOrgTartarusSnowballExtNorwegianStemmer:(OrgTartarusSnowballExtNorwegianStemmer *)other {
  I_x_ = ((OrgTartarusSnowballExtNorwegianStemmer *) nil_chk(other))->I_x_;
  I_p1_ = other->I_p1_;
  [super copy_fromWithOrgTartarusSnowballSnowballProgram:other];
}

- (jboolean)r_mark_regions {
  return OrgTartarusSnowballExtNorwegianStemmer_r_mark_regions(self);
}

- (jboolean)r_main_suffix {
  return OrgTartarusSnowballExtNorwegianStemmer_r_main_suffix(self);
}

- (jboolean)r_consonant_pair {
  return OrgTartarusSnowballExtNorwegianStemmer_r_consonant_pair(self);
}

- (jboolean)r_other_suffix {
  return OrgTartarusSnowballExtNorwegianStemmer_r_other_suffix(self);
}

- (jboolean)stem {
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  v_1 = cursor_;
  {
    if (!OrgTartarusSnowballExtNorwegianStemmer_r_mark_regions(self)) {
      goto break_lab0;
    }
  }
  break_lab0: ;
  cursor_ = v_1;
  limit_backward_ = cursor_;
  cursor_ = limit_;
  v_2 = limit_ - cursor_;
  {
    if (!OrgTartarusSnowballExtNorwegianStemmer_r_main_suffix(self)) {
      goto break_lab1;
    }
  }
  break_lab1: ;
  cursor_ = limit_ - v_2;
  v_3 = limit_ - cursor_;
  {
    if (!OrgTartarusSnowballExtNorwegianStemmer_r_consonant_pair(self)) {
      goto break_lab2;
    }
  }
  break_lab2: ;
  cursor_ = limit_ - v_3;
  v_4 = limit_ - cursor_;
  {
    if (!OrgTartarusSnowballExtNorwegianStemmer_r_other_suffix(self)) {
      goto break_lab3;
    }
  }
  break_lab3: ;
  cursor_ = limit_ - v_4;
  cursor_ = limit_backward_;
  return YES;
}

- (jboolean)isEqual:(id)o {
  return [o isKindOfClass:[OrgTartarusSnowballExtNorwegianStemmer class]];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk([OrgTartarusSnowballExtNorwegianStemmer_class_() getName])) hash]);
}

- (instancetype)init {
  OrgTartarusSnowballExtNorwegianStemmer_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballExtNorwegianStemmer class]) {
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtNorwegianStemmer_methodObject_, new_OrgTartarusSnowballExtNorwegianStemmer_init());
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtNorwegianStemmer_a_0_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"a", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"e", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ede", 1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ande", 1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ende", 1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ane", 1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ene", 1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"hetene", 6, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"erte", 1, 3, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"en", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"heten", 9, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ar", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"er", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"heter", 12, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"s", -1, 2, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"as", 14, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"es", 14, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"edes", 16, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"endes", 16, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"enes", 16, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"hetenes", 19, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ens", 14, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"hetens", 21, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ers", 14, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ets", 14, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"et", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"het", 25, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ert", -1, 3, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ast", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease] } count:29 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtNorwegianStemmer_a_1_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"dt", -1, -1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"vt", -1, -1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease] } count:2 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtNorwegianStemmer_a_2_, [IOSObjectArray newArrayWithObjects:(id[]){ [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"leg", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eleg", 0, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ig", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eig", 2, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"lig", 2, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"elig", 4, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"els", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"lov", -1, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"elov", 7, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"slov", 7, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease], [new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"hetslov", 9, 1, @"", OrgTartarusSnowballExtNorwegianStemmer_methodObject_) autorelease] } count:11 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtNorwegianStemmer_g_v_, [IOSCharArray newArrayWithChars:(jchar[]){ 17, 65, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 128 } count:19]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtNorwegianStemmer_g_s_ending_, [IOSCharArray newArrayWithChars:(jchar[]){ 119, 125, 149, 1 } count:4]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballExtNorwegianStemmer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "copy_fromWithOrgTartarusSnowballExtNorwegianStemmer:", "copy_from", "V", 0x2, NULL, NULL },
    { "r_mark_regions", NULL, "Z", 0x2, NULL, NULL },
    { "r_main_suffix", NULL, "Z", 0x2, NULL, NULL },
    { "r_consonant_pair", NULL, "Z", 0x2, NULL, NULL },
    { "r_other_suffix", NULL, "Z", 0x2, NULL, NULL },
    { "stem", NULL, "Z", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgTartarusSnowballExtNorwegianStemmer_serialVersionUID },
    { "methodObject_", NULL, 0x1a, "Lorg.tartarus.snowball.ext.NorwegianStemmer;", &OrgTartarusSnowballExtNorwegianStemmer_methodObject_, NULL, .constantValue.asLong = 0 },
    { "a_0_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtNorwegianStemmer_a_0_, NULL, .constantValue.asLong = 0 },
    { "a_1_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtNorwegianStemmer_a_1_, NULL, .constantValue.asLong = 0 },
    { "a_2_", NULL, 0x1a, "[Lorg.tartarus.snowball.Among;", &OrgTartarusSnowballExtNorwegianStemmer_a_2_, NULL, .constantValue.asLong = 0 },
    { "g_v_", NULL, 0x1a, "[C", &OrgTartarusSnowballExtNorwegianStemmer_g_v_, NULL, .constantValue.asLong = 0 },
    { "g_s_ending_", NULL, 0x1a, "[C", &OrgTartarusSnowballExtNorwegianStemmer_g_s_ending_, NULL, .constantValue.asLong = 0 },
    { "I_x_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "I_p1_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgTartarusSnowballExtNorwegianStemmer = { 2, "NorwegianStemmer", "org.tartarus.snowball.ext", NULL, 0x1, 9, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgTartarusSnowballExtNorwegianStemmer;
}

@end

jboolean OrgTartarusSnowballExtNorwegianStemmer_r_mark_regions(OrgTartarusSnowballExtNorwegianStemmer *self) {
  jint v_1;
  jint v_2;
  self->I_p1_ = self->limit_;
  v_1 = self->cursor_;
  {
    jint c = self->cursor_ + 3;
    if (0 > c || c > self->limit_) {
      return NO;
    }
    self->cursor_ = c;
  }
  self->I_x_ = self->cursor_;
  self->cursor_ = v_1;
  while (YES) {
    v_2 = self->cursor_;
    {
      if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtNorwegianStemmer_g_v_ withInt:97 withInt:248])) {
        goto break_lab1;
      }
      self->cursor_ = v_2;
      goto break_golab0;
    }
    break_lab1: ;
    self->cursor_ = v_2;
    if (self->cursor_ >= self->limit_) {
      return NO;
    }
    self->cursor_++;
  }
  break_golab0: ;
  while (YES) {
    {
      if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtNorwegianStemmer_g_v_ withInt:97 withInt:248])) {
        goto break_lab3;
      }
      goto break_golab2;
    }
    break_lab3: ;
    if (self->cursor_ >= self->limit_) {
      return NO;
    }
    self->cursor_++;
  }
  break_golab2: ;
  self->I_p1_ = self->cursor_;
  {
    if (!(self->I_p1_ < self->I_x_)) {
      goto break_lab4;
    }
    self->I_p1_ = self->I_x_;
  }
  break_lab4: ;
  return YES;
}

jboolean OrgTartarusSnowballExtNorwegianStemmer_r_main_suffix(OrgTartarusSnowballExtNorwegianStemmer *self) {
  jint among_var;
  jint v_1;
  jint v_2;
  jint v_3;
  v_1 = self->limit_ - self->cursor_;
  if (self->cursor_ < self->I_p1_) {
    return NO;
  }
  self->cursor_ = self->I_p1_;
  v_2 = self->limit_backward_;
  self->limit_backward_ = self->cursor_;
  self->cursor_ = self->limit_ - v_1;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtNorwegianStemmer_a_0_ withInt:29];
  if (among_var == 0) {
    self->limit_backward_ = v_2;
    return NO;
  }
  self->bra_ = self->cursor_;
  self->limit_backward_ = v_2;
  switch (among_var) {
    case 0:
    return NO;
    case 1:
    [self slice_del];
    break;
    case 2:
    {
      {
        v_3 = self->limit_ - self->cursor_;
        {
          if (!([self in_grouping_bWithCharArray:OrgTartarusSnowballExtNorwegianStemmer_g_s_ending_ withInt:98 withInt:122])) {
            goto break_lab1;
          }
          goto break_lab0;
        }
        break_lab1: ;
        self->cursor_ = self->limit_ - v_3;
        if (!([self eq_s_bWithInt:1 withJavaLangCharSequence:@"k"])) {
          return NO;
        }
        if (!([self out_grouping_bWithCharArray:OrgTartarusSnowballExtNorwegianStemmer_g_v_ withInt:97 withInt:248])) {
          return NO;
        }
      }
      break_lab0: ;
    }
    [self slice_del];
    break;
    case 3:
    [self slice_fromWithJavaLangCharSequence:@"er"];
    break;
  }
  return YES;
}

jboolean OrgTartarusSnowballExtNorwegianStemmer_r_consonant_pair(OrgTartarusSnowballExtNorwegianStemmer *self) {
  jint v_1;
  jint v_2;
  jint v_3;
  v_1 = self->limit_ - self->cursor_;
  v_2 = self->limit_ - self->cursor_;
  if (self->cursor_ < self->I_p1_) {
    return NO;
  }
  self->cursor_ = self->I_p1_;
  v_3 = self->limit_backward_;
  self->limit_backward_ = self->cursor_;
  self->cursor_ = self->limit_ - v_2;
  self->ket_ = self->cursor_;
  if ([self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtNorwegianStemmer_a_1_ withInt:2] == 0) {
    self->limit_backward_ = v_3;
    return NO;
  }
  self->bra_ = self->cursor_;
  self->limit_backward_ = v_3;
  self->cursor_ = self->limit_ - v_1;
  if (self->cursor_ <= self->limit_backward_) {
    return NO;
  }
  self->cursor_--;
  self->bra_ = self->cursor_;
  [self slice_del];
  return YES;
}

jboolean OrgTartarusSnowballExtNorwegianStemmer_r_other_suffix(OrgTartarusSnowballExtNorwegianStemmer *self) {
  jint among_var;
  jint v_1;
  jint v_2;
  v_1 = self->limit_ - self->cursor_;
  if (self->cursor_ < self->I_p1_) {
    return NO;
  }
  self->cursor_ = self->I_p1_;
  v_2 = self->limit_backward_;
  self->limit_backward_ = self->cursor_;
  self->cursor_ = self->limit_ - v_1;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtNorwegianStemmer_a_2_ withInt:11];
  if (among_var == 0) {
    self->limit_backward_ = v_2;
    return NO;
  }
  self->bra_ = self->cursor_;
  self->limit_backward_ = v_2;
  switch (among_var) {
    case 0:
    return NO;
    case 1:
    [self slice_del];
    break;
  }
  return YES;
}

void OrgTartarusSnowballExtNorwegianStemmer_init(OrgTartarusSnowballExtNorwegianStemmer *self) {
  OrgTartarusSnowballSnowballProgram_init(self);
}

OrgTartarusSnowballExtNorwegianStemmer *new_OrgTartarusSnowballExtNorwegianStemmer_init() {
  OrgTartarusSnowballExtNorwegianStemmer *self = [OrgTartarusSnowballExtNorwegianStemmer alloc];
  OrgTartarusSnowballExtNorwegianStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballExtNorwegianStemmer)