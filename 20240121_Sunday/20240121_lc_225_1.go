// Leetcode: 225. Implement Stack using Queues.
// https://leetcode.com/problems/implement-stack-using-queues/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Implement
// Stack using Queues.
// Memory Usage: 2 MB, less than 24.55% of Go online submissions for Implement
// Stack using Queues.
// 2024.01.21.
// https://gist.github.com/lbvf50mobile/1777843c4e508e945d8014cfb00f2c25

package main

type q struct {
	s []int
}

func cnstr() q {
	return q{make([]int, 0)}
}
func (x *q) size() int {
	return len(x.s)
}
func (x *q) pop() int {
	n := len(x.s)
	ans := x.s[n-1]
	x.s = x.s[:n-1]
	return ans
}
func (x *q) unshift(a int) {
	x.s = append([]int{a}, x.s...)
}

type MyStack struct {
	t *q
	f *q
	o bool
}

func Constructor() MyStack {
	t, f := cnstr(), cnstr()
	return MyStack{&t, &f, true}
}

func (this *MyStack) Push(x int) {
	if this.o {
		this.t.unshift(x)
	} else {
		this.f.unshift(x)
	}
}

func (this *MyStack) Pop() int {
	if this.o {
		// Work with True.
		n := this.t.size() // T
		for i := 0; i < (n - 1); i += 1 {
			x := this.t.pop() // Get from T.
			this.f.unshift(x) // Put to F.
		}
		ans := this.t.pop() // Last in T.
		this.o = !this.o    // Switch.
		return ans
	} else {
		n := this.f.size() // Work with F.
		for i := 0; i < (n - 1); i += 1 {
			x := this.f.pop() // GEt from F.
			this.t.unshift(x) // Put to T.
		}
		ans := this.f.pop() // Last from F.
		this.o = !this.o
		return ans
	}
}

func (this *MyStack) Top() int {
	var last int
	if this.o {
		n := this.t.size()
		for i := 0; i < n; i += 1 {
			x := this.t.pop() // Get from T.
			this.f.unshift(x)
			last = x // <= Here.
		}
		this.o = !this.o

	} else {
		n := this.f.size()
		for i := 0; i < n; i += 1 {
			x := this.f.pop() // Get from F.
			this.t.unshift(x)
			last = x // <= Here.
		}
		this.o = !this.o
	}
	return last
}

func (this *MyStack) Empty() bool {
	if this.o {
		return 0 == this.t.size()
	} else {
		return 0 == this.f.size()
	}
}

/**
 * Your MyStack object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(x);
 * param_2 := obj.Pop();
 * param_3 := obj.Top();
 * param_4 := obj.Empty();
 */
