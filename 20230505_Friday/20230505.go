// Leetcode: 1456. Maximum Number of Vowels in a Substring of Given Length.
// https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/
// = = = = = = = = = = = = = = 
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 10 ms, faster than 66.67% of Go online submissions for Maximum
// Number of Vowels in a Substring of Given Length.
// Memory Usage: 4.8 MB, less than 96.15% of Go online submissions for Maximum
// Number of Vowels in a Substring of Given Length.
// 2023.05.05 Daily Challenge.
package main

func maxVowels(s string, k int) int {
	max, cur := 0, 0
	for i := 0; i < k; i += 1 {
		if is(s[i]) {
			max += 1
		}
	}
	if max == k {
		return max
	}
	cur = max
	for j := k; j < len(s); j += 1 {
		i := j - k
		if is(s[i]) {
			cur -= 1
		}
		if is(s[j]) {
			cur += 1
		}
		if max < cur {
			max = cur
		}
		if max == k {
			return max
		}
	}
	return max
}

func is(x byte) bool {
	// Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.
	if 'a' == x {
		return true
	}
	if 'e' == x {
		return true
	}
	if 'i' == x {
		return true
	}
	if 'o' == x {
		return true
	}
	if 'u' == x {
		return true
	}
	return false
}
