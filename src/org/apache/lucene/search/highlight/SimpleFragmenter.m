//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/SimpleFragmenter.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/search/highlight/SimpleFragmenter.h"

#define OrgApacheLuceneSearchHighlightSimpleFragmenter_DEFAULT_FRAGMENT_SIZE 100

@interface OrgApacheLuceneSearchHighlightSimpleFragmenter () {
 @public
  jint currentNumFrags_;
  jint fragmentSize_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightSimpleFragmenter, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchHighlightSimpleFragmenter, DEFAULT_FRAGMENT_SIZE, jint)

@implementation OrgApacheLuceneSearchHighlightSimpleFragmenter

- (instancetype)init {
  OrgApacheLuceneSearchHighlightSimpleFragmenter_init(self);
  return self;
}

- (instancetype)initWithInt:(jint)fragmentSize {
  OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(self, fragmentSize);
  return self;
}

- (void)startWithNSString:(NSString *)originalText
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream {
  JreStrongAssign(&offsetAtt_, [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(stream)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  currentNumFrags_ = 1;
}

- (jboolean)isNewFragment {
  jboolean isNewFrag = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) endOffset] >= (fragmentSize_ * currentNumFrags_);
  if (isNewFrag) {
    currentNumFrags_++;
  }
  return isNewFrag;
}

- (jint)getFragmentSize {
  return fragmentSize_;
}

- (void)setFragmentSizeWithInt:(jint)size {
  fragmentSize_ = size;
}

- (void)dealloc {
  RELEASE_(offsetAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SimpleFragmenter", NULL, 0x1, NULL, NULL },
    { "initWithInt:", "SimpleFragmenter", NULL, 0x1, NULL, NULL },
    { "startWithNSString:withOrgApacheLuceneAnalysisTokenStream:", "start", "V", 0x1, NULL, NULL },
    { "isNewFragment", NULL, "Z", 0x1, NULL, NULL },
    { "getFragmentSize", NULL, "I", 0x1, NULL, NULL },
    { "setFragmentSizeWithInt:", "setFragmentSize", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_FRAGMENT_SIZE", "DEFAULT_FRAGMENT_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchHighlightSimpleFragmenter_DEFAULT_FRAGMENT_SIZE },
    { "currentNumFrags_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "fragmentSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightSimpleFragmenter = { 2, "SimpleFragmenter", "org.apache.lucene.search.highlight", NULL, 0x1, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightSimpleFragmenter;
}

@end

void OrgApacheLuceneSearchHighlightSimpleFragmenter_init(OrgApacheLuceneSearchHighlightSimpleFragmenter *self) {
  OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(self, OrgApacheLuceneSearchHighlightSimpleFragmenter_DEFAULT_FRAGMENT_SIZE);
}

OrgApacheLuceneSearchHighlightSimpleFragmenter *new_OrgApacheLuceneSearchHighlightSimpleFragmenter_init() {
  OrgApacheLuceneSearchHighlightSimpleFragmenter *self = [OrgApacheLuceneSearchHighlightSimpleFragmenter alloc];
  OrgApacheLuceneSearchHighlightSimpleFragmenter_init(self);
  return self;
}

void OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(OrgApacheLuceneSearchHighlightSimpleFragmenter *self, jint fragmentSize) {
  NSObject_init(self);
  self->fragmentSize_ = fragmentSize;
}

OrgApacheLuceneSearchHighlightSimpleFragmenter *new_OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(jint fragmentSize) {
  OrgApacheLuceneSearchHighlightSimpleFragmenter *self = [OrgApacheLuceneSearchHighlightSimpleFragmenter alloc];
  OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(self, fragmentSize);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightSimpleFragmenter)