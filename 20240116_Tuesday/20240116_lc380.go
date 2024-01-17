// Leetcode: 380. Insert Delete GetRandom O(1).
// https://leetcode.com/problems/insert-delete-getrandom-o1/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 178 ms, faster than 45.27% of Go online submissions for Insert
// Delete GetRandom O(1).
// Memory Usage: 321 MB, less than 5.05% of Go online submissions for Insert
// Delete GetRandom O(1).
// 2024.01.17.

package main

import "math/rand"

// Hey!
// Hash gives opportunity to add and remove key/pair.
// Array (slice) gives opportunity to ReturnRandom value.

// But Array cannot delete or add element in the middle of it.
// It is possbile only to delete the last element.

// So! Just swap the position of the element that need to remove to the end.
// Hash sores indices. And before deletion just swap index with a last element
// in the array. Ok. Let's try.

type RandomizedSet struct {
	index int         // Last index.
	a     []int       // Slice of elements.
	h     map[int]int // Stores indices.
}

func Constructor() RandomizedSet {
	ans := RandomizedSet{-1, make([]int, 10_000_000), make(map[int]int)}
	return ans
}

func (this *RandomizedSet) Insert(val int) bool {
	_, ok := this.h[val]
	if ok {
		return false
	}
	// Now always grows.
	this.index += 1
	if this.index == len(this.a) {
		this.a = append(this.a, 0)
	}
	this.a[this.index] = val
	this.h[val] = this.index
	return true
}

func (this *RandomizedSet) Remove(val int) bool {
	i, ok := this.h[val]
	if !ok {
		return false
	}
	// Swap indices.
	j := this.index
	s := this.a
	v1 := s[j]
	s[i], s[j] = s[j], s[i]
	this.h[v1] = i
	this.h[val] = j
	this.index -= 1 // Delete from the slice.
	delete(this.h, val)
	return true
}

func (this *RandomizedSet) GetRandom() int {
	if -1 == this.index {
		panic("Empty set.")
	}
	j := rand.Intn(this.index + 1)
	return this.a[j]
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Insert(val);
 * param_2 := obj.Remove(val);
 * param_3 := obj.GetRandom();
 */
