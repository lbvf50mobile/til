// Leetcode: 1743. Restore the Array From Adjacent Pairs.
// https://leetcode.com/problems/restore-the-array-from-adjacent-pairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 202 ms, faster than 80.00% of Go online submissions for Restore the
// Array From Adjacent Pairs.
// Memory Usage: 31.4 MB, less than 80.00% of Go online submissions for Restore
// the Array From Adjacent Pairs.
// 2023.11.10 Daily Challenge.
package main

func restoreArray(adjacentPairs [][]int) []int {
	// 1. Create adjacency list.
	al := make(map[int][]int)
	for _, pair := range adjacentPairs {
		a, b := pair[0], pair[1]
		_, ok := al[a]
		if !ok {
			al[a] = make([]int, 0)
		}
		_, ok = al[b]
		if !ok {
			al[b] = make([]int, 0)
		}
		al[a] = append(al[a], b)
		al[b] = append(al[b], a)
	}
	// 2. Prepare stack for DFS.
	// 2.1. Prepare visited map.
	v := make(map[int]bool)
	ans := make([]int, 0)
	// 2.2. Need a tail.
	start := 0
	for i, v := range al {
		if 1 == len(v) {
			start = i
			break
		}
	}
	v[start] = true
	q := []int{start}
	// 3. Start main loop.
	for 0 < len(q) {
		// 4. Add element to answer.
		n := len(q)
		e := q[n-1]
		q = q[:n-1]
		ans = append(ans, e)
		// 5. Push elements if they are not visited.
		for _, nxt := range al[e] {
			if v[nxt] {
				continue
			}
			v[nxt] = true
			q = append(q, nxt)
		}
	}
	return ans
}
