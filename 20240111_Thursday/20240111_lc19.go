// Leetcode: 19. Remove Nth Node From End of List.
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 65.89% of Go online submissions for Remove Nth
// Node From End of List.
// Memory Usage: 2.2 MB, less than 18.43% of Go online submissions for Remove
// Nth Node From End of List.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

func removeNthFromEnd(head *ListNode, n int) *ListNode {
	tmp := head
	lst := make([]*ListNode, 0)
	for nil != tmp {
		lst = append(lst, tmp)
		tmp = tmp.Next
	}
	i := len(lst) - n
	if 0 == i {
		return lst[0].Next
	}
	lst[i-1].Next = lst[i].Next
	return lst[0]
}
