// Leetcode: 38. Count and Say.
// https://leetcode.com/problems/count-and-say/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 17 ms, faster than 38.12% of Go online submissions for Count and Say.
// Memory Usage: 7.6 MB, less than 53.59% of Go online submissions for Count and Say.
// 2022.10.18 Daily Challenge.
import "strconv"
func countAndSay(n int) string {
  if 1 == n { return "1"}
  if 2 == n { return "11"}
  if 3 == n { return "21"}
  if 4 == n { return "1211"}
  prev := countAndSay(n - 1)
  answer := ""
  counter := 1
  for i := 1; i < len(prev); i += 1 {
    if prev[i-1] == prev[i] {
      counter += 1
    } else {
      answer += strconv.Itoa(counter) + string(prev[i-1])
      counter = 1
    }
  }
  answer += strconv.Itoa(counter) + string(prev[len(prev)-1])
  return answer
}
