// Leetcode: 876. Middle of the Linked List.
// https://leetcode.com/problems/middle-of-the-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Middle of
// the Linked List.
// Memory Usage: 2.1 MB, less than 76.86% of Go online submissions for Middle
// of the Linked List.
// 2024.03.07 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func middleNode(head *ListNode) *ListNode {
	if nil == head {
		return head
	}
	if nil == head.Next {
		return head
	}
	a, b := head, head.Next
	for a != nil && b != nil {
		a = a.Next
		if nil != b.Next {
			b = b.Next
		}
		b = b.Next
	}
	return a
}
