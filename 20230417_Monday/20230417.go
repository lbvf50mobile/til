// Leetcode: 1431. Kids With the Greatest Number of Candies.
// https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 58.82% of Go online submissions for Kids With the
// Greatest Number of Candies. 
// Memory Usage: 2.4 MB, less than 80.59% of Go online submissions for Kids With
// the Greatest Number of Candies.
// 2023.04.17 Daily Challenge.
package main

func kidsWithCandies(candies []int, extraCandies int) []bool {
	ans := make([]bool, len(candies))
	max := candies[0]
	for _, x := range candies {
		if max < x {
			max = x
		}
	}
	for i, x := range candies {
		if max <= x+extraCandies {
			ans[i] = true
		}
	}
	return ans
}
