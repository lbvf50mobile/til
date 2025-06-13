// Leetcode: 2434. Using a Robot to Print the Lexicographically Smallest String
// https://leetcode.com/problems/using-a-robot-to-print-the-lexicographically-smallest-string/description/?envType=daily-question&envId=2025-06-06
// Worked code, but incorect.

package main

const size = 26

func robotWithString(s string) string {
	// Find minumum char in the string.
	// Put all these chars at the begining.
	// Copy rest of the string. (But it will be reversed)

	// Define variables.
	n := len(s)
	counter := make([]int, size)
	ans := make([]byte, n)

	// Fill the counter.
	fillTheCounter(counter, s)

	// Find the minimum char. And it's amount in the input.
	minChar, amount := findTheMinumumChar(counter)

	// Fill the answer string.
	i := 0
	for j := 0; j < amount; j += 1 {
		ans[j] = minChar
		i += 1
	}

	// Rest woul be reversed. Because first put in FILO.
	for j := n - 1; j >= 0; j -= 1 {
		tmp := byte(s[j])
		if tmp != minChar {
			ans[i] = tmp
			i += 1
		}
	}
	return string(ans)
}

func fillTheCounter(counter []int, s string) {
	for _, v := range s {
		index := byte(v) - 'a'
		counter[index] += 1
	}
}

func findTheMinumumChar(counter []int) (byte, int) {
	// It would be first non zero index in counter.
	for i, v := range counter {
		if 0 != v {
			return byte(i) + 'a', v
		}
	}
	panic("Just empty string, empty counter.")
}
