// Leetcode: 876. Middle of the Linked List.
// https://leetcode.com/problems/middle-of-the-linked-list/
// = = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Middle of
// the Linked List.
// Memory Usage: 2.1 MB, less than 77.65% of Go online submissions for Middle
// of the Linked List.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

func middleNode(head *ListNode) *ListNode {
	// One step and two steps.
	// When two steps reach the end, one step is on the middle.
	one, two := head, head
	for two != nil && two.Next != nil {
		one = one.Next
		two = two.Next.Next
	}
	return one
}
