// Leetcode: 2244. Minimum Rounds to Complete All Tasks.
// https://leetcode.com/problems/minimum-rounds-to-complete-all-tasks/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 357 ms, faster than 45.07% of Go online submissions for Minimum Rounds to Complete All Tasks.
// Memory Usage: 10.1 MB, less than 26.76% of Go online submissions for Minimum Rounds to Complete All Tasks.
// 2023.01.04 Daily Challenge.
func minimumRounds(tasks []int) int {
  h :=make(map[int]int)
  counter := 0
  for _,v := range tasks {
    h[v] += 1
  }
  for _,v := range h {
    if 1 == v { return -1 }
    counter += v/3
    if 0 != v % 3 { counter += 1 }
  }
  return counter
}
