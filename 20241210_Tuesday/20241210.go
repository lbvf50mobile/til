// Leetcode: 2981. Find Longest Special Substring That Occurs Thrice I
// https://leetcode.com/problems/find-longest-special-substring-that-occurs-thrice-i/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 25 ms, faster than 5.88% of Go online submissions for Find Longest
// Special Substring That Occurs Thrice I.
// Memory Usage: 8.4 MB, less than 5.26% of Go online submissions for Find
// Longest Special Substring That Occurs Thrice I.
// 2024.12.10 Daily Challenge.
package main

// import "fmt"
// var p = fmt.Println

func maximumLength(s string) int {
	db := make(map[byte][]int)
	for i := 'a'; i <= 'z'; i += 1 {
		char := byte(i)
		db[char] = make([]int, 51)
	}
	// Here was an old snippet.
	counter := 1
	for i := 1; i < len(s); i += 1 {
		if s[i] == s[i-1] {
			counter += 1
		} else {
			incr(db, s[i-1], counter) // Here!
			counter = 1
		}
	}
	incr(db, s[len(s)-1], counter)
	return findMax(db)
}

func incr(db map[byte][]int, char byte, size int) {
	// p(string(char),size)
	for ln := 1; ln <= size; ln += 1 {
		starts := size - ln + 1 // here!
		db[char][ln] += starts
	}
}

func findMax(db map[byte][]int) int {
	max := -1
	for i := 'a'; i <= 'z'; i += 1 {
		ch := byte(i)
		for ln := 1; ln <= 50; ln += 1 {
			if db[ch][ln] >= 3 && ln > max {
				max = ln
			}
		}
	}
	return max
}
