// Leetcode: 904. Fruit Into Baskets.
// https://leetcode.com/problems/fruit-into-baskets/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 139 ms, faster than 38.71% of Go online submissions for Fruit Into Baskets.
// Memory Usage: 9.4 MB, less than 7.53% of Go online submissions for Fruit Into Baskets.
// 2023.02.07 Daily Challenge.
func totalFruit(fruits []int) int {
  f := fruits
  if 1 == len(f) {
    return 1
  }
  cntr := make(map[int]int)
  max, i, j, n := 0, 0, 1, len(f)
  total := 1
  cntr[f[0]] = 1
  for i < n {
    // Update max.
    if total <= 2 && max < (j-i) {
      max = j-i
      
    }
    // Extend.
    if total <= 2 && j < n {
      cntr[f[j]] += 1
      if 1 == cntr[f[j]] {
        total += 1
      }
      j += 1
      continue
    }
    // Shrink.
    if total > 2 || j == n {
      cntr[f[i]] -= 1
      if 0 == cntr[f[i]] {
        total -= 1
      }
      i += 1
      continue
    }
  }
  return max
}
