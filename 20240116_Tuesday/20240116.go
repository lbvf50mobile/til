// Leetcode: 380. Insert Delete GetRandom O(1). 
// https://leetcode.com/problems/insert-delete-getrandom-o1/

package main

type El struct {
	val int
	index int
	prev *El
	next *El
}

type RandomizedSet struct {
	slice [] int 
	used map[int] *El
	i int
	head *El
	tail *El
}


func Constructor() RandomizedSet {
	ans := RandomizedSet{make([]int,1000), make(map[int]*El), -1, nil, nil}
	ans.head = &El{0,0,nil,nil}
	ans.tail = &El{0,0,nil,nil}
	ans.head.next = ans.tail
	ans.tail.prev = ans.head
	return ans
}


func (this *RandomizedSet) Insert(val int) bool {
	if nil == this.used[val] {
		// Create an element.
		el := &El{val,0,nil,nil} 
		// Mark things used.
		this.used[val] = el
		// Insert element in the list.
		prev = this.tail.prev
		tail = this.tail
		prev.next = el
		tail.prev = el
		el.prev = prev
		el.next = tail
		// Add index.
		index := this.i + 1
		if index >= len(this.slice) {
			this.size = append(this.slice,val)
		}
		el.index = index
		
		return true
	}
	return false
    
}


func (this *RandomizedSet) Remove(val int) bool {
    
}


func (this *RandomizedSet) GetRandom() int {
    
}


/**
 * Your RandomizedSet object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Insert(val);
 * param_2 := obj.Remove(val);
 * param_3 := obj.GetRandom();
 */
