// Leetcode: 380. Insert Delete GetRandom O(1).
// https://leetcode.com/problems/insert-delete-getrandom-o1/

package main

import "math/rand"

// import "fmt"

// var p = fmt.Println

type El struct {
	val   int
	index int
	prev  *El
	next  *El
}

type RandomizedSet struct {
	slice []int
	used  map[int]*El
	i     int
	head  *El
	tail  *El
}

func Constructor() RandomizedSet {
	ans := RandomizedSet{make([]int, 0), make(map[int]*El), -1, nil, nil}
	ans.head = &El{0, 0, nil, nil}
	ans.tail = &El{0, 0, nil, nil}
	ans.head.next = ans.tail
	ans.tail.prev = ans.head
	return ans
}

func (this *RandomizedSet) Insert(val int) bool {
	//p("insert", val)
	if nil == this.used[val] {
		// Create an element.
		el := &El{val, 0, nil, nil}
		// Mark things used.
		this.used[val] = el
		// Insert element in the list.
		prev := this.tail.prev
		tail := this.tail
		prev.next = el
		tail.prev = el
		el.prev = prev
		el.next = tail
		// Add index.
		// Increaste total index.
		this.i += 1
		// Set index.
		index := this.i
		// Update slice.
		if index >= len(this.slice) {
			this.slice = append(this.slice, val)
		}
		el.index = index
		this.slice[index] = val
		//p("True", this.i, this.slice)
		return true
	}
	//p("False", this.i, this.slice)
	return false
}

func (this *RandomizedSet) Remove(val int) bool {
	//p("Delete", val)
	el := this.used[val]
	if nil == el {
		//p("False", this.i, this.slice)
		return false
	}
	tail := this.tail
	last := tail.prev
	before := last.prev
	slice := this.slice
	dI := el.index   // Delel Index.
	lI := last.index // Last Index.
	// 1) Swap.
	// 1.1) Swap in slice.
	slice[dI], slice[lI] = slice[lI], slice[dI]
	// 1.2) Swap values.
	el.val, last.val = last.val, el.val
	// 1.3) Swap indicies.
	el.index, last.index = last.index, el.index
	// 1.4) Cut the value from the list.
	before.next = tail
	tail.prev = before
	// Delete last. <== Here.
	last.next = nil
	last.prev = nil
	// 1.5) Decrease the total counter.
	this.i -= 1
	// 1.6) Make unused.
	this.used[val] = nil
	//p("True", this.i, this.slice)
	return true
}

func (this *RandomizedSet) GetRandom() int {
	if -1 == this.i {
		panic("Empty set.")
	}
	ans := this.slice[rand.Intn(this.i+1)]
	//p(ans, this.i, this.slice)
	return ans
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Insert(val);
 * param_2 := obj.Remove(val);
 * param_3 := obj.GetRandom();
 */
