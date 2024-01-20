// Leetcode: 907. Sum of Subarray Minimums.
// https://leetcode.com/problems/sum-of-subarray-minimums/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 65 ms, faster than 34.88% of Go online submissions for Sum of
// Subarray Minimums.
// Memory Usage: 7.3 MB, less than 27.91% of Go online submissions for Sum of
// Subarray Minimums.
// 2024.01.20 Daily Challenge.

package main

type Pr struct {
	val   int
	count int
}

func sumSubarrayMins(arr []int) int {
	// Based on:
	// https://github.com/Seanforfun/Algorithm-and-Leetcode/blob/master/leetcode/907.%20Sum%20of%20Subarray%20Minimums.md
	mod := 1000000007
	n := len(arr)

	left := make([]*Pr, 0)
	right := make([]*Pr, 0)

	leftArr := make([]int, n)
	rightArr := make([]int, n)

	for i := 0; i < n; i += 1 {
		count := 1
		for 0 != len(left) && arr[i] < left[len(left)-1].val {
			tmp := left[len(left)-1]
			left = left[:len(left)-1]
			count += tmp.count
		}
		left = append(left, &Pr{arr[i], count})
		leftArr[i] = count
	}
	for i := n - 1; i >= 0; i -= 1 {
		count := 1
		for 0 != len(right) && arr[i] <= right[len(right)-1].val {
			tmp := right[len(right)-1]
			right = right[:len(right)-1]
			count += tmp.count
		}
		right = append(right, &Pr{arr[i], count})
		rightArr[i] = count
	}
	ans := 0
	for i, v := range arr {
		ans = (ans + (v*leftArr[i]*rightArr[i])%mod) % mod
	}
	return ans
}
