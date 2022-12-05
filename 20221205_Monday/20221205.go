// Leetcode: 876. Middle of the Linked List.
// https://leetcode.com/problems/middle-of-the-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 55.73% of Go online submissions for Middle of the Linked List.
// Memory Usage: 1.9 MB, less than 80.63% of Go online submissions for Middle of the Linked List.
// 2022.12.05 Daily Challenge.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func middleNode(head *ListNode) *ListNode {
  if nil == head { return head}
  arr := make([] * ListNode,100)
  n := 0
  tmp := head
  for nil != tmp {
    arr[n] = tmp
    tmp = tmp.Next
    n += 1
  }
  return arr[n/2]
}
