// Leetcode: 49. Group Anagrams.
// https://leetcode.com/problems/group-anagrams/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 74 ms, faster than 16.18% of Go online submissions for Group Anagrams.
// Memory Usage: 9.5 MB, less than 9.79% of Go online submissions for Group Anagrams.
// 2022.10.28 Daily Challenge.
import "strings"
import "strconv"
func groupAnagrams(strs []string) [][]string {
  hash := make(map[string][]string)
  for _, str := range strs{
    key := get_key(str)
    arr, exists := hash[key]
    if ! exists {
      hash[key] = make([]string,0)
    }
    hash[key] = append(arr,str)
  }
  answer := make ([][]string,0)
  for _, val := range hash {
    answer = append(answer, val)
  }
  return answer
}

func get_key(str string) string{
  counter := make([]int,26)
  for _,char := range str {
    counter[int(char) - 97] += 1
  }
  answer := make([]string,len(counter))
  for i, number := range counter{
    answer[i] = strconv.Itoa(number)
  }
  return strings.Join(answer,".")
}
