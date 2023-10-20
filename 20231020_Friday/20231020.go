// Leetcode: 341. Flatten Nested List Iterator.
// https://leetcode.com/problems/flatten-nested-list-iterator
// = = = = = = = = = = = = = 
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 63.08% of Go online submissions for Flatten Nested
// List Iterator.
// Memory Usage: 5.6 MB, less than 30.77% of Go online submissions for Flatten
// Nested List Iterator.
// 2023.10.20 Daily Challenge.

/**
 * // This is the interface that allows for creating nested lists.
 * // You should not implement it, or speculate about its implementation
 * type NestedInteger struct {
 * }
 *
 * // Return true if this NestedInteger holds a single integer, rather than a nested list.
 * func (this NestedInteger) IsInteger() bool {}
 *
 * // Return the single integer that this NestedInteger holds, if it holds a single integer
 * // The result is undefined if this NestedInteger holds a nested list
 * // So before calling this method, you should have a check
 * func (this NestedInteger) GetInteger() int {}
 *
 * // Set this NestedInteger to hold a single integer.
 * func (n *NestedInteger) SetInteger(value int) {}
 *
 * // Set this NestedInteger to hold a nested list and adds a nested integer to it.
 * func (this *NestedInteger) Add(elem NestedInteger) {}
 *
 * // Return the nested list that this NestedInteger holds, if it holds a nested list
 * // The list length is zero if this NestedInteger holds a single integer
 * // You can access NestedInteger's List element directly if you want to modify it
 * func (this NestedInteger) GetList() []*NestedInteger {}
 */
package main

type NestedIterator struct {
	i    int
	data []int
}

type pair struct {
	i int
	l []*NestedInteger
}

func Constructor(nestedList []*NestedInteger) *NestedIterator {
	stack := make([]*pair, 0)
	stack = append(stack, &pair{0, nestedList})
	var dt []int
	for 0 != len(stack) {
		ln := len(stack)
		tmp := stack[ln-1]
		stack = stack[0 : ln-1]
		i, lst := tmp.i, tmp.l
		for i < len(lst) {
			if lst[i].IsInteger() {
				dt = append(dt, lst[i].GetInteger())
				i += 1
			} else {
				stack = append(stack, &pair{i + 1, lst})
				lst = lst[i].GetList()
				i = 0
			}
		}
	}

	return &NestedIterator{0, dt}
}

func (this *NestedIterator) Next() int {
	i := this.i
	this.i += 1
	return this.data[i]
}

func (this *NestedIterator) HasNext() bool {
	return this.i < len(this.data)
}
