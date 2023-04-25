// Leetcode: 2336. Smallest Number in Infinite Set.
// https://leetcode.com/problems/smallest-number-in-infinite-set/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 41 ms, faster than 72.73% of Go online submissions for Smallest
// Number in Infinite Set.
// Memory Usage: 8.6 MB, less than 6.06% of Go online submissions for Smallest
// Number in Infinite Set.
// 2023.04.25 Daily Challenge.
package main

import "sort"

type SmallestInfiniteSet struct {
	i int
	h map[int]bool
	b []int
}

func Constructor() SmallestInfiniteSet {
	return SmallestInfiniteSet{1, make(map[int]bool),
		make([]int, 0)}

}

func (this *SmallestInfiniteSet) PopSmallest() int {
	if 0 == len(this.b) || this.b[0] > this.i {
		this.i += 1
		this.h[this.i-1] = true
		return this.i - 1
	} else {
		x := this.b[0]
		this.b = this.b[1:]
		this.h[x] = true
		return x
	}
}

func (this *SmallestInfiniteSet) AddBack(num int) {
	a, b := this.h[num]
	if true != b {
		return
	}
	if true != a {
		return
	}
	if this.i-1 == num {
		this.i -= 1
	} else {
		this.b = append(this.b, num)
		sort.Ints(this.b)
	}
	this.h[num] = false
}

/**
 * Your SmallestInfiniteSet object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.PopSmallest();
 * obj.AddBack(num);
 */
