// Leetcode: 24. Swap Nodes in Pairs.
// https://leetcode.com/problems/swap-nodes-in-pairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 62.89% of Go online submissions for Swap Nodes in
// Pairs.
// Memory Usage: 2 MB, less than 85.57% of Go online submissions for Swap Nodes
// in Pairs.
// 2023.05.16 Daily Challenge.
package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func swapPairs(head *ListNode) *ListNode {
	// Do not work with empty list.
	if nil == head {
		return nil
	}
	// Prepare array for nodes.
	arr := make([]*ListNode, 101)
	sz := 0 // Size.
	// Fill the array.
	tmp := head
	for ; nil != tmp; sz += 1 {
		arr[sz] = tmp
		tmp = tmp.Next
	}
	// Nil all pointers in the nodes.
	// In sake of stability.
	for i := 0; i < sz; i += 1 {
		arr[i].Next = nil
	}
	// Swap things.
	for i := 0; i < sz-1; i += 2 {
		arr[i], arr[i+1] = arr[i+1], arr[i]
	}
	// Redirect pointers.
	for i := 0; i < sz-1; i += 1 {
		arr[i].Next = arr[i+1]
	}
	// Finaly return head.
	return arr[0]
}
