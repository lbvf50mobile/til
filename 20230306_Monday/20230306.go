// Leetcode: 1539. Kth Missing Positive Number.
// https://leetcode.com/problems/kth-missing-positive-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Kth Missing Positive Number.
// Memory Usage: 2.9 MB, less than 18.18% of Go online submissions for Kth Missing Positive Number.
// 2023.03.06 Daily Challenge.
func findKthPositive(arr []int, k int) int {
  lst,cnt := 0, 0 // Last and counter variables.
  for _,x := range arr {
    msd := x - lst - 1 // Amount of missed elements.
    // Explore new gap between two elements.
    if 0 != msd {
      ncnt := cnt + msd // New counter.
      // k-th element is in this gap.
      if k <= ncnt {
        return lst + (k - cnt)
      }
      cnt = ncnt
    }
    lst = x
  }
  return lst  + (k - cnt)
}
