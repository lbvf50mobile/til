// Leetcode: 373. Find K Pairs with Smallest Sums.
// https://leetcode.com/problems/find-k-pairs-with-smallest-sums/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 278 ms, faster than 22.73% of Go online submissions for Find K Pairs
// with Smallest Sums.
// Memory Usage: 21.9 MB, less than 15.91% of Go online submissions for Find K
// Pairs with Smallest Sums.
// 2023.06.27 Daily Challenge.
package main

import (
	"container/heap"
)

func kSmallestPairs(nums1 []int, nums2 []int, k int) [][]int {
	// Based on Anna Kopteva's solution.
	// https://leetcode.com/problems/find-k-pairs-with-smallest-sums/discuss/3124119/Golang-one-MinHeap-solution
	ans := make([][]int, 0)
	mh := &mHeap{}
	heap.Init(mh)
	for i, v := range nums1 {
		heap.Push(mh, El{sum: v + nums2[0], i: i, j: 0})
	}
	for (!mh.Empty()) && k > 0 {
		cur := heap.Pop(mh).(El)
		i, j := cur.i, cur.j
		ans = append(ans, []int{nums1[i], nums2[j]})
		nj := j + 1
		if nj < len(nums2) {
			heap.Push(mh, El{sum: nums1[i] + nums2[nj], i: i, j: nj})
		}
		k -= 1
	}
	return ans
}

type El struct {
	sum int
	i   int
	j   int
}

type mHeap []El

func (h mHeap) Len() int           { return len(h) }
func (h mHeap) Less(i, j int) bool { return h[i].sum < h[j].sum }
func (h mHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h mHeap) Empty() bool        { return 0 == len(h) }

func (h *mHeap) Push(x interface{}) {
	*h = append(*h, x.(El))
}

func (h *mHeap) Pop() interface{} {
	x := *h
	ans := x[len(*h)-1]
	*h = x[:len(*h)-1]
	return ans
}
