//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/NumericRangeQueryNodeProcessor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/text/NumberFormat.h"
#include "java/text/ParseException.h"
#include "java/util/List.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeParseException.h"
#include "org/apache/lucene/queryparser/flexible/core/config/FieldConfig.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/util/StringUtils.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/NumericConfig.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/StandardQueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/NumericQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/NumericRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/TermRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/NumericRangeQueryNodeProcessor.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode class]]) {
    OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config = [self getQueryConfigHandler];
    if (config != nil) {
      OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode *termRangeNode = (OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode *) cast_chk(node, [OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode class]);
      OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfig *fieldConfig = [config getFieldConfigWithNSString:OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_toStringWithId_([((OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode *) nil_chk(termRangeNode)) getField])];
      if (fieldConfig != nil) {
        OrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig *numericConfig = [fieldConfig getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, NUMERIC_CONFIG)];
        if (numericConfig != nil) {
          OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *lower = [termRangeNode getLowerBound];
          OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *upper = [termRangeNode getUpperBound];
          NSString *lowerText = [((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(lower)) getTextAsString];
          NSString *upperText = [((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(upper)) getTextAsString];
          JavaTextNumberFormat *numberFormat = [numericConfig getNumberFormat];
          NSNumber *lowerNumber = nil, *upperNumber = nil;
          if (((jint) [((NSString *) nil_chk(lowerText)) length]) > 0) {
            @try {
              lowerNumber = [((JavaTextNumberFormat *) nil_chk(numberFormat)) parseWithNSString:lowerText];
            }
            @catch (JavaTextParseException *e) {
              @throw create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, COULD_NOT_PARSE_NUMBER), [IOSObjectArray arrayWithObjects:(id[]){ [lower getTextAsString], [[numberFormat getClass] getCanonicalName] } count:2 type:NSObject_class_()]), e);
            }
          }
          if (((jint) [((NSString *) nil_chk(upperText)) length]) > 0) {
            @try {
              upperNumber = [((JavaTextNumberFormat *) nil_chk(numberFormat)) parseWithNSString:upperText];
            }
            @catch (JavaTextParseException *e) {
              @throw create_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeParseException_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withNSException_(create_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, COULD_NOT_PARSE_NUMBER), [IOSObjectArray arrayWithObjects:(id[]){ [upper getTextAsString], [[numberFormat getClass] getCanonicalName] } count:2 type:NSObject_class_()]), e);
            }
          }
          switch ([[numericConfig getType] ordinal]) {
            case OrgApacheLuceneDocumentFieldType_NumericType_Enum_LONG:
            if (upperNumber != nil) upperNumber = JavaLangLong_valueOfWithLong_([upperNumber longLongValue]);
            if (lowerNumber != nil) lowerNumber = JavaLangLong_valueOfWithLong_([lowerNumber longLongValue]);
            break;
            case OrgApacheLuceneDocumentFieldType_NumericType_Enum_INT:
            if (upperNumber != nil) upperNumber = JavaLangInteger_valueOfWithInt_([upperNumber intValue]);
            if (lowerNumber != nil) lowerNumber = JavaLangInteger_valueOfWithInt_([lowerNumber intValue]);
            break;
            case OrgApacheLuceneDocumentFieldType_NumericType_Enum_DOUBLE:
            if (upperNumber != nil) upperNumber = JavaLangDouble_valueOfWithDouble_([upperNumber doubleValue]);
            if (lowerNumber != nil) lowerNumber = JavaLangDouble_valueOfWithDouble_([lowerNumber doubleValue]);
            break;
            case OrgApacheLuceneDocumentFieldType_NumericType_Enum_FLOAT:
            if (upperNumber != nil) upperNumber = JavaLangFloat_valueOfWithFloat_([upperNumber floatValue]);
            if (lowerNumber != nil) lowerNumber = JavaLangFloat_valueOfWithFloat_([lowerNumber floatValue]);
          }
          OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *lowerNode = create_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_initWithJavaLangCharSequence_withNSNumber_withJavaTextNumberFormat_([termRangeNode getField], lowerNumber, numberFormat);
          OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode *upperNode = create_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_initWithJavaLangCharSequence_withNSNumber_withJavaTextNumberFormat_([termRangeNode getField], upperNumber, numberFormat);
          jboolean lowerInclusive = [termRangeNode isLowerInclusive];
          jboolean upperInclusive = [termRangeNode isUpperInclusive];
          return create_OrgApacheLuceneQueryparserFlexibleStandardNodesNumericRangeQueryNode_initWithOrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_withOrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_withBoolean_withBoolean_withOrgApacheLuceneQueryparserFlexibleStandardConfigNumericConfig_(lowerNode, upperNode, lowerInclusive, upperInclusive, numericConfig);
        }
      }
    }
  }
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NumericRangeQueryNodeProcessor", NULL, 0x1, NULL, NULL },
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;" },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor = { 2, "NumericRangeQueryNodeProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor, init)
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor *create_OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsNumericRangeQueryNodeProcessor)
