// Leetcode: 836. Rectangle Overlap.
// https://leetcode.com/problems/rectangle-overlap/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 80.95% of Go online submissions for Rectangle
// Overlap.
// Memory Usage: 2 MB, less than 61.90% of Go online submissions for Rectangle
// Overlap.

package main

func isRectangleOverlap(rec1 []int, rec2 []int) bool {
	// The approach from the John L. Viescas's Boork.
	// SQL Queries from Mere Mortals.
	// Chapter6: Filtering Your Data.
	// Using Multiple Conditions.
	// Checking for Overlapping Ranges.
	// Page 255.

	// Working with X.
	// |------------------|
	//                      |-----------------|
	// Rec1 ends before rec2 starts.
	if rec1[2] <= rec2[0] {
		return false
	}
	//              |-----------------|
	// |----------|
	// Rec2 ends before rec1 starts.
	if rec2[2] <= rec1[0] {
		return false
	}
	// Working with Y.
	// Rec1 ends before rec2 starts.
	if rec1[3] <= rec2[1] {
		return false
	}
	// Rec2 ends before rec1 stars.
	if rec2[3] <= rec1[1] {
		return false
	}
	return true
}
