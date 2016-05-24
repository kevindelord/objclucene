//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/LeafReaderContext.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexLeafReaderContext")
#ifdef RESTRICT_OrgApacheLuceneIndexLeafReaderContext
#define INCLUDE_ALL_OrgApacheLuceneIndexLeafReaderContext 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexLeafReaderContext 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexLeafReaderContext

#if !defined (OrgApacheLuceneIndexLeafReaderContext_) && (INCLUDE_ALL_OrgApacheLuceneIndexLeafReaderContext || defined(INCLUDE_OrgApacheLuceneIndexLeafReaderContext))
#define OrgApacheLuceneIndexLeafReaderContext_

#define RESTRICT_OrgApacheLuceneIndexIndexReaderContext 1
#define INCLUDE_OrgApacheLuceneIndexIndexReaderContext 1
#include "org/apache/lucene/index/IndexReaderContext.h"

@class OrgApacheLuceneIndexCompositeReaderContext;
@class OrgApacheLuceneIndexLeafReader;
@protocol JavaUtilList;

/*!
 @brief <code>IndexReaderContext</code> for <code>LeafReader</code> instances.
 */
@interface OrgApacheLuceneIndexLeafReaderContext : OrgApacheLuceneIndexIndexReaderContext {
 @public
  /*!
   @brief The readers ord in the top-level's leaves array
   */
  jint ord_;
  /*!
   @brief The readers absolute doc base
   */
  jint docBase_;
}

#pragma mark Public

- (id<JavaUtilList>)children;

- (id<JavaUtilList>)leaves;

- (OrgApacheLuceneIndexLeafReader *)reader;

- (NSString *)description;

#pragma mark Package-Private

/*!
 @brief Creates a new <code>LeafReaderContext</code>
 */
- (instancetype)initWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                                withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                           withInt:(jint)ord
                                                           withInt:(jint)docBase
                                                           withInt:(jint)leafOrd
                                                           withInt:(jint)leafDocBase;

- (instancetype)initWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)leafReader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLeafReaderContext)

FOUNDATION_EXPORT void OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexLeafReaderContext *self, OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexLeafReader *reader, jint ord, jint docBase, jint leafOrd, jint leafDocBase);

FOUNDATION_EXPORT OrgApacheLuceneIndexLeafReaderContext *new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexLeafReader *reader, jint ord, jint docBase, jint leafOrd, jint leafDocBase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexLeafReaderContext *create_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexLeafReader *reader, jint ord, jint docBase, jint leafOrd, jint leafDocBase);

FOUNDATION_EXPORT void OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReaderContext *self, OrgApacheLuceneIndexLeafReader *leafReader);

FOUNDATION_EXPORT OrgApacheLuceneIndexLeafReaderContext *new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReader *leafReader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexLeafReaderContext *create_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReader *leafReader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLeafReaderContext)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexLeafReaderContext")