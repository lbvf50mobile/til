// Leetcode: 143. Reorder List.
// https://leetcode.com/problems/reorder-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 10 ms, faster than 29.45% of Go online submissions for Reorder
// List.
// Memory Usage: 6.6 MB, less than 12.58% of Go online submissions for Reorder
// List.
// 2024.03.23 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func reorderList(head *ListNode) {
	arr := make([]*ListNode, 0, 5*10_000+10)
	for nil != head {
		arr = append(arr, head)
		head = head.Next
	}
	for _, v := range arr {
		v.Next = nil
	}
	prev, start := arr[0], false
	i, j := 1, len(arr)-1
	for i <= j {
		if start {
			prev.Next = arr[i]
			prev = arr[i]
			i += 1
		} else {
			prev.Next = arr[j]
			prev = arr[j]
			j -= 1
		}
		start = !start
	}
}
