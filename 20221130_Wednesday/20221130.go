// Leetcode: 1207. Unique Number of Occurrences.
// https://leetcode.com/problems/unique-number-of-occurrences/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Unique Number of Occurrences.
// Memory Usage: 2.3 MB, less than 95.10% of Go online submissions for Unique Number of Occurrences.
// 2022.11.30 Daily Challenge.
func uniqueOccurrences(arr []int) bool {
  // Range from -1000 to 1000;
  // - 1000 + 1000 = 0;
  // 1000 + 1000 = 2000;
  // There are must be 2001 elements from 0 till 2000.
  counter := make([]int, 2001)
  for _, v := range arr {
    counter[v + 1000] += 1
  }
  visited := make(map[int]bool)
  for _, v := range counter {
    if 0 == v { continue;}
    if _, ok := visited[v]; ok { return false }
    visited[v] = true
  }
  return true
}
