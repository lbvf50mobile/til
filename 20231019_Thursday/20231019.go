// Leetcode: 844. Backspace String Compare.
// https://leetcode.com/problems/backspace-string-compare/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 75.78% of Go online submissions for Backspace
// String Compare.
// Memory Usage: 2 MB, less than 33.54% of Go online submissions for Backspace
// String Compare.
// 2023.10.19 Daily Challenge.
package main

type bstring struct {
	size int
	chrs []byte
}

func backspaceCompare(s string, t string) bool {
	a, b := &bstring{len(s), []byte(s)}, &bstring{len(t), []byte(t)}
	a.perform()
	b.perform()
	return a.compare(b)
}

func (s *bstring) perform() {
	// W is index of last written.
	w := -1 // -1 means did not write at all.
	for r := 0; r < s.size; r += 1 {
		x := s.chrs[r]
		if '#' == x {
			if w > -1 {
				w -= 1
			}
		} else {
			w += 1
			s.chrs[w] = x
		}
	}
	s.size = w + 1
}

func (s *bstring) compare(x *bstring) bool {
	if s.size != x.size {
		return false
	}
	for i := 0; i < s.size; i += 1 {
		if s.chrs[i] != x.chrs[i] {
			return false
		}
	}
	return true
}
