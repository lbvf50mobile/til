// Leetcode: 766. Toeplitz Matrix.
// https://leetcode.com/problems/toeplitz-matrix/
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 20 ms, faster than 44.12% of Go online submissions for Toeplitz Matrix.
// Memory Usage: 4.3 MB, less than 67.65% of Go online submissions for Toeplitz Matrix.
// 2022.10.31 Daily Challenge.
var r int
var c int
func isToeplitzMatrix(matrix [][]int) bool {
  r,c = len(matrix), len(matrix[0])
  start_j := 0
  for start_i := 0; start_i < r ; start_i += 1 {
    if ! check_diagonal(start_i, start_j, matrix) {
      return false
    }
  }
  start_i := 0
  for start_j := 0; start_j < c; start_j += 1 {
    if ! check_diagonal(start_i, start_j, matrix) {
      return false
    }
  }
  return true
}

func check_diagonal(start_i, start_j int, matrix [][]int) bool{
  prv := -1
  i,j := start_i, start_j
  for ; i >= 0 && i < r && j >= 0 && j < c; {
    if -1 == prv {
      prv = matrix[i][j]
    }
    if prv != matrix[i][j] {
      return false
    }
    prv = matrix[i][j]
    i += 1
    j += 1
  }
  return true
}
