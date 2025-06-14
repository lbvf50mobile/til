// Leetcode: 2434. Using a Robot to Print the Lexicographically Smallest String
// https://leetcode.com/problems/using-a-robot-to-print-the-lexicographically-smallest-string/description/?envType=daily-question&envId=2025-06-06
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

const size = 26

func robotWithString(s string) string {
	// Need to create a counter.
	cntr := make([]int, 26)
	for _, c := range s {
		cntr[c-'a'] += 1
	}
	min := 'a'
	stack := make([]rune, 0, len(s))
	ans := make([]rune, 0, len(s))
	// Loop over the chars.
	for _, c := range s {
		stack = append(stack, c)
		cntr[c-'a'] -= 1
		for ('z' != min) && (0 >= cntr[min-'a']) {
			min += 1 // from a to b and so on till z.
		}
		for 0 < len(stack) && min >= stack[len(stack)-1] {
			ans = append(ans, stack[len(stack)-1])
			stack = stack[:len(stack)-1]
		}
	}
	return string(ans)
}
