// Leetcode: 19. Remove Nth Node From End of List.
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 64.91% of Go online submissions for Remove Nth
// Node From End of List.
// Memory Usage: 2.2 MB, less than 18.12% of Go online submissions for Remove
// Nth Node From End of List.
// 2024.01.23.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func removeNthFromEnd(head *ListNode, n int) *ListNode {
	size := 0
	tmp := head
	for nil != tmp {
		size += 1
		tmp = tmp.Next
	}
	// I am stating on 1.
	// To reach two I need (2-1) steps.
	// If there are size elements, last one (size-1) steps.
	// If n == size, just call next.
	if n == size {
		return head.Next
	}
	// Need to reach parent of (size-1) it going to be (size-2)
	// Need to reach parent of (size-n) need to implement (size-1-n) steps.
	steps := size - 1 - n
	tmp = head
	for i := 0; i < steps; i += 1 {
		tmp = tmp.Next
	}
	del := tmp.Next
	tmp.Next = del.Next
	del.Next = nil
	return head
}
