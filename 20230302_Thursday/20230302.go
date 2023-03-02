// Leetcode: 443. String Compression.
// https://leetcode.com/problems/string-compression/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 62.67% of Go online submissions for String Compression.
// Memory Usage: 2.9 MB, less than 16.00% of Go online submissions for String Compression.
// 2023.03.02 Daily Challenge.
import "strconv"
var w int
var a []byte
func compress(chars []byte) int {
  a = chars
  w = 0
  var prev, cur byte
  sym := a[0]
  cnt := 1
  for i := 1; i < len(a); i += 1 {
    prev, cur = a[i-1], a[i]
    if prev != cur {
      write(sym,cnt)
      sym = cur
      cnt = 1
    } else {
      cnt += 1
    }
  }
  write(sym,cnt)
  return w
}
func write(sym byte, cnt int){
  if 1 == cnt {
    a[w] = sym
    w += 1
    return
  }
  number := strconv.Itoa(cnt)
  str := string(sym) + number
  for _,char := range str {
    a[w] = byte(char)
    w += 1
  }
}
