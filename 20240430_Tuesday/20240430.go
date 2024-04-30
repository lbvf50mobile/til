// Leetcode: 1915. Number of Wonderful Substrings.
// https://leetcode.com/problems/number-of-wonderful-substrings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 256 ms, faster than 100.00% of Go online submissions for Number of
// Wonderful Substrings.
// Memory Usage: 6.7 MB, less than 100.00% of Go online submissions for Number
// of Wonderful Substrings.
// 2024.04.30 Daily Challenge.

package main

func wonderfulSubstrings(word string) int64 {
	// The code is based on the Leetcode's solution.
	// https://leetcode.com/problems/number-of-wonderful-substrings/solution/

	// Create the frequency map.
	// Key = bitmask, Value = requency of the bit mask key
	fr := make(map[int64]int64)
	// The Empyt Prefix can be the smaller prefix, which is hahdled like this.
	fr[0] = 1

	var ms int64
	var ans int64

	for _, c := range word {
		bit := int64(c) - 97
		// Flip the parity of the c-th bit the the running prefix mask
		ms ^= (1 << bit)
		// count smaller prefix that created substring with no odd occurring
		// letters.
		if _, ok := fr[ms]; ok {
			ans += fr[ms]
			fr[ms] += 1
		} else {
			fr[ms] = 1
		}
		// Loop throught every possible letter that can appear an odd number
		// of time in a substring
		for o := 0; o < 10; o += 1 {
			tmp := ms ^ (1 << o)
			if v, ok := fr[tmp]; ok {
				ans += v
			}
		}
	}
	return ans
}
