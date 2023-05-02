// Leetcode: 1822. Sign of the Product of an Array.
// https://leetcode.com/problems/sign-of-the-product-of-an-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 7 ms, faster than 50.47% of Go online submissions for Sign of the
// Product of an Array.
// Memory Usage: 3.3 MB, less than 98.13% of Go online submissions for Sign of
// the Product of an Array.
// 2023.05.02 Daily Challenge.
package main

func arraySign(nums []int) int {
  pr := 1
  for _, v := range nums {
    x := 1
    if v < 0 {
      x = -1
    } else if 0 == v {
      x = 0
    } else {
      x = 1
    }
    pr *= x
  }
  return pr
}
