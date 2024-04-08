// Leetcode: 1700. Number of Students Unable to Eat Lunch.
// https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 43.04% of Go online submissions for Number of
// Students Unable to Eat Lunch.
// Memory Usage: 2.4 MB, less than 40.51% of Go online submissions for Number
// of Students Unable to Eat Lunch.
// 2024.04.08 Daily Challenge.

package main

// import "fmt"

// var p = fmt.Println

type queue struct {
	stud  []int
	i     int
	j     int
	size  int
	fails int
}

func (q *queue) get() int {
	return q.stud[q.i]
}
func (q *queue) leave() {
	q.size -= 1
	q.fails = 0
	q.i = (q.i + 1) % len(q.stud)
}
func (q *queue) back() {
	q.fails += 1
	old := q.i
	q.i = (q.i + 1) % len(q.stud)
	q.j = (q.j + 1) % len(q.stud)
	q.stud[q.j] = q.stud[old] // <= Here.
}
func (q *queue) state() []int {
	ans := make([]int, 0)
	for i := q.i; true; i = (i + 1) % len(q.stud) {
		ans = append(ans, q.stud[i])
		if i == q.j {
			break
		}
	}
	return ans
}

func countStudents(students []int, sandwiches []int) int {
	n := len(students)
	q := &queue{students, 0, n - 1, n, 0}
	i := 0
	for j := 1; true; j += 1 {
		if 0 == q.size {
			return q.size
		}
		if q.fails > q.size {
			return q.size
		}
		// p(j)
		// p(q.state(), q.size, q.fails)
		// p(q.i, q.j)
		// p(sandwiches[i:])
		if q.get() == sandwiches[i] {
			// p("leave")
			q.leave()
			i += 1
		} else {
			// p("back")
			q.back()
		}
	}
	return 0
}
