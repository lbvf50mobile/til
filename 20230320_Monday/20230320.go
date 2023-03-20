// Leetcode: 605. Can Place Flowers.
// https://leetcode.com/problems/can-place-flowers/
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 69.17% of Go online submissions for Can Place Flowers.
// Memory Usage: 6.2 MB, less than 50.83% of Go online submissions for Can Place Flowers.
// 2023.03.20 Daily Challenge.
func canPlaceFlowers(flowerbed []int, n int) bool {
  // Important. Always true when no need to plant.
  if 0 == n {
    return true
  }
  f := flowerbed
  size := len(f)
  counter := 0
  l,r := false, false
  for i := 0; i < size; i += 1 {
    if 1 == f[i] { continue }
    l = (0 == i) || 0 == f[i-1]
    r = (size - 1 == i) || 0 == f[i+1]
    if l && r {
      counter += 1
      f[i] = 1
    }
    // More secure to check every time.
    if n <= counter { return true}
  }
  return false
}
