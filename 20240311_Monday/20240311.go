// Leetcode: 791. Custom Sort String.
// https://leetcode.com/problems/custom-sort-string/

package main

import "sort"
import "fmt"
var p = fmt.Println

func customSortString(order string, s string) string {
	orderS := []byte(order)
	normaS := []byte(order)
	str := []byte(s)
	sort.Slice(normaS, func(i, j int) bool { return normaS[i] < normaS[j] })
	sort.Slice(str, func(i, j int) bool { return str[i] < str[j] })
	h := make(map[byte]byte)
	p(orderS, normaS)
	for i, v := range normaS {
		n, o := v, orderS[i]
		h[n] = o
	}
	ans := ""
	for _, v := range str {
		if ch, ok := h[v]; ok {
			ans += string(ch)
		} else {
			ans += string(v)
		}
	}
	return ans
}
