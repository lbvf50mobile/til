// Leetcode: 621. Task Scheduler.
// https://leetcode.com/problems/task-scheduler/

package main

import (
	"container/heap"
	//"fmt"
)

// var p = fmt.Println

type task struct {
	name   byte // Name of the task.
	last   int  // Last tick it used. -1 never used before.
	amount int  // Amount of tasks.
}

type Pq []*task

func (pq Pq) Len() int { return len(pq) }
func (pq Pq) Less(i, j int) bool {
	if pq[i].last == pq[j].last {
		return pq[i].amount > pq[j].amount
	}
	return pq[i].last < pq[j].last
}
func (pq Pq) Swap(i, j int) { pq[i], pq[j] = pq[j], pq[i] }

func (pq *Pq) Pop() any {
	old := *pq
	n := len(old)
	x := old[n-1]
	*pq = old[0 : n-1]
	return x
}
func (pq *Pq) Push(x any) {
	item := x.(*task)
	*pq = append(*pq, item)
}

func leastInterval(tasks []byte, n int) int {
	h := make(map[byte]*task)
	// 1. Need to agregate data about tasks.
	for _, v := range tasks {
		if tsk, ok := h[v]; ok {
			tsk.amount += 1
		} else {
			h[v] = &task{v, -1, 1}
		}
	}

	// 2. Need to fill a Heap.
	hp := make(Pq, 0)
	heap.Init(&hp)
	for _, v := range h {
		heap.Push(&hp, v)
	}
	ans := 0
	// 3. Start a ticks counter.
	// 4. Calculate the answer during the loop.
	for i := 1; 0 < len(hp); i += 1 {
		if -1 == hp[0].last || n < (i-hp[0].last) {
			x := heap.Pop(&hp).(*task)
			// p(string(x.name))
			x.last = i
			x.amount -= 1
			if x.amount > 0 {
				heap.Push(&hp, x)
			}
		} else {
			// p("Idle")
		}

		ans += 1
	}
	// 5. Return answer.
	return ans
}
