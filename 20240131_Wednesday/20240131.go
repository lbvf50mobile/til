// Leetcode: 739. Daily Temperatures.
// https://leetcode.com/problems/daily-temperatures/
// = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = =
// Runtime: 148 ms, faster than 54.82% of Go online submissions for Daily
// Temperatures.
// Memory Usage: 9.1 MB, less than 68.96% of Go online submissions for Daily
// Temperatures.
// 2024.01.31 Daily Challenge.

package main

type temp struct {
	val int
	i   int
}

func dailyTemperatures(temperatures []int) []int {
	// When Pop out, log it.
	ans := make([]int, len(temperatures))
	stack := make([]*temp, 0)
	// Iterate over all elements in the input.
	for i, v := range temperatures {
		// Greate an element.
		el := &temp{v, i}
		// And now Pop all elements that have more colde temp.
		for 0 < len(stack) && stack[len(stack)-1].val < v {
			del := stack[len(stack)-1]
			stack = stack[:len(stack)-1]
			// Now element del is Poped out. Need to write a log.
			j := del.i     // Place where the log going to be written.
			delta := i - j // Time to wait for a warmer weather.
			ans[j] = delta
		}
		stack = append(stack, el)
	}
	return ans
}
