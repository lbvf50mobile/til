// Leeetcode: 1298. Maximum Candies You Can Get from Boxes
// https://leetcode.com/problems/maximum-candies-you-can-get-from-boxes/description/?envType=daily-question&envId=2025-06-03
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
package main

import "fmt"

var p = fmt.Println

func maxCandies(status []int, candies []int, keys [][]int, containedBoxes [][]int, initialBoxes []int) int {
	// Idea just pure BFS.
	// When to exit?
	// Where no open boxes after iterations.
	myKeys := make(map[int]bool)
	n := len(status)
	ib := make([]int, 0, n)
	candiesCounter := 0
	for {
		openCounter := 0
		for _, box := range initialBoxes {
			if 2 == status[box] {
				continue
			}
			_, ok := myKeys[box]
			if 1 == status[box] || (0 == status[box] && ok) {
				status[box] = 2
				openCounter += 1
				candiesCounter += candies[box]
				// Add keys:
				for _, key := range keys[box] {
					myKeys[key] = true
				}
				// Add boxes:
				for _, newBox := range containedBoxes[box] {
					ib = append(ib, newBox)
				}
				continue
			}
			if 0 == status[box] && (!ok) {
				ib = append(ib, box)
			}
		}
		if 0 == openCounter {
			break
		}
		initialBoxes, ib = ib, initialBoxes
		ib = ib[:1]
	}
	return candiesCounter
}
