// Leetcode: 944. Delete Columns to Make Sorted.
// https://leetcode.com/problems/delete-columns-to-make-sorted/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 24 ms, faster than 46.15% of Go online submissions for Delete Columns to Make Sorted.
// Memory Usage: 6.8 MB, less than 20.51% of Go online submissions for Delete Columns to Make Sorted
// 2023.01.03 Daily Challenge.
var m,n int
var s []string
func minDeletionSize(strs []string) int {
  s = strs
  m = len(strs)
  n = len(strs[0])
  count := 0 // Count of the unsorted columns.
  // Iterate over each column.
  for j := 0; j < n ; j += 1 {
    if ! sorted(j) { count += 1 }
  }
  return count
}
func sorted(j int) bool {
  // Iterate over rows startign from one.
  for i := 1; i < m; i += 1{
    if s[i-1][j] > s[i][j] { return false }
  }
  return true
}

