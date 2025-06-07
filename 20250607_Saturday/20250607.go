// Leetcode: 135. Candy
// https://leetcode.com/problems/candy/description/?envType=daily-question&envId=2025-06-02
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
package main

func candy(ratings []int) int {
	n := len(ratings)
	// Step #1 initialization.
	cnds := make([]int, n)
	for i, _ := range ratings {
		cnds[i] = 1
	}
	// Step #2: Moving from left to right.
	// Comparing with left neighbour.
	// If have bigger ratings increase current amount.
	for i := 1; i < n; i += 1 {
		if ratings[i] > ratings[i-1] {
			cnds[i] = cnds[i-1] + 1
		}
	}
	// Step #3: Moving from right to right.
	// Comparing with right neighbour.
	// If have bigger ratings increase current amount.
	// But use max to avoid giper increasing.
	for i := n - 2; i >= 0; i -= 1 {
		if ratings[i] > ratings[i+1] {
			cnds[i] = max(cnds[i], cnds[i+1]+1)
		}
	}
	// Step #4: Sum.
	sum := 0
	for _, v := range cnds {
		sum += v
	}
	return sum
}
