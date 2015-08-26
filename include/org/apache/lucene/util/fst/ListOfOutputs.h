//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/util/fst/ListOfOutputs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilFstListOfOutputs_INCLUDE_ALL")
#if OrgApacheLuceneUtilFstListOfOutputs_RESTRICT
#define OrgApacheLuceneUtilFstListOfOutputs_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilFstListOfOutputs_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilFstListOfOutputs_RESTRICT

#if !defined (_OrgApacheLuceneUtilFstListOfOutputs_) && (OrgApacheLuceneUtilFstListOfOutputs_INCLUDE_ALL || OrgApacheLuceneUtilFstListOfOutputs_INCLUDE)
#define _OrgApacheLuceneUtilFstListOfOutputs_

#define OrgApacheLuceneUtilFstOutputs_RESTRICT 1
#define OrgApacheLuceneUtilFstOutputs_INCLUDE 1
#include "org/apache/lucene/util/fst/Outputs.h"

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@protocol JavaUtilList;

@interface OrgApacheLuceneUtilFstListOfOutputs : OrgApacheLuceneUtilFstOutputs

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs;

- (id)addWithId:(id)prefix
         withId:(id)output;

- (id<JavaUtilList>)asListWithId:(id)output;

- (id)commonWithId:(id)output1
            withId:(id)output2;

- (id)getNoOutput;

- (id)mergeWithId:(id)first
           withId:(id)second;

- (NSString *)outputToStringWithId:(id)output;

- (jlong)ramBytesUsedWithId:(id)output;

- (id)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (id)readFinalOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (void)skipFinalOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (id)subtractWithId:(id)object
              withId:(id)inc;

- (NSString *)description;

- (void)writeWithId:(id)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

- (void)writeFinalOutputWithId:(id)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilFstListOfOutputs)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstListOfOutputs_initWithOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstListOfOutputs *self, OrgApacheLuceneUtilFstOutputs *outputs);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstListOfOutputs *new_OrgApacheLuceneUtilFstListOfOutputs_initWithOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstOutputs *outputs) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstListOfOutputs)

#endif

#pragma pop_macro("OrgApacheLuceneUtilFstListOfOutputs_INCLUDE_ALL")