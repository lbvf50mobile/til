// Leetcode: 649. Dota2 Senate.
// https://leetcode.com/problems/dota2-senate/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 36.36% of Go online submissions for Dota2 Senate.
// Memory Usage: 3.2 MB, less than 87.88% of Go online submissions for Dota2
// Senate.
// 2023.05.04 Daily Challenge.
package main

func predictPartyVictory(senate string) string {
	// Based on the Leetcode's soltion.

	// Number of senators of each party.
	r, d := 0, 0

	// Floating ban count.
	rb, db := 0, 0

	// Queue of senators.
	q := []byte{}
	for _, v := range senate {
		q = append(q, byte(v))
		if 'R' == v {
			r += 1
		} else {
			d += 1
		}
	}
	// While any party has eligible Sentaors.
	for r > 0 && d > 0 {
		// Shift the senator with turn.
		curr := q[0]
		q = q[1:]
		// If eligible float a ban on the other party,
		// enqueue again. If not, decrement the floating ban
		// and count the other party.
		if 'R' == curr {
			if rb > 0 {
				r -= 1
				rb -= 1
			} else {
				q = append(q, 'R')
				db += 1
			}
		} else {
			if db > 0 {
				d -= 1
				db -= 1
			} else {
				q = append(q, 'D')
				rb += 1
			}
		}
	}
	// Return the party with eligible senators.
	if r > 0 {
		return "Radiant"
	} else {
		return "Dire"
	}
}
