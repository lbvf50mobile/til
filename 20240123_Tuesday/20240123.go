// Leetcode: 1239. Maximum Length of a Concatenated String with Unique Characters.
// https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 60.00% of Go online submissions for Maximum
// Length of a Concatenated String with Unique Characters.
// Memory Usage: 6.4 MB, less than 56.67% of Go online submissions for Maximum
// Length of a Concatenated String with Unique Characters.
// 2024.01.23 Daily Challenge.

package main

// import "fmt"

//var p = fmt.Println

type bitLen struct {
	size int
	mask int
	str  string
}

var seq []*bitLen

func maxLength(arr []string) int {
	// Map strings into BinMaps.
	seq = make([]*bitLen, len(arr))
	for i, v := range arr {
		// ["aa","bb"]
		//
		mask := getMask(v)
		size := len(v)
		if 0 == mask {
			size = 0
		}
		seq[i] = &bitLen{size, mask, v}
		//p(v, seq[i].size, seq[i].mask)
	}
	ans := 0
	for i := 0; i < len(seq); i += 1 {
		tmp := backtrack(i, 0, 0, "")
		if tmp > ans {
			ans = tmp
		}
	}
	return ans
}

func backtrack(i, mask, size int, str string) int {
	if i == len(seq) {
		return size
	}
	//p("=>", seq[i].str, i, mask, size)

	ans := size // <= Here.
	newStr := str
	newMask := mask

	// Select this one only if no dublicate symbols.
	if 0 == (newMask & seq[i].mask) { // Check.
		ans += seq[i].size
		newStr += seq[i].str
		newMask = newMask | seq[i].mask // Add.
	}
	//p(newStr)

	localMax := ans // <= Here.
	// Check the rest.
	for j := i + 1; j <= len(seq); j += 1 {
		tmp := backtrack(j, newMask, ans, newStr)
		if tmp > localMax {
			localMax = tmp
		}
	}
	ans = localMax

	return ans
}

func getMask(s string) int {
	ans := 0
	for _, v := range s {
		bit := 1 << int(v-'a')
		if 0 != (ans & bit) { // Check.
			return 0 // Not uniq.
		}
		ans = ans | bit // Add.
	}
	return ans
}
