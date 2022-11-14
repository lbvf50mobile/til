// Leetcode: 947. Most Stones Removed with Same Row or Column.
// https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 43 ms, faster than 65.08% of Go online submissions for Most Stones Removed with Same Row or Column.
// Memory Usage: 7.3 MB, less than 46.03% of Go online submissions for Most Stones Removed with Same Row or Column.
// 2022.11.14 Daily Challenge.
var isl int // islands.
var f map[int]int // For union find.
func removeStones(stones [][]int) int {
  // Based on:
  // https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/discuss/197668/Count-the-Number-of-Islands-O(N)
  isl = 0
  f = make(map[int]int)
  for _, el := range stones {
    x,y := el[0],el[1]
    uni(x,-(1+y))
  }
  return len(stones) - isl
}

func find(x int) int {
  if _, ok := f[x]; ! ok {
    f[x] = x
    isl += 1
  }
  if x != f[x] {
    f[x] = find(f[x])
  }
  return f[x]
}

func uni(x int, y int) {
  x = find(x)
  y = find(y)
  if x != y {
    f[x] = y
    isl -= 1
  }
}

