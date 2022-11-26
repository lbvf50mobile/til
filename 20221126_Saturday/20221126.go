// Leetcode: 83. Remove Duplicates from Sorted List.
// https://leetcode.com/problems/remove-duplicates-from-sorted-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 78.48% of Go online submissions for Remove Duplicates from Sorted List.
// Memory Usage: 3.1 MB, less than 42.01% of Go online submissions for Remove Duplicates from Sorted List.
// 2022.11.27 Sunday.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteDuplicates(head *ListNode) *ListNode {
  if  nil == head {
    return head
  }
  prev := head
  tmp := head.Next
  for ; tmp != nil ; {
    if tmp.Val == prev.Val {
      prev.Next = tmp.Next
    } else {
      prev = tmp
    }
    tmp = tmp.Next 
  }
  return head
}
