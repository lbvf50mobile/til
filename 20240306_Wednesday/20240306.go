// Leetcode: 141. Linked List Cycle.
// https://leetcode.com/problems/linked-list-cycle/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 7 ms, faster than 70.02% of Go online submissions for Linked List
// Cycle.
// Memory Usage: 4.6 MB, less than 30.42% of Go online submissions for Linked
// List Cycle.
// 2024.03.06 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func hasCycle(head *ListNode) bool {
	if nil == head {
		return false
	}
	if nil == head.Next {
		return false
	}
	a, b := head, head.Next
	for nil != a && b != nil && b.Next != nil {
		if a == b {
			return true
		}
		a = a.Next
		b = b.Next.Next
	}
	return false

}
