//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/LeafCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchLeafCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchLeafCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchLeafCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchLeafCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchLeafCollector

#if !defined (OrgApacheLuceneSearchLeafCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchLeafCollector || defined(INCLUDE_OrgApacheLuceneSearchLeafCollector))
#define OrgApacheLuceneSearchLeafCollector_

@class OrgApacheLuceneSearchScorer;

/*!
 @brief <p>Collector decouples the score from the collected doc:
 the score computation is skipped entirely if it's not
 needed.
 Collectors that do need the score should
 implement the <code>setScorer</code> method, to hold onto the
 passed <code>Scorer</code> instance, and call <code>Scorer.score()</code>
  within the collect method to compute the
 current hit's score.  If your collector may request the
 score for a single hit multiple times, you should use
 <code>ScoreCachingWrappingScorer</code>. </p>
 <p><b>NOTE:</b> The doc that is passed to the collect
 method is relative to the current reader. If your
 collector needs to resolve this to the docID space of the
 Multi*Reader, you must re-base it by recording the
 docBase from the most recent setNextReader call.  Here's
 a simple example showing how to collect docIDs into a
 BitSet:</p>
 <pre class="prettyprint">
 IndexSearcher searcher = new IndexSearcher(indexReader);
 final BitSet bits = new BitSet(indexReader.maxDoc());
 searcher.search(query, new Collector() {
 public LeafCollector getLeafCollector(LeafReaderContext context)
 throws IOException {
 final int docBase = context.docBase;
 return new LeafCollector() {
 <em>// ignore scorer</em>
 public void setScorer(Scorer scorer) throws IOException {
 }
 public void collect(int doc) throws IOException {
 bits.set(docBase + doc);
 }
 };
 }
 });
 
@endcode
 <p>Not all collectors will need to rebase the docID.  For
 example, a collector that simply counts the total number
 of hits would skip it.</p>
 */
@protocol OrgApacheLuceneSearchLeafCollector < NSObject, JavaObject >

/*!
 @brief Called before successive calls to <code>collect(int)</code>.
 Implementations
 that need the score of the current document (passed-in to
 <code>collect(int)</code>), should save the passed-in Scorer and call
 scorer.score() when needed.
 */
- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

/*!
 @brief Called once for every document matching a query, with the unbased document
 number.
 <p>Note: The collection of the current segment can be terminated by throwing
 a <code>CollectionTerminatedException</code>. In this case, the last docs of the
 current <code>org.apache.lucene.index.LeafReaderContext</code> will be skipped and <code>IndexSearcher</code>
 will swallow the exception and continue collection with the next leaf.
 <p>
 Note: This is called in an inner search loop. For good search performance,
 implementations of this method should not call <code>IndexSearcher.doc(int)</code> or
 <code>org.apache.lucene.index.IndexReader.document(int)</code> on every hit.
 Doing so can slow searches by an order of magnitude or more.
 */
- (void)collectWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchLeafCollector)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchLeafCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchLeafCollector")