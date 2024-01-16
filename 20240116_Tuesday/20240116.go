// Leetcode: 380. Insert Delete GetRandom O(1).
// https://leetcode.com/problems/insert-delete-getrandom-o1/

// Finish as soon as possiple.
// Do once.
// Swap. Delete Last in a separate methods.

package main

import "math/rand"

// import "fmt"

// var p = fmt.Println

type El struct {
	i int // Indices in the main. Slice.
	p *El
	n *El
}

type RandomizedSet struct {
	slice []int // Values.
	used  map[int]*El
	index int
	head  *El
	tail  *El
}

func Constructor() RandomizedSet {
	ans := RandomizedSet{}
	ans.slice = make([]int, 10_000_000)
	ans.used = make(map[int]*El)
	ans.index = -1 // No elements yet.
	ans.head = &El{}
	ans.tail = &El{}
	// Head points tail.
	// Tail Points head.
	a, b := ans.head, ans.tail
	a.n = b
	b.p = a
	return ans
}

func (this *RandomizedSet) Insert(val int) bool {
	el := this.used[val]
	// Start from the FUSES.
	if nil != el {
		return false
	}
	// 100% such element need to add.
	// index grows.
	this.index += 1
	// Fuse. What if need increase a slice.
	if this.index == len(this.slice) {
		this.slice = append(this.slice, 0)
	}
	// Okey now straing forward.
	a, b, c := this.tail.p, &El{}, this.tail
	// Need to insert `b` between `a` and `c`.
	a.n = b
	b.p = a
	b.n = c
	c.p = b
	// Done now b in the list.
	b.i = this.index
	this.used[val] = b
	this.slice[b.i] = val
	return true
}

func (this *RandomizedSet) Remove(val int) bool {
	// Fuces.
	if -1 == this.index {
		return false
	}
	el := this.used[val]
	if nil == el {
		return false
	}
	this.Swap(el)
	this.RemoveLast()
	return true
}

// Swap val with with end.
func (this *RandomizedSet) Swap(el *El) {
	if -1 == this.index {
		panic("Swap -1")
	}
	if nil == el {
		panic("Swap nil")
	}
	// Lets swap in the hash.
	s := this.slice
	a,b := el, this.tail.p
	ai,bi := a.i, b.i
	av,bv := s[ai],s[bi]
	this.used[av] = b
	this.used[bv] = a
	s[ai],s[bi] = s[bi],s[ai] // swap in slice.
	a.i, b.i = bi, ai
}

func (this *RandomizedSet) RemoveLast() {
	this.index -= 1
	a, b, c := this.tail.p.p, this.tail.p, this.tail
	a.n = c
	c.p = a
	b.n = nil
	b.p = nil
	val := this.slice[b.i]
	this.used[val] = nil
}

func (this *RandomizedSet) GetRandom() int {
	return this.slice[rand.Intn(this.index+1)]
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Insert(val);
 * param_2 := obj.Remove(val);
 * param_3 := obj.GetRandom();
 */
