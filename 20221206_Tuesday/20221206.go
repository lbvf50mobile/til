//  Leetcode: 328. Odd Even Linked List.
//  https://leetcode.com/problems/odd-even-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 92.67% of Go online submissions for Odd Even Linked List.
// Memory Usage: 3.3 MB, less than 75.46% of Go online submissions for Odd Even Linked List.
// 2022.12.06 Daily Challenge.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func oddEvenList(head *ListNode) *ListNode {
  if nil == head { return head}
  odd := &ListNode{}
  even := &ListNode{}
  ot,et,tmp := odd, even, head
  for i := 1; nil != tmp ; i, tmp = i + 1, tmp.Next {
    if 1 == i%2 {
      ot.Next = tmp
      ot = tmp
    }else{
      et.Next = tmp
      et = tmp
    }
  }
  ot.Next, et.Next = nil, nil
  if nil != odd.Next {
    ot.Next = even.Next
  
  }
  return odd.Next
}

