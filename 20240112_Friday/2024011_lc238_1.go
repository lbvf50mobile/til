// Leetcode: 238. Product of Array Except Self.
// https://leetcode.com/problems/product-of-array-except-self/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 21 ms, faster than 78.46% of Go online submissions for Product of
// Array Except Self.
// Memory Usage: 8 MB, less than 19.07% of Go online submissions for Product
// of Array Except Self.
// https://gist.github.com/lbvf50mobile/2e6c736576fc2737dfb7f9af40007648

package main

func productExceptSelf(nums []int) []int {
	fzi, lzi := -1, -1 // First and last zero index.
	prd := 1           // Products of non zero values.
	n := len(nums)
	for i, v := range nums {
		if 0 == v {
			if -1 == fzi {
				fzi = i
			}
			lzi = i
		} else {
			prd *= v
		}
	}
	ans := make([]int, n)
	// Two or more zeros => all zeros.
	if -1 != fzi && -1 != lzi && fzi != lzi {
		return ans
	}
	// Only one zero in the array.
	// Zero index product, all other zeros.
	if fzi == lzi && -1 != fzi {
		ans[fzi] = prd
		return ans
	}
	// No zeros, just divide prd by current.
	for i, v := range nums {
		ans[i] = prd / v
	}
	return ans
}
