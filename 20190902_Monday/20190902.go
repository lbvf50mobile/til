// Go: rune, int64, int, var x1 int64 = int64(x), stronv.Itoa();

// https://leetcode.com/problems/palindrome-number/submissions/
// https://golang.org/pkg/strconv/
func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
	  runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
  }
  func isPalindrome(x int) bool {
	  return strconv.Itoa(x) == reverse(strconv.Itoa(x))
  }
  // -----------------
  func isPalindrome(x int) bool {
	  if( 0 > x) {
		  return false
	  }
	  var y int64 = 0
	  var x1 int64 = int64(x)
	  for(x1 > 0){
		  y = y*10 + x1%10
		  x1 = x1/10
	  }
	  return y == int64(x)
  }