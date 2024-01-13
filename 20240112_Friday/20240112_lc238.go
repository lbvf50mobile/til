// Leetcode: 238. Product of Array Except Self.
// https://leetcode.com/problems/product-of-array-except-self/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 26 ms, faster than 49.59% of Go online submissions for Product of
// Array Except Self.
// Memory Usage: 7.9 MB, less than 19.07% of Go online submissions for Product
// of Array Except Self.
// https://gist.github.com/lbvf50mobile/2e6c736576fc2737dfb7f9af40007648


package main

func productExceptSelf(nums []int) []int {
	// 1. Count zeros. Make product of non zeros.
	// 2. More than two zeros: return array of zeros.
	// 3. One zero: Zero postion equal to the product.
	// 4. No zeros: ans value is an element by the product.
	zc := 0  // Zero counter.
	prd := 1 // Product of all non zero elements.
	for _, v := range nums {
		if 0 == v {
			zc += 1
		} else {
			prd *= v
		}
	}
	// If two or more zeros. All zeros.
	if zc >= 2 {
		return make([]int, len(nums))
	}
	// One zero: all zeros exept zero position.
	if 1 == zc {
		return oneZero(nums, prd)
	}
	// If no zeros: basic algorithm.
	return noZeros(nums, prd)
}

func oneZero(nums []int, prd int) []int {
	ans := make([]int, len(nums))
	for i, v := range nums {
		if 0 == v {
			ans[i] = prd
		}
	}
	return ans
}

func noZeros(nums []int, prd int) []int {
	ans := make([]int, len(nums))
	for i, v := range nums {
		ans[i] = prd / v
	}
	return ans
}
