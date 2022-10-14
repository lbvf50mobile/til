// Leetcode: 2095. Delete the Middle Node of a Linked List.
// https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 342 ms, faster than 87.36% of Go online submissions for Delete the Middle Node of a Linked List.
// Memory Usage: 12.1 MB, less than 28.74% of Go online submissions for Delete the Middle Node of a Linked List.
// 2022.10.14 Daily Callenge.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteMiddle(head *ListNode) *ListNode {
  count := 0
  tmp := head
  for ; nil != tmp ; {
    count += 1
    tmp = tmp.Next
  }
  if 1 == count {
    return nil
  }
  if 2 == count {
    head.Next = nil
    return head
  }
  place := (count/2) - 1
  tmp = head
  for i := 0; i <= place; i += 1{
    if i == place {
      tmp.Next = tmp.Next.Next
    } else {
      tmp = tmp.Next
    }
  }
  return head
}
