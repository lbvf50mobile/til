// Leetcode: 1721. Swapping Nodes in a Linked List.
// https://leetcode.com/problems/swapping-nodes-in-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 284 ms, faster than 5.71% of Go online submissions for Swapping
// Nodes in a Linked List.
// Memory Usage: 12.1 MB, less than 5.71% of Go online submissions for Swapping
// Nodes in a Linked List.
// 2023.05.15 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func swapNodes(head *ListNode, k int) *ListNode {
	max := 1_000_00
	arr := make([]*ListNode, max)
	l := 0
	tmp := head
	for nil != tmp {
		arr[l] = tmp
		tmp = tmp.Next
		l += 1
	}
    i, j := k-1, l-k
	arr[i].Val, arr[j].Val = arr[j].Val, arr[i].Val
	return arr[0]
}
