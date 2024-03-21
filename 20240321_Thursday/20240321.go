// Leetcode: 206. Reverse Linked List.
// https://leetcode.com/problems/reverse-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Reverse
// Linked List.
// Memory Usage: 2.7 MB, less than 21.41% of Go online submissions for Reverse
// Linked List.
// 2024.03.21 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func reverseList(head *ListNode) *ListNode {
	if nil == head {
		return nil
	}
	var prev, a, b *ListNode
	for nil != head.Next {
		a = head
		b = head.Next
		a.Next = prev
		prev = a
		head = b
	}
	head.Next = prev
	return head
}
