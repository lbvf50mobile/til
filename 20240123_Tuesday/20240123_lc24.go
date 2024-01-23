// Leetcode: 24. Swap Nodes in Pairs.
// https://leetcode.com/problems/swap-nodes-in-pairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 77.92% of Go online submissions for Swap Nodes
// in Pairs.
// Memory Usage: 2.1 MB, less than 5.41% of Go online submissions for Swap
// Nodes in Pairs.
// 2024.01.23.
// https://gist.github.com/lbvf50mobile/ce80f631aa57ebbd8bc7ab66a048f5b6

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func swapPairs(head *ListNode) *ListNode {
	// Nil - do noting.
	if nil == head {
		return head
	}
	// Only one element.
	if nil == head.Next {
		return head
	}
	// Set head. swap first palin.
	a, b, c := head, head.Next, head.Next.Next
	b.Next = a
	a.Next = c
	head = b
	tl := a // Tl.
	for nil != tl.Next && nil != tl.Next.Next {
		a = tl.Next
		b = a.Next
		c = b.Next
		a.Next = c
		b.Next = a
		tl.Next = b
		tl = a
	}
	return head

}
