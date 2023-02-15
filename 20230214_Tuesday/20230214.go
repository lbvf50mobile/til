// Leetcode: 67. Add Binary.
// https://leetcode.com/problems/add-binary/
import "strconv"
func addBinary(a string, b string) string {
  ai, _ := strconv.ParseUint(a,2,64)
  bi, _ := strconv.ParseUint(b,2,64)
  return strconv.FormatInt( int64(ai) + int64(bi) ,2)
}
