// Leetcode: 1491. Average Salary Excluding the Minimum and Maximum Salary.
// https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 68.66% of Go online submissions for Average Salary
// Excluding the Minimum and Maximum Salary.
// Memory Usage: 2 MB, less than 99.00% of Go online submissions for Average
// Salary Excluding the Minimum and Maximum Salary.
// 2023.05.01 Daily Challenge.
package main

func average(salary []int) float64 {
  min, max, sum := minMaxSum(salary)
  return float64(sum - min - max)/float64(len(salary)-2)
}

func minMaxSum(arr []int) (int,int,int){
  min, max, sum := arr[0], arr[0], 0
  for _,v := range arr {
    if min > v {
      min = v
    }
    if max < v {
      max = v
    }
    sum += v
  }
  return min, max, sum
}
