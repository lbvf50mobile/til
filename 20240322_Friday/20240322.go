// Leetcode: 234. Palindrome Linked List.
// https://leetcode.com/problems/palindrome-linked-list/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 209 ms, faster than 5.14% of Go online submissions for Palindrome
// Linked List.
// Memory Usage: 50.7 MB, less than 5.31% of Go online submissions for
// Palindrome Linked List.
// 2024.03.22 Daily Challenge.

package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func isPalindrome(head *ListNode) bool {
	// Straightforward.
	a := make([]int, 0, 1_000_000)
	for nil != head {
		a = append(a, head.Val)
		head = head.Next
	}
	i, j := 0, len(a)-1
	for i < j {
		if a[i] != a[j] {
			return false
		}
		i += 1
		j -= 1
	}
	return true
}
