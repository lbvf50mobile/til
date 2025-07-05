// Leetcode: 1957. Delete Characters to Make Fancy String
// https://leetcode.com/problems/delete-characters-to-make-fancy-string/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func makeFancyString(s string) string {
	// Count and rewrite.
	ans := make([]byte, 0, len(s))

	prev := s[0]
	count := 1

	// Count consecutive chars, write down in answer as the consecutive line
	// stops.
	for i := 1; i < len(s); i += 1 {
		if prev == s[i] {
			count += 1
		} else {
			if count >= 2 {
				ans = append(ans, prev)
			}
			ans = append(ans, prev)
			count = 1
			prev = s[i]
		}
	}
	if count >= 2 {
		ans = append(ans, prev)
	}
	ans = append(ans, prev)
	return string(ans)

}
