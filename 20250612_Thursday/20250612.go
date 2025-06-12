// Leetcode: 1061. Lexicographically Smallest Equivalent String
// https://leetcode.com/problems/lexicographically-smallest-equivalent-string/?envType=daily-question&envId=2025-06-05
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime 0 ms Beats 100.00%
// 4.16 MB Beats 82.59%

package main

// import "fmt"

// var p = fmt.Println

const N = 26

func smallestEquivalentString(s1 string, s2 string, baseStr string) string {

	prnt := make([]byte, N)
	initiatePrnt(prnt)
	// p(byte2str(prnt))

	root := make([]byte, N)
	min := make([]byte, N)
	a, b, c := []byte(s1), []byte(s2), []byte(baseStr)
	mapChrToIndex(a, b, c)

	// Join Sets
	for i, v := range a {
		v1 := b[i]
		if find(v, prnt) != find(v1, prnt) {
			union(v, v1, prnt)
		}
	}
	// Find roots
	for i := 0; i < N; i += 1 {
		root[i] = find(byte(i), prnt)
	}
	// p(byte2str(root))

	// Find min
	// i - root
	// j - minimum value in set with such root
	for i := 0; i < N; i += 1 {
		// Find minimum for root.
		for j := 0; j < N; j += 1 {
			if root[j] == byte(i) {
				min[i] = byte(j)
				break
			}
		}
		// Set this minimum for all elements with such root.
		// We find only for root. But this root must be
		// for all element
		for j := 0; j < N; j += 1 {
			if root[j] == byte(i) {
				min[j] = min[i]
			}
		}
	}
	// Map baseString to minimum
	// and convert to char
	for i, v := range c {
		c[i] = min[v] + 'a'
	}
	return string(c)
}

func initiatePrnt(prnt []byte) {
	for i := 0; i < N; i += 1 {
		prnt[i] = byte(i)
	}
}

func mapChrToIndex(x ...[]byte) {
	for _, val := range x {
		for i, v := range val {
			val[i] = byte(v) - 'a'
		}
	}
}
func find(x byte, prnt []byte) byte {
	if prnt[x] == x {
		return x
	} else {
		return find(prnt[x], prnt)
	}
}
func union(x, y byte, prnt []byte) {
	prnt[find(y, prnt)] = find(x, prnt)
}

func byte2str(x []byte) string {
	tmp := ""
	for _, v := range x {
		tmp += string(v + 'a')
	}
	return tmp

}
