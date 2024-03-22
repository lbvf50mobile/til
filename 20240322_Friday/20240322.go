// Leetcode: 234. Palindrome Linked List.
// https://leetcode.com/problems/palindrome-linked-list/
// = = = = = = = = = = = = = =
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Fails: [1,2,3,2,1]
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
	// Memory Saving.
	// 1. Calculate lenght of the array.
	size := getSize(head)
	// 2. Calculate number of steps to compare.
	if size < 2 {
		return true
	}
	numSteps := size / 2
	// 3. Find node to start rotation.
	moveSteps := 0 // Search for a second head.
	if 0 == size%2 {
		moveSteps = size / 2 // if 2,  1 node is a new head.
	} else {
		moveSteps = size/2 + 1 // if 3, 2 is a new head.
	}
	head1 := getNode(head, moveSteps)
	// 4. Rotate the end of the list.
	head1 = rotate(head1)
	// 5. Compare.
	for i := 0; i < numSteps; i += 1 {
		if head.Val != head1.Val {
			return false
		}
		head = head.Next
		head1 = head.Next
	}
	return true
}

func getNode(x *ListNode, steps int) *ListNode {
	for i := 0; i < steps; i += 1 {
		x = x.Next
	}
	return x
}

func getSize(x *ListNode) int {
	ans := 0
	for nil != x {
		ans += 1
		x = x.Next
	}
	return ans
}

func rotate(x *ListNode) *ListNode {
	var prev, a, b *ListNode
	for nil != x.Next {
		a = x
		b = x.Next
		a.Next = prev
		prev = a
		x = b
	}
	x.Next = b
	return x
}
