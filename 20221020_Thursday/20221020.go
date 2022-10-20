// Leetcode: 12. Integer to Roman.
// https://leetcode.com/problems/integer-to-roman/
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 72.72% of Go online submissions for Integer to Roman.
// Memory Usage: 3.2 MB, less than 70.40% of Go online submissions for Integer to Roman.
// 2022.10.20 Daily Challange.
type Val_str struct{
  Val int
  Str string
}
func intToRoman(num int) string {
  answer := ""
  values := []Val_str{
    Val_str{1000, "M"},
    Val_str{900, "CM"},
    Val_str{500, "D"},
    Val_str{400, "CD"},
    Val_str{100, "C"},
    Val_str{90, "XC"},
    Val_str{50, "L"},
    Val_str{40, "XL"},
    Val_str{10, "X"},
    Val_str{9, "IX"},
    Val_str{5, "V"},
    Val_str{4, "IV"},
    Val_str{1,"I"},
  }
  for ; num > 0; {
    for _,pair := range values {
      if pair.Val <= num {
        num -= pair.Val
        answer += pair.Str
        break
      } else {
        continue
      }
    }
  }
  return answer
}
