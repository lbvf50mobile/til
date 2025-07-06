// Leetcode: 1865. Finding Pairs With a Certain Sum
// https://leetcode.com/problems/finding-pairs-with-a-certain-sum/description/?envType=daily-question&envId=2025-07-06
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

// int count(int tot) Returns the number of pairs (i, j) such that nums1[i] + nums2[j] == tot.
// nums1[i] == tot - nums2[j]

type FindSumPairs struct {
	n1 []int
	n2 []int
	m1 map[int]int
	m2 map[int]int
}

func count(x []int) map[int]int {
	ans := make(map[int]int)
	for _, v := range x {
		ans[v] += 1
	}
	return ans
}

func Constructor(nums1 []int, nums2 []int) FindSumPairs {
	x := FindSumPairs{}
	x.m1 = count(nums1)
	x.m2 = count(nums2)
	x.n1 = make([]int, len(nums1))
	x.n2 = make([]int, len(nums2))
	copy(x.n1, nums2)
	copy(x.n2, nums2)
	return x
}

func (this *FindSumPairs) Add(index int, val int) {
	oldVal := this.n2[index]
	newVal := oldVal + val
	this.m2[oldVal] -= 1
	this.m2[newVal] += 1
	this.n2[index] = newVal
	// No needed because 0 is used in adding..
	// if 0 == this.m2[oldVal] {
	// 	delete(this.m2, oldVal)
	// }

}

func (this *FindSumPairs) Count(tot int) int {
	ans := 0
	for v1, amount1 := range this.m1 {
		// v2 = tot - v1
		v2 := tot - v1
		if v2 <= 0 {
			continue
		}
		amount2, ok := this.m2[v2]
		if ok {
			ans += amount1 * amount2
		}
	}
	return ans
}

/**
 * Your FindSumPairs object will be instantiated and called as such:
 * obj := Constructor(nums1, nums2);
 * obj.Add(index,val);
 * param_2 := obj.Count(tot);
 */
