// Leetcode: 1376. Time Needed to Inform All Employees.
// https://leetcode.com/problems/time-needed-to-inform-all-employees/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 223 ms, faster than 50.95% of Go online submissions for Time Needed
// to Inform All Employees.
// Memory Usage: 18.8 MB, less than 38.57% of Go online submissions for Time
// Needed to Inform All Employees.
// 2023.06.05 Update.
package main

func numOfMinutes(n int, headID int, manager []int, informTime []int) int {
	// Adjacency list.
	al := make([][]int, n)
	// Making an adjacency list, each index stores ids of an subordiante
	// employees.
	for i := 0; i < n; i += 1 {
		al[i] = make([]int, 0)
	}
	for i := 0; i < n; i += 1 {
		if -1 == manager[i] {
			continue
		}
		al[manager[i]] = append(al[manager[i]], i)
	}
	mt := -1000 // Max time.
	q := make([][]int, 1)
	tmp := []int{headID, 0}
	q[0] = tmp
	for 0 < len(q) {
		i, t := q[0][0], q[0][1]
		if t > mt {
			mt = t
		}
		q = q[1:]
		// i - parent, j - child.
		for _, j := range al[i] {
			tmp := []int{j, t + informTime[i]}
			q = append(q, tmp)
		}
	}
	return mt
}
