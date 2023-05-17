// Leetcode: 2130. Maximum Twin Sum of a Linked List.
// https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 186 ms, faster than 83.12% of Go online submissions for Maximum Twin
// Sum of a Linked List.
// Memory Usage: 9.3 MB, less than 87.66% of Go online submissions for Maximum
// Twin Sum of a Linked List.
// 2023.05.17 Daily Challenge.
package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
var a [1_00_00_1]int

func pairSum(head *ListNode) int {
	s := 0
	tmp := head
	for ; nil != tmp; s, tmp = s+1, tmp.Next {
		a[s] = tmp.Val
	}
	max := 0
	for i, j := 0, s-1; i < j; i, j = i+1, j-1 {
		if a[i]+a[j] > max {
			max = a[i] + a[j]
		}
	}
	return max
}
