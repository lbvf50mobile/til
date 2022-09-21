// Leetcode: 985. Sum of Even Numbers After Queries.
// https://leetcode.com/problems/sum-of-even-numbers-after-queries/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = = 
// Runtime: 180 ms, faster than 50.00% of Go online submissions for Sum of Even Numbers After Queries.
// Memory Usage: 8.8 MB, less than 7.14% of Go online submissions for Sum of Even Numbers After Queries
func sumEvenAfterQueries(nums []int, queries [][]int) []int {
  var answer []int  
  total := 0
  // Iterate over nums and get sum of even values.
  for _, val := range nums {
    if 0 == val%2 {
      total += val
    }
  }
  // Iterate over quereis.
  var  value, index int
  for _, pair := range queries {
    value, index = pair[0], pair[1]
    if 0 == nums[index]%2 {
      total -= nums[index]
    }
    nums[index] += value
    if 0 == nums[index]%2 {
      total += nums[index]
    }
    answer = append(answer, total)
  }
  return answer
}
