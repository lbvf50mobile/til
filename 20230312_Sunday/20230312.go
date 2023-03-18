// Leetcode: 23. Merge k Sorted Lists.
// https://leetcode.com/problems/merge-k-sorted-lists/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 14 ms, faster than 46.90% of Go online submissions for Merge k Sorted Lists.
// Memory Usage: 6.7 MB, less than 13.93% of Go online submissions for Merge k Sorted Lists.
// 2023.03.18 Update.
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
import "sort"

func mergeKLists(lists []*ListNode) *ListNode {
	if 0 == len(lists) {
		return nil
	}
	huge := make([]*ListNode, 0)
	for _, head := range lists {
		for nil != head {
			huge = append(huge, head)
			head = head.Next
		}
	}
	sort.Slice(huge, func(i, j int) bool {
		return huge[i].Val < huge[j].Val
	})
	for i := 0; i < len(huge)-1; i += 1 {
		huge[i].Next = huge[i+1]
	}
	if 0 == len(huge) {
		return nil
	}
	huge[len(huge)-1].Next = nil
	return huge[0]
}
