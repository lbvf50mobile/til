// Leetcode: 237. Delete Node in a Linked List.
// https://leetcode.com/problems/delete-node-in-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 5.78% of Go online submissions for Delete Node
// in a Linked List.
// Memory Usage: 2.8 MB, less than 12.89% of Go online submissions for Delete
// Node in a Linked List.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

func deleteNode(node *ListNode) {
	if nil == node {
		return
	}
	// Push value to the previous.
	prev := node
	tail := node
	curr := node.Next
	for nil != curr {
		prev.Val = curr.Val
		tail = prev
		prev = curr
		curr = curr.Next
	}
	tail.Next = nil
}
