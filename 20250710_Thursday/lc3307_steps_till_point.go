// Leetcode: 3307. Find the K-th Character in String Game II
// https://leetcode.com/problems/find-the-k-th-character-in-string-game-ii/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"math/bits"
)

func kthCharacter(k int64, operations []int) byte {
	// Idea, what is idea?
	// The Idea is that need to count number of steps two power of two where k
	// is locatd.
	// Each steps cover (2**(n-1), 2**n].
	// P.S. This solution is 100% fast in Leetcode.

	k -= 1      // Now it is number of step.
	shifts := 0 // Number of invertions, or shifts, or change what ever.

	// Binary representation of the number it is a log in what opertaion it
	// had been involved.
	newk := uint64(k)

	for i := (bits.Len64(newk) - 1); i >= 0; i -= 1 {
		if (k>>i)&1 == 1 && 1 == operations[i] {
			shifts += 1
		}

	}

	return 'a' + byte(shifts%26)

}
