// Leetcode: 1974. Minimum Time to Type Word Using Special Typewriter
// https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func minTimeToType(word string) int {
	curr := 'a'
	clock := 0

	for _, ch := range word {
		if ch == curr {
			clock += 1
			curr = ch
			continue
		}
		t1, t2 := int(curr-'a'), int(ch-'a')
		minc, maxc := min(t1, t2), max(t1, t2)
		spin1 := maxc - minc
		spin2 := minc + 26 - maxc
		if spin1 < spin2 {
			clock += spin1
		} else {
			clock += spin2
		}
		clock += 1
		curr = ch
	}
	return clock

}
