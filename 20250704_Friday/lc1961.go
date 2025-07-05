// Leetcode: 1961. Check If String Is a Prefix of Array
// https://leetcode.com/problems/check-if-string-is-a-prefix-of-array/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func isPrefixString(s string, words []string) bool {
	i := 0
	j := 0
	k := 0
	
	// Value of string pointer must be equal number of sum elements of prefix
	// of the words. I.e. a , ["aa"] is false, because we need to reach the
	// end of array element.
	aku := 0


	for ; i < len(s); i, k = i+1, k+1 {
		// Calucalate j and k
		if k >= len(words[j]) {
			k = 0
			j += 1
			if j >= len(words) {
				return false
			}
		}
		if 0 == k {
			aku += len(words[j])
		}
		// check do the symbols are similar, in appropriate positions.
		if s[i] != words[j][k] {
			return false
		}
	}
	return i == aku 
}
