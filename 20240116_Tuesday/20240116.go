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
	//p("Insert", val, this.slice[:this.index+1])
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
	//p("After insert", val, this.slice[:this.index+1])
	return true
}

func (this *RandomizedSet) Remove(val int) bool {
	//p("Remove", val, this.slice[:this.index+1])
	// Fuces.
	if -1 == this.index {
		return false
	}
	el := this.used[val]
	if nil == el {
		return false
	}
	this.SwapWithLast(el)
	this.RemoveLast()
	//p("After Remove", val, this.slice[:this.index+1])
	return true
}

// Swap val with with end.
func (this *RandomizedSet) SwapWithLast(el *El) {
	//p("Swap")
	if -1 == this.index {
		panic("Swap -1")
	}
	if nil == el {
		panic("Swap nil")
	}
	s := this.slice
	// What is the task of this swap?
	// The last element would be deleted.
	del := this.tail.p
	// Del would be deleted!
	// And it's index would be delted!
	// Need to swap values, and hash ponters.
	di, ei := del.i, el.i // Do not touch indices!
	dv, ev := s[di], s[ei]
	// Now need to swap values in the slice.
	s[di], s[ei] = s[ei], s[di] // Values are changed.
	// value for delete is at the last index element.
	// Now time to swap hash.
	this.used[ev] = del
	this.used[dv] = el // El vould not be deleted.
}

func (this *RandomizedSet) RemoveLast() {
	this.index -= 1
	a, b, c := this.tail.p.p, this.tail.p, this.tail
	a.n = c
	c.p = a
	b.n = nil
	b.p = nil
	val := this.slice[b.i]
	//p("Removing last",val,"index",b.i)
	//p(this.slice[:this.index+2])
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
