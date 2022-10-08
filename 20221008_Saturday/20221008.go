// Leetcode: 16. 3Sum Closest.
// https://leetcode.com/problems/3sum-closest/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 95 ms, faster than 53.85% of Go online submissions for 3Sum Closest.
// Memory Usage: 5.8 MB, less than 34.96% of Go online submissions for 3Sum Closest.
// Daily Contest of 2022.10.08 Saturday;
import "sort"
func abs_diff(a int, b int) int{
  answer := a - b
  if answer >= 0 {
    return answer
  } else {
    return - answer
  }
}
func threeSumClosest(nums []int, target int) int {
  // The algorithm from:
  // https://leetcode.com/problems/3sum-closest/discuss/7871/Python-O(N2)-solution
  sort.Ints(nums)
  answer := nums[0] + nums[1] + nums[2]
  answer_abs := abs_diff(target, answer)
  for i:=0; i < (len(nums) - 2); i += 1{
    j,k := i+1, (len(nums) - 1)
    for ; j < k ; {
      // Need to calculate sum into the second loop.
      // Fixed.
      sum := nums[i] + nums[j] + nums[k]
      sum_abs := abs_diff(target, sum)
      if sum == target{
        return sum
      }
      if sum_abs < answer_abs {
        answer_abs = sum_abs
        answer = sum
      }
      if sum < target{
        j += 1
      } else {
        k -= 1
      }
    }
  }
  return answer
}

