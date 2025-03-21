// Leetcode: 206. Reverse Linked List
// Accepted.
// Thanks God!

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
		return head
	}
	if nil == head.Next {
		return head
	}
	var a, b, c *ListNode
	a = nil
	b = head
	c = head.Next
	for nil != c {
		// Make a rotation.
		b.Next = a // Rotation
		a = b      // Move a pointer
		b = c      // Move b poiner
		c = c.Next // Move c poiner
	}
	b.Next = a
	return b
}
