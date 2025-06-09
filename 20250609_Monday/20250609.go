// Leetcode: 3403. Find the Lexicographically Largest String From the Box I
// https://leetcode.com/problems/find-the-lexicographically-largest-string-from-the-box-i/description/?envType=daily-question&envId=2025-06-04
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

func answerString(word string, numFriends int) string {
	if 1 == numFriends {
		return word
	}
	n := len(word)
	maxWrd := word[0:n-numFriends+1]
	for i := 1; i < n; i+=1 {
		end := min(n, i + n-numFriends +1)
		tmp := word[i:end]
		if tmp > maxWrd {
			maxWrd = tmp
		}
	}
	return maxWrd
}
