// Leetcode: 739. Daily Temperatures.
// https://leetcode.com/problems/daily-temperatures/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 174 ms, faster than 85.39% of Go online submissions for Daily Temperatures.
// Memory Usage: 13.4 MB, less than 17.15% of Go online submissions for Daily Temperatures
// 2022.12.18 Daily Challenge.
func dailyTemperatures(temperatures []int) []int {
  t := temperatures
  // s - stack of values.
  // si - stack of indices.
  s,si := make([]int,0), make([]int,0)
  // Need to build Decreasing Monotonic Stack.
  // On Every Pop write index difference in the answer.
  answer := make([]int, len(t))
  for i,v := range t {
    // Fixed error. Was 'if' istead of 'for'.
    for 0 != len(s) && s[len(s)-1] < v {
      j := si[len(si)-1]
      answer[j] = i - j
      s = s[:len(s)-1]
      si = si[:len(si)-1]
    }
    s = append(s,v)
    si = append(si,i)
  }
  return answer
}
