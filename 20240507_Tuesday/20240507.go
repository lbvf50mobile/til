// Leetcode: 2816. Double a Number Represented as a Linked List.
// https://leetcode.com/problems/double-a-number-represented-as-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 61 ms, faster than 69.23% of Go online submissions for Double a
// Number Represented as a Linked List.
// Memory Usage: 7.8 MB, less than 30.77% of Go online submissions for Double
// a Number Represented as a Linked List.
// 2024.05.07 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func doubleIt(head *ListNode) *ListNode {
	// 1. List => Slice.
	// 2. Move Right - To left.
	// 3. Check for a new head flag.
	// 4. Moving list filling a values.
	// 5. Return a head.
	num := make([]int, 0)
	tmp := head
	for nil != tmp {
		num = append(num, tmp.Val)
		tmp = tmp.Next
	}
	carry := 0
	for j := len(num) - 1; j >= 0; j -= 1 {
		full := carry + num[j]*2
		num[j] = full % 10
		carry = full / 10
	}
	if 0 != carry {
		num = append([]int{1}, num...)
		newHead := &ListNode{1, head}
		head = newHead
	}
	tmp = head
	for _, v := range num {
		tmp.Val = v
		tmp = tmp.Next
	}
	return head
}
