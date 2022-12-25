// Leetcode: 2391. Longest Subsequence With Limited Sum.
// https://leetcode.com/problems/longest-subsequence-with-limited-sum/
// Fails.
// [624082]
// [972985,564269,607119,693641,787608,46517,500857,140097]
import "sort"
import "fmt"
var p = fmt.Println
func answerQueries(nums []int, queries []int) []int {
  //p(nums,"nums")
  n,m := len(nums), len(queries)
  answer := make([]int,m)
  sort.Ints(nums)
  //p(nums, "nums after sort")
  ps := make([]int,n)
  ps[0] = nums[0]
  for i := 1 ; i < n ; i += 1 {
    ps[i] = ps[i-1] + nums[i]
  }
  //p(ps, "prefix sum")
  // Sort querised indices by values increasing.
  qi := make([]int,m)
  for i := 0 ; i < m; i += 1 {
    qi[i] = i
  }
  //p(queries,"queries")
  //p(qi, "q indices")
  sort.SliceStable(qi,func(i, j int) bool {
    return queries[qi[i]] < queries[qi[j]]
  })
  //p(qi, "q sorted")
  j := 0
  for _, i := range qi {
    v := queries[i]
    //p(v, "value")
    // Fixed error: v <= ps[j]; must be ps[j] <= v;
    for ; j < n &&  ps[j] <= v ; j += 1 {}
    //p(j, "j")
    j -= 1
    answer[i] = j + 1
    if -1 == j { j = 1}
  }
  return answer
}
