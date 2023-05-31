// Leetcode: 705. Design HashSet.
// https://leetcode.com/problems/design-hashset/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 77 ms, faster than 66.37% of Go online submissions for Design
// HashSet.
// Memory Usage: 7.7 MB, less than 89.38% of Go online submissions for Design
// HashSet.
// 2023.05.31 Updated.
package main

type MyHashSet struct {
	x []uint64
}

var ones uint64 = 18446744073709551615

func Constructor() MyHashSet {
	ans := MyHashSet{}
	ans.x = make([]uint64, 17000)
	return ans
}

func (this *MyHashSet) Add(key int) {
	i := get_i(key) // Index.
	m := get_m(key) // Mask.
	x := this.x[i]
	this.x[i] = x | m
}

func (this *MyHashSet) Remove(key int) {
	i := get_i(key) // Index.
	m := get_m(key) // Mask.
	x := this.x[i]
	if 0 == x&m {
		return
	}
	inverse := (ones ^ m)
	this.x[i] = x & inverse
}

func (this *MyHashSet) Contains(key int) bool {
	i := get_i(key) // Index.
	m := get_m(key) // Mask.
	x := this.x[i]
	return 0 != x&m
}
func get_i(key int) int {
	// https://stackoverflow.com/a/6878625/8574922
	return key / 63
}

func get_m(key int) uint64 {
	// https://stackoverflow.com/a/6878625/8574922
	return 1 << (key % 63)
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Add(key);
 * obj.Remove(key);
 * param_3 := obj.Contains(key);
 */
