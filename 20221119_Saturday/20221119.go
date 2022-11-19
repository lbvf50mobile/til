// Leetcode: 141. Linked List Cycle.
// https://leetcode.com/problems/linked-list-cycle/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 19 ms, faster than 31.86% of Go online submissions for Linked List Cycle.
// Memory Usage: 6.7 MB, less than 5.03% of Go online submissions for Linked List Cycle.
// 2022.11.20 Sunday.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func hasCycle(head *ListNode) bool {
  var mp = make(map[*ListNode]int)
  tmp := head
  for ; tmp != nil ; {
    if _,ok := mp[tmp]; ok {
      return true
    } else {
      mp[tmp] = 1
    }
    tmp = tmp.Next
  }
  return false
}
