// Leetcode: 21. Merge Two Sorted Lists.
// https://leetcode.com/problems/merge-two-sorted-lists/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 59.16% of Go online submissions for Merge Two Sorted Lists.
// Memory Usage: 2.5 MB, less than 51.54% of Go online submissions for Merge Two Sorted Lists.
// 2022.10.16;
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeTwoLists(list1 *ListNode, list2 *ListNode) *ListNode {
  var head *ListNode
  var tmp *ListNode
  if nil != list1 && nil != list2 {
    if list1.Val < list2.Val{
      head = list1
      list1 = list1.Next
    } else {
      head = list2
      list2 = list2.Next
    }
    tmp = head
    head.Next = nil
  } else if nil == list1 {
    return list2
  } else {
    return list1
  }
  for ; nil != list1 && nil != list2 ; {
    if list1.Val < list2.Val{
      tmp.Next = list1
      list1 = list1.Next
    } else {
      tmp.Next = list2
      list2 = list2.Next
    }
    tmp = tmp.Next
    tmp.Next = nil
  }
  if nil == list1 {
    tmp.Next = list2
  } else {
    tmp.Next = list1
  }
  return head
}
