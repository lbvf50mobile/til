// Leetcode: 876. Middle of the Linked List.
// https://leetcode.com/problems/middle-of-the-linked-list/
// = = = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 80.46% of Go online submissions for Middle of
// the Linked List.
// Memory Usage: 2 MB, less than 77.87% of Go online submissions for Middle of
// the Linked List.
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
func middleNode(head *ListNode) *ListNode {
	mid := head
	lst := head

	for nil != lst && nil != lst.Next {
		mid = mid.Next      // One step.
		lst = lst.Next.Next // Two steps.
	}
	return mid
}
