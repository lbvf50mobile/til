// Leetcode: 881. Boats to Save People.
// https://leetcode.com/problems/boats-to-save-people/
// Error: 
// [3,2,3,2,2]
// 6


package main

import (
	"sort"
)

// 1. Nested loop.
// 2. Outer counts boats.
// 3. Inner selects men.
// 4. The input is sorted.
// 5. Two pointers for fat and lean people.

func numRescueBoats(people []int, limit int) int {
	ppl := people
	sort.Ints(ppl)
	j, i := len(ppl)-1, 0
	n := len(ppl)
	// Counter for Boats, counter fo the saved people.
	cBoats, cSaved := 0, 0
	// Outer loop fills one boat.
	for cSaved < n {
		plc := limit // Place left in the current boat.
		// Inner loop for fat.
		// j: Take fat ones first.
		for i <= j && plc >= ppl[j] {
			plc -= ppl[j]
			cSaved += 1
			j -= 1
		}
		// Inner loop for slim.
		// i: Take slim ones second.
		for i <= j && plc >= ppl[i] {
			plc -= ppl[i]
			cSaved += 1
			i += 1
		}
		// One more boat is filled.
		cBoats += 1
	}
	return cBoats
}
