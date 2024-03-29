// Leetcode: 49. Group Anagrams.
// https://leetcode.com/problems/group-anagrams/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 18 ms, faster than 77.10% of Go online submissions for Group
// Anagrams.
// Memory Usage: 9.2 MB, less than 11.94% of Go online submissions for Group
// Anagrams.
// 2024.02.06 Daily Challenge.

package main

func groupAnagrams(strs []string) [][]string {
	ans := make([][]string, 0)
	h := make(map[[26]int][]string)
	for _, v := range strs {
		cr := getCounter(v)
		if nil == h[cr] {
			h[cr] = []string{}
		}
		h[cr] = append(h[cr], v)
	}
	for _, v := range h {
		ans = append(ans, v)
	}
	return ans
}

func getCounter(str string) [26]int {
	ans := [26]int{}
	for _, v := range str {
		ans[int(v-'a')] += 1
	}
	return ans
}
