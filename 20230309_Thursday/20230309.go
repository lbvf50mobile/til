// Leetcode: 142. Linked List Cycle II.
// https://leetcode.com/problems/linked-list-cycle-ii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 18.39% of Go online submissions for Linked List Cycle II.
// Memory Usage: 5.2 MB, less than 15.58% of Go online submissions for Linked List Cycle II.
// 2023.03.09 Daily Challenge.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func detectCycle(head *ListNode) *ListNode {
	mp := make(map[*ListNode]bool)
	for head != nil {
		if _, ok := mp[head]; ok {
			return head
		} else {
			mp[head] = true
		}
		head = head.Next
	}
	return nil
}
