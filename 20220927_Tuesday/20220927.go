// Leetcode: 838. Push Dominoes.
// https://leetcode.com/problems/push-dominoes/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 33 ms, faster than 41.67% of Go online submissions for Push Dominoes.
// Memory Usage: 7.2 MB, less than 83.33% of Go online submissions for Push Dominoes.
func pushDominoes(dominoes string) string {
  ans := make([]rune,len(dominoes))
  do := []rune(dominoes)
  for i:=0; i < len(do); i+=1{
    if 0 != ans[i] {continue}
    val := do[i]
    if '.' == val{
      c,j := find_r(i+1,do)
      if 'E' == c { 
        color(i,j,'.',ans)
      } else if 'L' == c { 
        color(i,j,'L',ans)
      } else if 'R' == c { 
        color(i,j-1,'.',ans)
      }
    } else if 'L' == val {
      ans[i] = 'L'
    } else if 'R' == val{
      c,j := find_r(i+1,do)
      if 'E' == c { 
        color(i,j,'R',ans)
      } else if 'L' == c { 
        color_half(i,j,ans)
      } else if 'R' == c { 
        color(i,j-1,'R',ans)
      }
    }
  }
  return string(ans)
}

func find_r(i int,do []rune)(int,int){
  for j := i; j < len(do); j+=1{
    if 'L' == do[j] || 'R' == do[j]{
      return int(do[j]), j
    }
  }
  return 'E', len(do)-1
}

func color(i int, j int, val int, ans []rune){
  for k := i; k <= j; k+=1{
    ans[k] = rune(val); // Fixed an amazing error! Here was [i] instead of [k]!
  }
}
func color_half(i int, j int, ans []rune){
  l := j - i + 1
  half := l/2
  for k := i; k < i+half; k+=1 { ans[k] = 'R'}
  if 0 == l%2{
    for k := i+half; k <= j; k+=1 { ans[k] = 'L'}
  }else{
    for k := i+half+1; k <= j; k+=1 { ans[k] = 'L'}
    ans[half+i] = '.'
  }
}
