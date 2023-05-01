// Leetcode: 1491. Average Salary Excluding the Minimum and Maximum Salary.
// https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/
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
