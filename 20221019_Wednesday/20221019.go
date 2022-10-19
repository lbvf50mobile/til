// Leetcode: 692. Top K Frequent Words.
// https://leetcode.com/problems/top-k-frequent-words/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 15 ms, faster than 29.79% of Go online submissions for Top K Frequent Words.
// Memory Usage: 4.3 MB, less than 97.02% of Go online submissions for Top K Frequent Words.
// 2022.10.19 Daily Challenge.
import "sort"
type Pair struct{
  Word string
  Amount int
}
func topKFrequent(words []string, k int) []string {
  // 1. Need to create a map.
  var counter map[string]int
  counter = make(map[string]int)

  // 2. Iterate over the map and fill it.
  for _,word := range words{
    counter[word] += 1
  }

  // 3. Convert map in slice of pairs.
  pairs := make([]Pair, len(counter))
  i := 0
  for word, count := range counter{
    pairs[i] = Pair{word,count}
    i += 1
  }

  // 4. Sort this array.
  sort.SliceStable(pairs,func(i,j int)bool{
    if pairs[i].Amount == pairs[j].Amount {
      return pairs[i].Word < pairs[j].Word
    } else {
      return pairs[i].Amount > pairs[j].Amount
    }
  })

  // 5. Fill answer array and return.
  answer := make([]string,k)
  for i := 0; i < k; i+=1{
    answer[i] = pairs[i].Word
  }
  return answer
    
}
