// Leetcode: 19. Remove Nth Node From End of List.
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 7.33% of Go online submissions for Remove Nth
// Node From End of List.
// Memory Usage: 2.2 MB, less than 19.52% of Go online submissions for Remove
// Nth Node From End of List.
// 2024.03.03 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func removeNthFromEnd(head *ListNode, n int) *ListNode {
	// Based on the problem constrains. 1 <= sz <= 30
	x := make([]*ListNode, 31) // Filled by nils.
	tmp := head
	var i int
	for i = 0; nil != tmp; i, tmp = i+1, tmp.Next {
		x[i] = tmp
	}
	remove := i - n
	if 0 == remove {
		return x[1]
	}
	x[remove-1].Next = x[remove+1]
	return x[0]
}
