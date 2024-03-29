// Leetcode: 1160. Find Words That Can Be Formed by Characters.
// https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 100.00% of Go online submissions for Find Words
// That Can Be Formed by Characters.
// Memory Usage: 7 MB, less than 77.78% of Go online submissions for Find
// Words That Can Be Formed by Characters.
// 2023.12.02 Daily Challenge.
package main

var template []int

func countCharacters(words []string, chars string) int {
	// Grow a CounterDataStructure for each word and compare it with the
	// template CounterDataStructure.
	ans := 0
	charsLen := len(chars)
	// 1. Create a template.
	generateTemplate(chars)
	// 2. Iterate over all words.
	// 3. Call comparation method for each string.
	for _, w := range words {
		l := len(w)
		if l > charsLen {
			continue
		}
		if fits(w) {
			ans += l 
		}
	}
	return ans
}

// Fill a 26 elements slice. It would be a Counter data stcuture. Each index
// stores an amount of appropriate chars of the source word 'chars'.
func generateTemplate(ch string) {
	template = make([]int, 26)
	for _, v := range ch {
		index := v - 'a'
		template[index] += 1
	}
}

// Does word 'fits' into the template?
func fits(w string) bool {
	tmp := make([]int, 26)
	for _, v := range w {
		index := v - 'a'
		tmp[index] += 1
		if tmp[index] > template[index] {
			return false
		}
	}
	return true
}
