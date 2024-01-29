// Leetcode: 232. Implement Queue using Stacks.
// https://leetcode.com/problems/implement-queue-using-stacks/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Implement
// Queue using Stacks.
// Memory Usage: 2 MB, less than 30.58% of Go online submissions for Implement
// Queue using Stacks.
// 2024.01.29 Daily Challenge.

package main

// 1. Need to have a Stack.
type stack struct {
	a []int
}

func construct() stack {
	return stack{make([]int, 0)}
}
func (x *stack) size() int {
	return len(x.a)
}
func (x *stack) push(v int) {
	x.a = append(x.a, v)
}
func (x *stack) pop() int {
	ans := x.a[len(x.a)-1]
	x.a = x.a[:len(x.a)-1]
	return ans
}

type MyQueue struct {
	t *stack
	f *stack
}

func Constructor() MyQueue {
	t, f := construct(), construct()
	return MyQueue{&t, &f}

}

func (this *MyQueue) Push(x int) {
	this.t.push(x)

}

func (this *MyQueue) Pop() int {
	s := this.t
	d := this.f
	n := s.size()
	for i := 0; i < (n - 1); i += 1 {
		d.push(s.pop())
	}
	ans := s.pop()
	for i := 0; i < (n - 1); i += 1 {
		s.push(d.pop())
	}
	return ans
}

func (this *MyQueue) Peek() int {
	s := this.t
	d := this.f
	n := s.size()
	ans := 0
	for i := 0; i < n; i += 1 {
		ans = s.pop()
		d.push(ans)
	}
	for i := 0; i < n; i += 1 {
		s.push(d.pop())
	}
	return ans

}

func (this *MyQueue) Empty() bool {
	return 0 == this.t.size()
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(x);
 * param_2 := obj.Pop();
 * param_3 := obj.Peek();
 * param_4 := obj.Empty();
 */
