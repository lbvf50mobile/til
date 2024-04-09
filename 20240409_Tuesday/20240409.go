// Leetcode: 2073. Time Needed to Buy Tickets.
// https://leetcode.com/problems/time-needed-to-buy-tickets/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 53.85% of Go online submissions for Time Needed
// to Buy Tickets.
// Memory Usage: 2.4 MB, less than 17.95% of Go online submissions for Time
// Needed to Buy Tickets.
// 2024.04.09 Daily Challenge.

package main

type queue struct {
	i int
	j int
	u []int
}

func createQueue(size int) *queue {
	u := make([]int, size)
	for i, _ := range u {
		u[i] = i
	}
	return &queue{0, size - 1, u}
}

func (q *queue) first() int {
	return q.u[q.i]
}

func (q *queue) swap() {
	old := q.i
	q.i = (q.i + 1) % len(q.u)
	q.j = (q.j + 1) % len(q.u)
	q.u[q.j] = q.u[old]
}
func (q *queue) leave() {
	q.i = (q.i + 1) % len(q.u)
}

func timeRequiredToBuy(tickets []int, k int) int {
	q := createQueue(len(tickets))
	time := 0
	if 0 == tickets[k] {
		return time
	}
	for time = 1; true; time += 1 {
		i := q.first()
		// The last ticket for the person.
		if k == i && 1 == tickets[i] {
			break
		}
		tickets[i] -= 1
		if 0 == tickets[i] {
			// Leave the queue.
			q.leave()
		} else {
			// Go back.
			q.swap()
		}
	}
	return time
}
