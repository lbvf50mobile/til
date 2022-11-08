// Leetcode: 1544. Make The String Great.
// https://leetcode.com/problems/make-the-string-great/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Make The String Great.
// Memory Usage: 2.3 MB, less than 40.43% of Go online submissions for Make The String Great.
// 2022.11.08 Daily Challenge.
func makeGood(s string) string {
  for ; ; {
    start_len := len(s)
    end_len := len(s)
    dm := make([]bool, start_len) // delete mask.
    // Find pairs for delete.
    for i := 1; i < start_len; i+=1 {
      if !dm[i-1] { // Previous is not mark as deleted.
        diff := int(s[i]) - int(s[i-1])
        if 32 == diff || -32 == diff {
          dm[i] = true
          dm[i-1] = true
          end_len -= 2
        }
      }
    }
    // Return if there are no pairs for delete.
    if start_len == end_len {
      return s
    }
    // Create a new string.
    ns := make([]byte, end_len)
    j := 0
    for i := 0; i < start_len; i+=1{
      if !dm[i] {
        ns[j] = s[i]
        j += 1
      }
    }
    // Substiute string.
    s = string(ns)
  }
}
