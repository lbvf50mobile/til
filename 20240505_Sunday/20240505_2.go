// Leetcode: 237. Delete Node in a Linked List.
// https://leetcode.com/problems/delete-node-in-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 73.24% of Go online submissions for Delete Node
// in a Linked List.
// Memory Usage: 3 MB, less than 58.80% of Go online submissions for Delete
// Node in a Linked List.
// 2024.05.05 Daily Challenge.

package main

// Just copy next to current.
// Using DEREFERENCE.

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteNode(node *ListNode) {
	// This pointers dereference solution is based on Decker Xu's code:
	// https://leetcode.com/problems/delete-node-in-a-linked-list/discuss/2849663/0-ms-100.00-only-1-line-code
	*node = *node.Next
}
