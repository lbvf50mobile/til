// Leetcode: 2434. Using a Robot to Print the Lexicographically Smallest String
// https://leetcode.com/problems/using-a-robot-to-print-the-lexicographically-smallest-string/description/?envType=daily-question&envId=2025-06-06
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

// import "fmt"

// var p = fmt.Println

const size = 26

func robotWithString(s string) string {
	n := len(s)
	// First need to create a counter.
	counter := make([]int, size)
	for _, c := range s {
		index := int(c) - 'a'
		counter[index] += 1
	}

	// Now need to prepare stack and answer.
	ans := make([]rune, 0, n)
	stack := make([]rune, 0, n)
	min := 'a'

	for _, c := range s {
		// p(i,string(c))
		stack = append(stack, c)
		counter[int(c)-'a'] -= 1 // Need to keep counter up do date.
		// Select a new min if we have too.
		for ('z' != min) && (counter[int(min)-'a'] <= 0) {
			min += 1
		}

		for x := len(stack); 0 < x && min >= stack[x-1]; x = len(stack) {
			ans = append(ans, stack[x-1])
			stack = stack[:x-1]
		}
	}

	return string(ans)
}
