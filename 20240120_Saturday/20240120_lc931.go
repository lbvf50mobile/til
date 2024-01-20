// Leetcode: 931. Minimum Falling Path Sum.
// https://leetcode.com/problems/minimum-falling-path-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 21 ms, faster than 9.68% of Go online submissions for Minimum
// Falling Path Sum.
// Memory Usage: 7.2 MB, less than 5.14% of Go online submissions for Minimum
// Falling Path Sum.
// 2023.01.20.
// https://gist.github.com/lbvf50mobile/edc8f0cd371519d0e22d46c35809caf0

package main

// import "fmt"
//var p = fmt.Println

var m, n int
var mem [][]int
var v [][]bool
var mx [][]int

func minFallingPathSum(matrix [][]int) int {
	// Recursion.
	mx = matrix
	m, n = len(mx), len(mx[0]) // <= Here.

	mem = make([][]int, m)
	v = make([][]bool, m)
	for i := 0; i < m; i += 1 {
		mem[i] = make([]int, n)
		v[i] = make([]bool, n)
	}

	ans, _ := rec(m-1, 0)
	//p(ans)
	for j := 1; j < n; j += 1 {
		tmp, ok := rec(m-1, j)
		//p(tmp)
		if ok && tmp < ans {
			ans = tmp
		}
	}
	return ans
}

func rec(i, j int) (int, bool) {
	//p(i,j,m,n)
	if i < 0 || i >= m {
		//p(i,j,"no i")
		return 0, false
	}
	if j < 0 || j >= n {
		//p(i,j, "no j")
		return 0, false
	}
	if v[i][j] {
		//p(i,j, "mem")
		return mem[i][j], true
	}
	v[i][j] = true
	tmp1, ok1 := rec(i-1, j)
	tmp2, ok2 := rec(i-1, j-1)
	tmp3, ok3 := rec(i-1, j+1)
	x := make([]int, 0)
	if ok1 {
		x = append(x, tmp1)
	}
	if ok2 {
		x = append(x, tmp2)
	}
	if ok3 {
		x = append(x, tmp3)
	}
	var min int
	if 0 != len(x) {
		min = x[0]
		for _, v := range x {
			if v < min {
				min = v
			}
		}
	}
	ans := mx[i][j] + min
	mem[i][j] = ans
	return ans, true
}
