//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/NumericRangeQueryNodeBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/util/StringUtils.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/NumericRangeQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/NumericConfig.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/NumericQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/NumericRangeQueryNode.h"
#include "org/apache/lucene/search/NumericRangeQuery.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder_init(self);
  return self;
}

- (OrgApacheLuceneSearchNumericRangeQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleStandardNodesNumericRangeQueryNode *numericRangeNode = (OrgApacheLuceneQueryparserFlexibleStandardNodesNumericRangeQueryNode *) check_class_cast(queryNode, [OrgApacheLuceneQueryparserFlexibleStandardNodesNumericRangeQueryNode class]);
  OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *lowerNumericNode = [((OrgApacheLuceneQueryparserFlexibleStandardNodesNumericRangeQueryNode *) nil_chk(numericRangeNode)) getLowerBound];
  OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *upperNumericNode = [numericRangeNode getUpperBound];
  NSNumber *lowerNumber = [((OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *) nil_chk(lowerNumericNode)) getValue];
  NSNumber *upperNumber = [((OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *) nil_chk(upperNumericNode)) getValue];
  OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *numericConfig = [numericRangeNode getNumericConfig];
  OrgApacheLuceneDocumentFieldType_NumericTypeEnum *numberType = [((OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *) nil_chk(numericConfig)) getType];
  NSString *field = OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_toStringWithId_([numericRangeNode getField]);
  jboolean minInclusive = [numericRangeNode isLowerInclusive];
  jboolean maxInclusive = [numericRangeNode isUpperInclusive];
  jint precisionStep = [numericConfig getPrecisionStep];
  switch ([numberType ordinal]) {
    case OrgApacheLuceneDocumentFieldType_NumericType_LONG:
    return OrgApacheLuceneSearchNumericRangeQuery_newLongRangeWithNSString_withInt_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(field, precisionStep, (JavaLangLong *) check_class_cast(lowerNumber, [JavaLangLong class]), (JavaLangLong *) check_class_cast(upperNumber, [JavaLangLong class]), minInclusive, maxInclusive);
    case OrgApacheLuceneDocumentFieldType_NumericType_INT:
    return OrgApacheLuceneSearchNumericRangeQuery_newIntRangeWithNSString_withInt_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(field, precisionStep, (JavaLangInteger *) check_class_cast(lowerNumber, [JavaLangInteger class]), (JavaLangInteger *) check_class_cast(upperNumber, [JavaLangInteger class]), minInclusive, maxInclusive);
    case OrgApacheLuceneDocumentFieldType_NumericType_FLOAT:
    return OrgApacheLuceneSearchNumericRangeQuery_newFloatRangeWithNSString_withInt_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(field, precisionStep, (JavaLangFloat *) check_class_cast(lowerNumber, [JavaLangFloat class]), (JavaLangFloat *) check_class_cast(upperNumber, [JavaLangFloat class]), minInclusive, maxInclusive);
    case OrgApacheLuceneDocumentFieldType_NumericType_DOUBLE:
    return OrgApacheLuceneSearchNumericRangeQuery_newDoubleRangeWithNSString_withInt_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(field, precisionStep, (JavaLangDouble *) check_class_cast(lowerNumber, [JavaLangDouble class]), (JavaLangDouble *) check_class_cast(upperNumber, [JavaLangDouble class]), minInclusive, maxInclusive);
    default:
    @throw [new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_([new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, UNSUPPORTED_NUMERIC_DATA_TYPE_), [IOSObjectArray arrayWithObjects:(id[]){ numberType } count:1 type:NSObject_class_()]) autorelease]) autorelease];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NumericRangeQueryNodeBuilder", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Lorg.apache.lucene.search.NumericRangeQuery;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder = { 2, "NumericRangeQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder_init() {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder *self = [OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder alloc];
  OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder)