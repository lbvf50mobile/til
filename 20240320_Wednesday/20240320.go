// Leetcode: 1669. Merge In Between Linked Lists.
// https://leetcode.com/problems/merge-in-between-linked-lists/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 124 ms, faster than 19.33% of Go online submissions for Merge In
// Between Linked Lists.
// Memory Usage: 7.6 MB, less than 35.29% of Go online submissions for Merge
// In Between Linked Lists.
// 2024.03.20 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeInBetween(list1 *ListNode, a int, b int, list2 *ListNode) *ListNode {
	// Find last element of the list2.
	list2End := list2
	for nil != list2End.Next {
		list2End = list2End.Next
	}
	// Find a - 1 and b;
	var aMinusOne, bItself *ListNode
	tmp := list1
	for i := 0; tmp != nil; i += 1 {
		if i == a-1 {
			aMinusOne = tmp
		}
		if i == b {
			bItself = tmp
		}
		tmp = tmp.Next
	}
	aMinusOne.Next = list2
	list2End.Next = bItself.Next
	return list1
}
