// Leetcode: 1239. Maximum Length of a Concatenated String with Unique Characters.
// https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Maximum Length of a Concatenated String with Unique Characters.
// Memory Usage: 2.3 MB, less than 68.42% of Go online submissions for Maximum Length of a Concatenated String with Unique Characters.
var max int
var a *[]string // I suppose it could be solved without a pointer. Just by a slice.
var masks *[]int
var lens *[]int
func maxLength(arr []string) int {
  max = 0
  // Filter uniq.
  tmp := make([]string,0)
  for _,str := range arr{
    if uniq(str){
      tmp = append(tmp,str)
    }
  }
  a = &tmp
  tmp_masks := make([]int,len(*a))
  tmp_lens := make([]int,len(*a))
  for i,str := range *a {
    tmp_masks[i] = get_mask(str) 
    tmp_lens[i] = len(str)
  }
  masks = &tmp_masks
  lens = &tmp_lens
  for i:=0; i < len(*a); i+=1{
    dfs(i,0,0)
  }

  return max
}
func dfs(i int, total_mask int, total_len int){
  m,l := *masks, *lens
  total_mask |= m[i]
  total_len += l[i]
  if max < total_len {
    max = total_len
  }
  for j:= i+1; j < len(*a); j += 1{
    if 0 == (total_mask & m[j]){
      dfs(j, total_mask, total_len)
    }
  }
}

func uniq(str string) bool{
  counter := make(map[rune]int)
  for _,ch := range str {
    counter[ch] += 1
    if 2 == counter[ch] {
      return false
    }
  }
  return true
}
func get_mask(str string) int{
  mask := 0
  for _,ch := range str{
    mask = mask | (1 << (ch - 97))
  }
  return mask
}
