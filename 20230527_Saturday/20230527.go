// Leetcode: 1406. Stone Game III.
// https://leetcode.com/problems/stone-game-iii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 218 ms, faster than 91.67% of Go online submissions for Stone Game
// III.
// Memory Usage: 7.9 MB, less than 100.00% of Go online submissions for Stone
// Game III.
// 2023.05.27 Daily Challenge.
package main

import "fmt"

var p = fmt.Println

func stoneGameIII(stoneValue []int) string {
	n := len(stoneValue)
	v := stoneValue
	dp := make([]int, n+1)
	x := 0
	for i := n - 1; i >= 0; i -= 1 {
		dp[i] = v[i] - dp[i+1]
		x = dp[i]
		if i+2 <= n {
			x = v[i] + v[i+1] - dp[i+2]
            // condition must be here.
            // First dp update.
			if x > dp[i] {
				dp[i] = x
			} // Was  an error beause false optimisation.
            // During the flor loop dp updated twice.
		}
		if i+3 <= n {
			x = v[i] + v[i+1] + v[i+2] - dp[i+3]
            // condition must be here.
            // Second dp update.
			if x > dp[i] {
				dp[i] = x
			}
		}
	}
	if 0 < dp[0] {
		return "Alice"
	} else if 0 > dp[0] {
		return "Bob"
	} else {
		return "Tie"
	}
}
