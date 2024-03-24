// Leetcode: 287. Find the Duplicate Number.
// https://leetcode.com/problems/find-the-duplicate-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 70 ms, faster than 96.14% of Go online submissions for Find the
// Duplicate Number.
// Memory Usage: 8.8 MB, less than 38.12% of Go online submissions for Find
// the Duplicate Number.
// 2024.03.24 Daily Challenge.

package main

func findDuplicate(nums []int) int {
	// Based on:
	// https://leetcode.com/problems/find-the-duplicate-number/discuss/704693/Python-2-solutions%3A-Linked-List-Cycle-O(n)-and-BS-O(n-log-n)-explained
	slow, fast := nums[0], nums[0]
	for true {
		slow, fast = nums[slow], nums[nums[fast]]
		if slow == fast {
			break
		}
	}
	slow = nums[0]
	for slow != fast {
		slow, fast = nums[slow], nums[fast]
	}
	return slow
}
