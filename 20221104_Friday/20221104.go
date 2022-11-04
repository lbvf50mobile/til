// Leetcode: 345. Reverse Vowels of a String.
// https://leetcode.com/problems/reverse-vowels-of-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 20 ms, faster than 15.91% of Go online submissions for Reverse Vowels of a String.
// Memory Usage: 6.7 MB, less than 12.88% of Go online submissions for Reverse Vowels of a String.
// 2022.11.04 Daily Challenge.
import "strings"
func reverseVowels(s string) string {
  indices,chars := make([]int,len(s)), make([]byte,len(s))
  se := strings.Split(s,"")
  counter := 0
  for i := 0; i < len(s); i+=1 {
    if isVowel(s[i]){
      indices[counter] = i
      chars[counter] = s[i]
      counter += 1
    }
  }
  for i,j := 0, counter - 1; i < j; {
    chars[i],chars[j] = chars[j],chars[i]
    i += 1
    j -= 1
  }
  for i := 0; i < counter; i += 1{
    se[indices[i]] = string(chars[i])
  }
  return strings.Join(se,"")
}

func isVowel(x byte) bool {
  switch x {
  case 'a':
    return true;
  case 'e':
    return true;
  case 'i':
    return true;
  case 'o':
    return true;
  case 'u':
    return true;
  case 'A':
    return true;
  case 'E':
    return true;
  case 'I':
    return true;
  case 'O':
    return true;
  case 'U':
    return true;
  default:
    return false
  }
}
