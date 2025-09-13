// Leetcode: 3541. Find Most Frequent Vowel and Consonant
// https://leetcode.com/problems/find-most-frequent-vowel-and-consonant/description/?envType=daily-question&envId=2025-09-13
// - - -
// Accepted.
// Thanks God, Jesus Christ!

// - - - - - - - - - - - - - - - - - - - -
// Runtime: 0 ms | Beats 100.00%
// Memory: 4.19 MB | Beats 82.11%

package main

func maxFreqSum(s string) int {
	freq := make([]int, 26)
	for _, v := range s {
		freq[int(v-'a')] += 1
	}
	vowelF := 0
	consonantF := 0
	for i, v := range freq {
		if isVowel(i) {
			vowelF = max(vowelF, v)
		} else {
			consonantF = max(consonantF, v)
		}
	}
	return vowelF + consonantF
}

func isVowel(i int) bool {
	switch byte(i + 'a') {
	case 'a':
		return true
	case 'o':
		return true
	case 'u':
		return true
	case 'i':
		return true
	case 'e':
		return true
	default:
		return false
	}
}
