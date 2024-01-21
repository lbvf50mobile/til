// Leetcode: 225. Implement Stack using Queues.
// https://leetcode.com/problems/implement-stack-using-queues/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 77.23% of Go online submissions for Implement
// Stack using Queues.
// Memory Usage: 2 MB, less than 24.55% of Go online submissions for Implement
// Stack using Queues.
// 2024.01.21.
// https://gist.github.com/lbvf50mobile/1777843c4e508e945d8014cfb00f2c25

package main

type MyStack struct {
	t   []int
	f   []int
	ord bool
}

func Constructor() MyStack {
	return MyStack{make([]int, 0), make([]int, 0), true}

}

func (this *MyStack) Push(x int) {
	if this.ord {
		this.t = append([]int{x}, this.t...)
	} else {
		this.f = append([]int{x}, this.f...)
	}
}

func (this *MyStack) Pop() int {
	if this.ord {
		n := len(this.t)
		for i := 0; i < (n - 1); i += 1 {
			tmp := len(this.t)
			x := this.t[tmp-1]
			this.t = this.t[:tmp-1]
			this.f = append([]int{x}, this.f...)
		}
		ans := this.t[0]
		this.t = this.t[:0]
		this.ord = !this.ord
		return ans
	} else {
		n := len(this.f)
		for i := 0; i < (n - 1); i += 1 {
			tmp := len(this.f)
			x := this.f[tmp-1]
			this.f = this.f[:tmp-1]
			this.t = append([]int{x}, this.t...)
		}
		ans := this.f[0]
		this.f = this.f[:0]
		this.ord = !this.ord
		return ans
	}

}

func (this *MyStack) Top() int {

	if this.ord {
		n := len(this.t)
		lst := this.t[n-1]
		this.t = this.t[:n-1]
		this.f = append([]int{lst}, this.f...)
		for 0 != len(this.t) {
			n = len(this.t)
			lst = this.t[n-1]
			this.t = this.t[:n-1]
			this.f = append([]int{lst}, this.f...)
		}
		this.ord = !this.ord
		return lst
	} else {
		n := len(this.f)
		lst := this.f[n-1]
		this.f = this.f[:n-1]
		this.t = append([]int{lst}, this.t...)
		for 0 != len(this.f) {
			n = len(this.f)
			lst = this.f[n-1]
			this.f = this.f[:n-1]
			this.t = append([]int{lst}, this.t...)

		}
		this.ord = !this.ord
		return lst
	}
}

func (this *MyStack) Empty() bool {
	if this.ord {
		return 0 == len(this.t)
	} else {
		return 0 == len(this.f)
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
