// Leetcode: 2225. Find Players With Zero or One Losses.
// https://leetcode.com/problems/find-players-with-zero-or-one-losses/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 400 ms, faster than 79.45% of Go online submissions for Find Players With Zero or One Losses.
// Memory Usage: 23.6 MB, less than 43.84% of Go online submissions for Find Players With Zero or One Losses.
// 2022.11.28 Daily Challenge.
import "sort"
type data struct{
  n int
  w int
  l int
}
func findWinners(matches [][]int) [][]int {
  mp := make(map[int]*data)
  answer := make([][]int,2)
  answer[0] = make([]int,0)
  answer[1] = make([]int,0)
  for _,game := range matches {
    w := game[0]
    l := game[1]
    if _, ok := mp[w]; ! ok {
      mp[w] = &data{0,0,0}
    }
    if _, ok := mp[l]; ! ok {
      mp[l] = &data{0,0,0}
    }
    mp[w].n += 1
    mp[l].n += 1
    mp[w].w += 1
    mp[l].l += 1
  }
  for u,inf := range mp{
    if 0 < inf.n {
      if 0 == inf.l {
        answer[0] = append(answer[0],u)
      }
      if 1 == inf.l {
        answer[1] = append(answer[1],u)
      }
    }
  }
  sort.Ints(answer[0])
  sort.Ints(answer[1])
  return answer
}
