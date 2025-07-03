// Leetcode: 3304. Find the K-th Character in String Game
// https://leetcode.com/problems/find-the-k-th-character-in-string-game-i/description/?envType=daily-question&envId=2025-07-03
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func kthCharacter(k int) byte {
	poligon := make([]byte, 2048)
	size := 1

	for size < k {
		for i := 0; i < size; i += 1 {
			poligon[size+i] = (poligon[i] + 1) % 26

		}
		size *= 2 // Size increased twice.
	}

	return poligon[k-1] + 'a'
}
