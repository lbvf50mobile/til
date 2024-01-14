// Leetcode: 237. Delete Node in a Linked List.
// https://leetcode.com/problems/delete-node-in-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 71.30% of Go online submissions for Delete Node
// in a Linked List.
// Memory Usage: 2.8 MB, less than 12.61% of Go online submissions for Delete
// Node in a Linked List.
// https://gist.github.com/lbvf50mobile/a632eb884c9444614c96d406d3a5c723

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

func deleteNode(node *ListNode) {
	// Copy and delete Next.
	dublicate := node
	del := node.Next
	tail := node.Next.Next
	dublicate.Val = del.Val
	dublicate.Next = tail
}
