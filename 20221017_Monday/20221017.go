// Leetcode: 1832. Check if the Sentence Is Pangram.
// https://leetcode.com/problems/check-if-the-sentence-is-pangram/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 50.98% of Go online submissions for Check if the Sentence Is Pangram.
// Memory Usage: 2.1 MB, less than 87.25% of Go online submissions for Check if the Sentence Is Pangram.
// 2022.10.17 Daily Challenge.
func checkIfPangram(sentence string) bool {
  counter := make([]int,26)
  for _,char := range(sentence){
    counter[int8(char) - 97] += 1
  }
  for i := 0; i < len(counter); i +=1 {
    if counter[i] < 1 {
      return false 
    }
  }
  return true
}
