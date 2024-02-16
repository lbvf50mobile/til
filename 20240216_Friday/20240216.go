// Leetcode: 1481. Least Number of Unique Integers after K Removals.
// https://leetcode.com/problems/least-number-of-unique-integers-after-k-removals/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 100 ms, faster than 24.56% of Go online submissions for Least
// Number of Unique Integers after K Removals.
// Memory Usage: 19.9 MB, less than 31.58% of Go online submissions for Least
// Number of Unique Integers after K Removals.
// 2024.02.16 Daily Challenge.

package main

import (
	"sort"
)

type pr struct {
	val  int
	freq int
}

func findLeastNumOfUniqueInts(arr []int, k int) int {
	if len(arr) == k {
		return 0
	}
	// 1. Create a counter.
	h := make(map[int]int, 0)
	for _, v := range arr {
		h[v] += 1
	}
	// 2. Counter to slice.
	sl := make([]*pr, len(h))
	i := 0
	var tmp *pr
	for val, freq := range h {
		tmp = &pr{val, freq}
		sl[i] = tmp
		i += 1
	}
	// 3. Sort counter ascending by freq.
	sort.SliceStable(sl, func(i, j int) bool {
		return sl[i].freq < sl[j].freq
	})
	// 4. Decreasing k by freq in a loop. Retrun the rest.
	rest := len(sl)
	for i := 0; i < len(sl) && k > 0; i += 1 {
		if k >= sl[i].freq {
			rest -= 1
		}
		k -= sl[i].freq
	}
	return rest
}
