//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/FSTEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilFstFSTEnum_INCLUDE_ALL")
#if OrgApacheLuceneUtilFstFSTEnum_RESTRICT
#define OrgApacheLuceneUtilFstFSTEnum_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilFstFSTEnum_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilFstFSTEnum_RESTRICT

#if !defined (_OrgApacheLuceneUtilFstFSTEnum_) && (OrgApacheLuceneUtilFstFSTEnum_INCLUDE_ALL || OrgApacheLuceneUtilFstFSTEnum_INCLUDE)
#define _OrgApacheLuceneUtilFstFSTEnum_

@class IOSObjectArray;
@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilFstFST_Arc;
@class OrgApacheLuceneUtilFstFST_BytesReader;

@interface OrgApacheLuceneUtilFstFSTEnum : NSObject {
 @public
  OrgApacheLuceneUtilFstFST *fst_;
  IOSObjectArray *arcs_;
  IOSObjectArray *output_;
  id NO_OUTPUT_;
  OrgApacheLuceneUtilFstFST_BytesReader *fstReader_;
  OrgApacheLuceneUtilFstFST_Arc *scratchArc_;
  jint upto_;
  jint targetLength_;
}

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst;

- (void)doNext;

- (void)doSeekCeil;

- (jboolean)doSeekExact;

- (void)doSeekFloor;

- (jint)getCurrentLabel;

- (jint)getTargetLabel;

- (void)grow;

- (void)rewindPrefix;

- (void)setCurrentLabelWithInt:(jint)label;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstFSTEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstFSTEnum, fst_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstFSTEnum, arcs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstFSTEnum, output_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstFSTEnum, NO_OUTPUT_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstFSTEnum, fstReader_, OrgApacheLuceneUtilFstFST_BytesReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstFSTEnum, scratchArc_, OrgApacheLuceneUtilFstFST_Arc *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFSTEnum *self, OrgApacheLuceneUtilFstFST *fst);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstFSTEnum)

#endif

#pragma pop_macro("OrgApacheLuceneUtilFstFSTEnum_INCLUDE_ALL")