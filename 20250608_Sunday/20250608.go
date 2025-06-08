// Leetcode: 1298. Maximum Candies You Can Get from Boxes
// https://leetcode.com/problems/maximum-candies-you-can-get-from-boxes/description/?envType=daily-question&envId=2025-06-03
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

const (
	Close = 0
	Open  = 1
	Used  = 2
)

func maxCandies(status []int, candies []int, keys [][]int, containedBoxes [][]int, initialBoxes []int) int {
	// Ok lets go.
	// Idea: "Onelayerd" BFS (one queue). Fill queue with open.
	// 1. Fill queue with open.
	// 2. Loops while queue.
	// 3. Take candied.
	// 4. Take keys. Try to open.
	// 5. Take boxes. Tye to open.
	// - - -
	// Mark opened as '2'.
	n := len(status)
	read := 0
	write := 0
	q := make([]int, n)
	myKeys := make([]bool, n)
	myBoxes := make([]bool, n)
	totalSweets := 0

	// Acquire all opens. Put it in queue.
	for _, box := range initialBoxes {
		myBoxes[box] = true
		if Open == status[box] {
			q[write] = box
			write += 1
		}
	}

	for read < write {
		box := q[read]
		read += 1
		if Open != status[box] {
			continue
		}
		status[box] = Used
		totalSweets += candies[box]

		// Try to boxes we have by keys I got.
		for _, k := range keys[box] {
			myKeys[k] = true
			if Close == status[k] && myBoxes[k] {
				q[write] = k
				write += 1
				status[k] = Open
			}
		}
		// Check boxes I have here. Use open. Or try to open with a key.
		for _, b := range containedBoxes[box] {
			myBoxes[b] = true
			// Open and Close.
			if (Close == status[b] && myKeys[b]) || Open == status[b] {
				q[write] = b
				write += 1
				status[b] = Open
			}
		}
	}

	return totalSweets
}
