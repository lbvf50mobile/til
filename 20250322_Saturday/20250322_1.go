// Leetcode: 206. Reverse Linked List
// Accepted.
// Thanks God!
package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func reverseList(head *ListNode) *ListNode {
	var prev, nxt *ListNode
	cur := head
	for cur != nil {
		nxt = cur.Next
		prev, cur.Next, cur = cur, prev, nxt
	}
	return prev

}
