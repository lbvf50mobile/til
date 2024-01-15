// Leetcode: 19. Remove Nth Node From End of List.
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 66.13% of Go online submissions for Remove Nth
// Node From End of List.
// Memory Usage: 2.2 MB, less than 18.33% of Go online submissions for Remove
// Nth Node From End of List.
// 2024.01.15.

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
	for tmp != nil {
		size += 1
		tmp = tmp.Next
	}
	if n == size {
		return head.Next
	}
	// Number of steps to reach the node for deletion.
	delSteps := size - n
	del, before := head, head
	for i := 0; i < delSteps; i += 1 {
		before = del
		del = del.Next
	}
	before.Next = del.Next
	return head
}
