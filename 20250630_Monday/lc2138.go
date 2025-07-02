// Leetcode: 2138. Divide a String Into Groups of Size k
// https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/description/?envType=daily-question&envId=2025-06-22
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func divideString(s string, k int, fill byte) []string {
	size := len(s) / k
	if 0 != len(s)%k {
		size += 1
	}
	ans := make([]string, 0, size)
	n := len(s)
	// Two loops: Outer one till i < n;
	// Inner implements k steps, to fill the group.
	for i := 0; i < n; {
		push := ""
		for j := 0; j < k; i, j = i+1, j+1 {
			if i < n {
				push += string(s[i])
			} else {
				push += string(fill)
			}
		}
		ans = append(ans, push)
	}
	return ans
}
