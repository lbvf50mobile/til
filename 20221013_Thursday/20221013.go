// Leetcode: 237. Delete Node in a Linked List.
// https://leetcode.com/problems/delete-node-in-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 41.86% of Go online submissions for Delete Node in a Linked List.
// Memory Usage: 2.9 MB, less than 67.73% of Go online submissions for Delete Node in a Linked List.
// 2022.10.13 Daily Challenge.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteNode(node *ListNode) {
  var prev *ListNode
  prev = nil
  for ; node.Next != nil ; {
    node.Val = node.Next.Val
    prev = node
    node = node.Next
  }
  prev.Next = nil
}
