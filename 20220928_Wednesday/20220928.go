// Leetcode: 19. Remove Nth Node From End of List.
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms, faster than 8.33% of Go online submissions for Remove Nth Node From End of List.
// Memory Usage: 2.3 MB, less than 31.13% of Go online submissions for Remove Nth Node From End of List.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func removeNthFromEnd(head *ListNode, n int) *ListNode {
  nodes := make([] *ListNode,0)
  tmp := head
  for ; nil != tmp; {
    nodes = append(nodes,tmp)
    // https://stackoverflow.com/a/60469920/8574922
    tmp = tmp.Next
  }
  nodes = append(nodes,nil)
  i := len(nodes) - n - 1
  if 0 == i{
    return nodes[1]
  }
  // https://stackoverflow.com/a/60469920/8574922
  nodes[i-1].Next = nodes[i+1]
  return head
}
