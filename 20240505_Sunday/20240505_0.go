// Leetcode: 237. Delete Node in a Linked List.
// https://leetcode.com/problems/delete-node-in-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 73.24% of Go online submissions for Delete Node
// in a Linked List.
// Memory Usage: 2.9 MB, less than 58.80% of Go online submissions for Delete
// Node in a Linked List.
// 2024.05.05 Daily Challenge.

package main

// Just copy next to current.
// Loop till the penultimate node, copy next's value to current.
// After the loop, copy the value, and make node's next nil.

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func deleteNode(node *ListNode) {
	for nil != node.Next.Next {
		node.Val = node.Next.Val
		node = node.Next
	}
	node.Val = node.Next.Val
	node.Next = nil
}
