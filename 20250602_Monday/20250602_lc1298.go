package main

func maxCandies(status []int, candies []int, keys [][]int, containedBoxes [][]int, initialBoxes []int) int {
	// Idea:
	// Layerd BFS. On each step iterate over open boxes and fill new open box
	// slice.

	candiesCounter := 0
	n := len(status)

	openA := make([]int, 0, n)
	openB := make([]int, 0, n)
	myKeys := make(map[int]bool)
	myBoxes := make(map[int]bool)
	currentKeys := make([]int, 0, n)
	currentBoxes := make([]int, 0, n)

	// Preparations iterate over all boxes fill keys.
	// What am I doing during preparations?
	// Iterate over all inital boxes.
	// Open what is open. Save keys. Save closed.
	// Then try to use new keys, and new boxes.
	for _, v := range initialBoxes {
		myBoxes[v] = true
		// If box if open
		if 1 == status[v] {
			status[v] = 2 // Chage status.
			// Grap Candies
			candiesCounter += candies[v]
			// Add keys:
			for _, kv := range keys[v] {
				myKeys[kv] = true
				currentKeys = append(currentKeys, kv)
			}
			// Add boxes:
			for _, bv := range containedBoxes[v] {
				myBoxes[bv] = true
				if 1 == status[bv] {
					openB = append(openB, bv)
				} else {
					currentBoxes = append(currentBoxes, bv)
				}
			}
		} else {
			currentBoxes = append(currentBoxes, v)
		}
	}
	// Now iterate over new currentKeys
	// Open box check is key exists for a box.
	for _, box := range currentKeys {
		if _, ok := myBoxes[box]; ok {
			if 0 == status[box] {
				status[box] = 1
				openB = append(openB, box)
			}
		}
	}
	// Now iterate ove new CurrentBox
	for _, box := range currentBoxes {
		if _, ok := myKeys[box]; ok {
			if 0 == status[box] {
				status[box] = 1
				openB = append(openB, box)
			}
		}
	}
	currentBoxes = currentBoxes[:1]
	currentKeys = currentKeys[:1]
	openA, openB = openB, openA
	openB = openB[:1]

	for len(openA) >= 1 {
		for _, v := range openA {
			// Change Status
			status[v] = 2
			// Grab Candies:
			candiesCounter += candies[v]
			// Add keys:
			for _, kv := range keys[v] {
				myKeys[kv] = true
				currentKeys = append(currentKeys, kv)
			}
			// Add boxes:
			for _, bv := range containedBoxes[v] {
				myBoxes[bv] = true
				if 1 == status[bv] {
					openB = append(openB, bv)
				} else {
					currentBoxes = append(currentBoxes, bv)
				}
			}
		}
		// Iterange ove new obtained keys.
		// Try to open existed boxes.
		for _, box := range currentKeys {
			if _, ok := myBoxes[box]; ok {
				if 0 == status[box] {
					status[box] = 1
					openB = append(openB, box)
				}
			}
		}
		// Iterate over newClosed box, and check do them possible to open.
		for _, box := range currentBoxes {
			if _, ok := myKeys[box]; ok {
				if 0 == status[box] {
					status[box] = 1
					openB = append(openB, box)
				}
			}
		}
		currentBoxes = currentBoxes[:1]
		currentKeys = currentKeys[:1]
		openA, openB = openB, openA
		openB = openB[:1]
	}

	return candiesCounter
}
