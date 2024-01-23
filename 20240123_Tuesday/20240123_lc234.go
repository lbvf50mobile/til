// Leetcode: 237. Delete Node in a Linked List.
// https://leetcode.com/problems/delete-node-in-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 72.36% of Go online submissions for Delete Node
// in a Linked List.
// Memory Usage: 2.8 MB, less than 100.00% of Go online submissions for Delete
// Node in a Linked List.
// 2024.01.23.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteNode(node *ListNode) {
	// Delete next.
	// copy data from the next to curr.
	// Delete next.
	curr := node
	next := curr.Next
	curr.Val = next.Val
	curr.Next = next.Next
	next.Next = nil // To aviod memory leaks. Any chances.
}
