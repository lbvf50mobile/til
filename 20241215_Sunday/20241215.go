// Leetcode: 1792. Maximum Average Pass Ratio
// https://leetcode.com/problems/maximum-average-pass-ratio/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 764 ms, faster than 50.00% of Go online submissions for Maximum
// Average Pass Ratio.
// Memory Usage: 21.2 MB, less than 100.00% of Go online submissions for
// Maximum Average Pass Ratio.
// 2024.12.15 Daily Challenge.

package main

import (
	"container/heap"
	// "fmt"
)
// var p = fmt.Println

// Bomba is max heap.
type Bomba [][]int

func (h Bomba) Len() int { return len(h) }
func (h Bomba) Less(i, j int) bool {
	var a, b float64
	var an, bn float64
	a = float64(h[i][0]) / float64(h[i][1])
	b = float64(h[j][0]) / float64(h[j][1])
	an = float64(h[i][0]+1) / float64(h[i][1]+1)
	bn = float64(h[j][0]+1) / float64(h[j][1]+1)
	return an - a > bn - b
}
func (h Bomba) Swap(i, j int) {
	h[i], h[j] = h[j], h[i]
}

func (h *Bomba) Push(x any) {
	*h = append(*h, x.([]int))
}
func (h *Bomba) Pop() any {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func maxAverageRatio(classes [][]int, extraStudents int) float64 {
	tmp := Bomba(classes)
	h := &tmp
	heap.Init(h)
	for i := 0; i < extraStudents; i += 1 {
		tmp := heap.Pop(h).([]int)
		// p(i+1, tmp[0], tmp[1], float64(tmp[0])/float64(tmp[1]))
		heap.Push(h, []int{tmp[0] + 1, tmp[1] + 1})
	}
	tmp2 := [][]int(*h)
	var ans float64
	for _, v := range tmp2 {
		ans += float64(v[0]) / float64(v[1])
	}
	ans = ans / float64(len(tmp2))
	return ans
}
