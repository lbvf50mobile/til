// Leetcode: 263. Ugly Number.
// https://leetcode.com/problems/ugly-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Ugly Number.
// Memory Usage: 2.1 MB, less than 73.13% of Go online submissions for Ugly Number.
// 2022.11.18 Daily Challenge.
func isUgly(n int) bool {
  if 0 >= n {
    return false
  }
  n = div_till(n,2)
  n = div_till(n,3)
  n = div_till(n,5)
  return 1 == n
}

func div_till(dv,dz int) int {
  for ; 0 == dv % dz ; {
    dv /= dz
  }
  return dv
}
