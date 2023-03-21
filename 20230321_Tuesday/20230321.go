// Leetcode: 2348. Number of Zero-Filled Subarrays.
// https://leetcode.com/problems/number-of-zero-filled-subarrays/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 154 ms, faster than 14.29% of Go online submissions for Number of Zero-Filled Subarrays.
// Memory Usage: 10.8 MB, less than 14.29% of Go online submissions for Number of Zero-Filled Subarrays.
// 2023.03.21 Daily Challenge.

func zeroFilledSubarray(nums []int) int64 {
	ans, zrs := 0, 0
	for _, v := range nums {
		if 0 == v {
			zrs += 1
			ans += zrs
		} else {
			zrs = 0
		}
	}
	return int64(ans)
}
