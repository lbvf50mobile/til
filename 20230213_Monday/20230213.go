// Leetcode: 1523. Count Odd Numbers in an Interval Range.
// https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Count Odd Numbers in an Interval Range.
// Memory Usage: 1.9 MB, less than 55.20% of Go online submissions for Count Odd Numbers in an Interval Range.
// 2023.02.13 Daily Challenge.
func countOdds(low int, high int) int {
  size := high - low + 1
  if 0 == low%2 {
    // 10 - 8 + 1 = 3; 3-1 = 2; 2/2 = 1;
    if 0 != size%2 {
      size -= 1
    }
  }else{
    // 7-3+1 = 5; 5+1 = 6; 6/2 = 3;
    if 0 !=  size%2{
      size += 1
    }
  }
  return size/2;
}
