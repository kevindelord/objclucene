//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/TimSorter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilTimSorter")
#ifdef RESTRICT_OrgApacheLuceneUtilTimSorter
#define INCLUDE_ALL_OrgApacheLuceneUtilTimSorter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilTimSorter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilTimSorter

#if !defined (OrgApacheLuceneUtilTimSorter_) && (INCLUDE_ALL_OrgApacheLuceneUtilTimSorter || defined(INCLUDE_OrgApacheLuceneUtilTimSorter))
#define OrgApacheLuceneUtilTimSorter_

#define RESTRICT_OrgApacheLuceneUtilSorter 1
#define INCLUDE_OrgApacheLuceneUtilSorter 1
#include "org/apache/lucene/util/Sorter.h"

@class IOSIntArray;

/*!
 @brief <code>Sorter</code> implementation based on the
 <a href="http://svn.python.org/projects/python/trunk/Objects/listsort.txt">TimSort</a>
 algorithm.
 <p>This implementation is especially good at sorting partially-sorted
 arrays and sorts small arrays with binary sort.
 <p><b>NOTE</b>:There are a few differences with the original implementation:<ul>
 <li><a name="maxTempSlots"></a>The extra amount of memory to perform merges is
 configurable. This allows small merges to be very fast while large merges
 will be performed in-place (slightly slower). You can make sure that the
 fast merge routine will always be used by having <code>maxTempSlots</code>
 equal to half of the length of the slice of data to sort.
 <li>Only the fast merge routine can gallop (the one that doesn't run
 in-place) and it only gallops on the longest slice.
 </ul>
 */
@interface OrgApacheLuceneUtilTimSorter : OrgApacheLuceneUtilSorter {
 @public
  jint maxTempSlots_;
  jint minRun_;
  jint to_;
  jint stackSize_;
  IOSIntArray *runEnds_;
}

+ (jint)MINRUN;

+ (jint)THRESHOLD;

+ (jint)STACKSIZE;

+ (jint)MIN_GALLOP;

#pragma mark Public

- (void)sortWithInt:(jint)from
            withInt:(jint)to;

#pragma mark Protected

/*!
 @brief Create a new <code>TimSorter</code>.
 @param maxTempSlots the <a href="#maxTempSlots">maximum amount of extra memory to run merges</a>
 */
- (instancetype)initWithInt:(jint)maxTempSlots;

/*!
 @brief Compare element <code>i</code> from the temporary storage with element
 <code>j</code> from the slice to sort, similarly to
 <code>compare(int,int)</code>.
 */
- (jint)compareSavedWithInt:(jint)i
                    withInt:(jint)j;

/*!
 @brief Copy data from slot <code>src</code> to slot <code>dest</code>.
 */
- (void)copy__WithInt:(jint)src
              withInt:(jint)dest OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Restore element <code>j</code> from the temporary storage into slot <code>i</code>.
 */
- (void)restoreWithInt:(jint)i
               withInt:(jint)j;

/*!
 @brief Save all elements between slots <code>i</code> and <code>i+len</code>
 into the temporary storage.
 */
- (void)saveWithInt:(jint)i
            withInt:(jint)len;

#pragma mark Package-Private

- (void)doRotateWithInt:(jint)lo
                withInt:(jint)mid
                withInt:(jint)hi;

- (void)ensureInvariants;

- (void)exhaustStack;

- (jint)lowerSavedWithInt:(jint)from
                  withInt:(jint)to
                  withInt:(jint)val;

- (jint)lowerSaved3WithInt:(jint)from
                   withInt:(jint)to
                   withInt:(jint)val;

- (void)mergeWithInt:(jint)lo
             withInt:(jint)mid
             withInt:(jint)hi;

- (void)mergeAtWithInt:(jint)n;

- (void)mergeHiWithInt:(jint)lo
               withInt:(jint)mid
               withInt:(jint)hi;

- (void)mergeLoWithInt:(jint)lo
               withInt:(jint)mid
               withInt:(jint)hi;

/*!
 @brief Minimum run length for an array of length <code>length</code>.
 */
+ (jint)minRunWithInt:(jint)length;

/*!
 @brief Compute the length of the next run, make the run sorted and return its
 length.
 */
- (jint)nextRun;

- (void)pushRunLenWithInt:(jint)len;

- (void)resetWithInt:(jint)from
             withInt:(jint)to;

- (jint)runBaseWithInt:(jint)i;

- (jint)runEndWithInt:(jint)i;

- (jint)runLenWithInt:(jint)i;

- (void)setRunEndWithInt:(jint)i
                 withInt:(jint)runEnd;

- (jint)upperSavedWithInt:(jint)from
                  withInt:(jint)to
                  withInt:(jint)val;

- (jint)upperSaved3WithInt:(jint)from
                   withInt:(jint)to
                   withInt:(jint)val;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilTimSorter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilTimSorter, runEnds_, IOSIntArray *)

inline jint OrgApacheLuceneUtilTimSorter_get_MINRUN();
#define OrgApacheLuceneUtilTimSorter_MINRUN 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilTimSorter, MINRUN, jint)

inline jint OrgApacheLuceneUtilTimSorter_get_THRESHOLD();
#define OrgApacheLuceneUtilTimSorter_THRESHOLD 64
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilTimSorter, THRESHOLD, jint)

inline jint OrgApacheLuceneUtilTimSorter_get_STACKSIZE();
#define OrgApacheLuceneUtilTimSorter_STACKSIZE 49
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilTimSorter, STACKSIZE, jint)

inline jint OrgApacheLuceneUtilTimSorter_get_MIN_GALLOP();
#define OrgApacheLuceneUtilTimSorter_MIN_GALLOP 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilTimSorter, MIN_GALLOP, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilTimSorter_initWithInt_(OrgApacheLuceneUtilTimSorter *self, jint maxTempSlots);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilTimSorter_minRunWithInt_(jint length);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilTimSorter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilTimSorter")