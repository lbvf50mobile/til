// Leetcode: 1992. Find All Groups of Farmland.
// https://leetcode.com/problems/find-all-groups-of-farmland/
// = = = = = = = = = = = = = =
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =

package main

import "fmt"

var p = fmt.Println

// Aim of this solution is to use methods and factory struct, as well as
// insead of DFS use nested loop to fill the visited places and rectagle to.
// Because moving from left to right from top to bottom first meet starting
// point of a rectangle and then end point of a rectangle.

// How it going to work.
// 0. Define stuctures types for recatgle and for the task itself.
// 1. Create a factory for the task structures.
// 2. During the nested loop iterate over all cells, start filling the
// rectabgle with it is `1` and it is unvisited, save returned structure into
// the answer.

func findFarmland(land [][]int) [][]int {
	task := farmLandFactory(land)
	for i := 0; i < task.m; i += 1 {
		for j := 0; j < task.n; j += 1 {
			if 1 == task.l[i][j] && (!task.v[i][j]) {
				lnd := task.fillLand(i, j)
				task.ans = append(task.ans, []int{lnd.iS, lnd.jS, lnd.iE, lnd.jE})
				task.drawV("from main")
			}
		}
	}
	return task.ans
}

type landS struct {
	iS int // i start.
	jS int // j start.
	iE int // i End.
	jE int // j End.
}

type farmLand struct {
	m, n int
	v    [][]bool
	l    [][]int
	ans  [][]int
}


func farmLandFactory(land [][]int) *farmLand {
	m, n := len(land), len(land[0])
	v := make([][]bool, m)
	l := land
	ans := make([][]int, 0)
	for i, _ := range v {
		v[i] = make([]bool, n)
	}
	return &farmLand{
		m:   m,
		n:   n,
		v:   v,
		l:   l,
		ans: ans,
	}
}

func (f *farmLand) drawV(where string){
	p("Drwing v.",where)
	for _, v := range f.v {
		p(v)
	}
}

// Get postion of the first cell of the land,
// return a land struct, implemented by a nested loop.
func (f *farmLand) fillLand(r, c int) landS {
	p(r, c, f.m, f.n)
	rect := landS{r, c, r, c}
	for i := r; i < f.m && 1 == f.l[i][c]; i += 1 { // <== here.
		p("this is i:", i)
		for j := c; j < f.n && 1 == f.l[i][j]; j += 1 { // <== here.
			p("this is i and j", i, j)
			f.v[j][j] = true // I saw i, j here! Here!
			f.drawV("from fill")
			rect.iE = i // `i` always grows.
			rect.jE = j // `j` always grows too.
		}
	}
	return rect
}
