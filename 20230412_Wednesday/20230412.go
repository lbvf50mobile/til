// Leetcode: 71. Simplify Path.
// https://leetcode.com/problems/simplify-path/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 42.08% of Go online submissions for Simplify Path.
// Memory Usage: 3.1 MB, less than 38.24% of Go online submissions for Simplify
// Path.
// 2023.04.14 Update.
import "strings"

func simplifyPath(path string) string {
	// Create a splited slice of elements.
	els := strings.Split(path, "/")

	// Generate answer slices.
	answer := []string{}

	// Make a loop where skip unappropriate elements.
	// And push and pop values to the answer.
	for _, x := range els {
		if "" == x {
			continue
		}
		if "." == x {
			continue
		}
		if ".." == x {
			if 0 != len(answer) {
				// Pop.
				answer = answer[:len(answer)-1]
			}
		} else {
			// Push.
			answer = append(answer, x)
		}
	}
	// Make first return. On condintion.
	if 0 == len(answer) {
		return "/"
	}

	// Make general return.
	return "/" + strings.Join(answer, "/")
}
