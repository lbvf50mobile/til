// Leetcode: 24. Swap Nodes in Pairs.
// https://leetcode.com/problems/swap-nodes-in-pairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 75.65% of Go online submissions for Swap Nodes
// in Pairs.
// Memory Usage: 2.1 MB, less than 96.12% of Go online submissions for Swap
// Nodes in Pairs.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

func swapPairs(head *ListNode) *ListNode {
	if nil == head {
		return head
	}
	var a, b, c, prev, curr *ListNode
	// Swap first pair. Define head.
	if nil != head.Next {
		a, b, c = head, head.Next, head.Next.Next
		b.Next = a
		a.Next = c
		head = b
		curr = c
		prev = a
	}
	// While there are a pair to swap.
	for nil != curr && nil != curr.Next {
		a, b, c = curr, curr.Next, curr.Next.Next
		b.Next = a
		a.Next = c
		prev.Next = b
		prev = a
		curr = c

	}
	return head
}
