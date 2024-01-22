// Leetcode: 645. Set Mismatch.
// https://leetcode.com/problems/set-mismatch/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 24 ms, faster than 71.43% of Go online submissions for Set
// Mismatch.
// Memory Usage: 7 MB, less than 20.64% of Go online submissions for Set
// Mismatch.
// 2024.01.22 Daily Challenge.

package main

func findErrorNums(nums []int) []int {
	// Hint from the:
	// https://leetcode.com/problems/set-mismatch/discuss/105513/XOR-one-pass
	// a^b^c^a^b^c = a^a^b^b^c^c = 0
	// a^b^c^b^b^c = a^c^c^b^b ^b = (a^b)
	// a^b^b => a
	// b <===> 2 == counter[b]
	xor := 0
	ans := []int{0, 0} // twice, zero.
	twice, zero := 0, 0
	counter := make(map[int]int)
	for i, v := range nums {
		counter[v] += 1
		if 2 == counter[v] {
			ans[0] = v
			twice = v
		}
		xor = xor ^ v
		xor = xor ^ (i + 1)
	}
	zero = (xor ^ twice)
	ans[1] = zero
	return ans
}
