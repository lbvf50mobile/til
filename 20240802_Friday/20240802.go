// Leetcode: 2134. Minimum Swaps to Group All 1's Together II.
// https://leetcode.com/problems/minimum-swaps-to-group-all-1s-together-ii/?envType=daily-question&envId=2024-08-02
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 72 ms, faster than 100.00% of Go online submissions for Minimum
// Swaps to Group All 1's Together II.
// Memory Usage: 8 MB, less than 87.50% of Go online submissions for Minimum
// Swaps to Group All 1's Together II.

// Sliding Window approach.
// There is N postions of sliding window.
// First poistion is calcualted automaticaly.
// In sliding window need to calculae number of zeros. Minimum number of zeros
// in an answer.
// Pre action.
// 1) calculate a number of ones - it is a size of slinding window.
// 2) Calculate first sliding window with start at i == 0
// 3) implent N-1 movement.

package main

func minSwaps(nums []int) int {
	// 1. Count amount of ones. Total.
	// Size of the slinding window.
	size := 0
	for _, v := range nums {
		size += v
	}

	// No ones nothing to do.
	// No zeros nothing to do too.
	if 0 == size || len(nums) == size {
		return 0
	}

	currSwaps := 0
	minSwaps := size
	currOnes := 0

	for i := 0; i < size; i += 1 {
		currOnes += nums[i]
	}

	currSwaps = size - currOnes
	minSwaps = currSwaps

	leavPos, nextPos := 0, size

	// Calculate all other position for the sliding window.
	for steps := 0; steps < len(nums)-1; steps += 1 {
		// Revove leaving spot.
		currOnes -= nums[leavPos]
		// Add next pos.
		currOnes += nums[nextPos]
		currSwaps = size - currOnes
		if minSwaps > currSwaps {
			minSwaps = currSwaps
		}

		leavPos += 1
		nextPos = (nextPos + 1) % len(nums)
	}

	return minSwaps
}
