// Leetcode: 706. Design HashMap.
// https://leetcode.com/problems/design-hashmap/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 105 ms, faster than 43.96% of Go online submissions for Design
// HashMap.
// Memory Usage: 39 MB, less than 6.28% of Go online submissions for Design
// HashMap.
// 2023.10.04 Daily Challenge.

package main

import "fmt"

var p = fmt.Println

type MyHashMap struct {
	a [1_000_001]int
}

func Constructor() MyHashMap {
	ans := MyHashMap{}
	for i := 0; i < 1_000_001; i += 1 {
		ans.a[i] = -1
	}
	return ans
}

func (this *MyHashMap) Put(key int, value int) {
	this.a[key] = value
}

func (this *MyHashMap) Get(key int) int {
	return this.a[key]

}

func (this *MyHashMap) Remove(key int) {
	this.a[key] = -1
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Put(key,value);
 * param_2 := obj.Get(key);
 * obj.Remove(key);
 */
