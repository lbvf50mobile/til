// Leetcode: 36. Valid Sudoku.
// https://leetcode.com/problems/valid-sudoku/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 69.63% of Go online submissions for Valid Sudoku.
// Memory Usage: 2.7 MB, less than 92.64% of Go online submissions for Valid Sudoku.
// 2022.11.23 Daily Challenge.
var b [][]byte
func isValidSudoku(board [][]byte) bool {
  b = board
  // If falin once return false.
  // Check rows.
  for i := 0; i < 9 ; i+= 1 {
    if ! row(i) { return false}
  }
  // Check cols.
  for j := 0; j < 9; j += 1 {
    if ! column(j) {return false}
  }
  // Check squares.
  for i := 0; i < 9 ; i += 3{
    for j :=0; j < 9; j += 3{
      if ! sq(i,j) {return false}
    }
  }
  // No fails return true.
  return true
}

func row(i int) bool{
  counter := make([]int,9)
  for j := 0; j < 9; j +=1 {
    if num(b[i][j]) {
      counter[int(b[i][j] - 49)] += 1
    }
  }
  return check(counter)
}
func column(j int) bool{
  counter := make([]int,9)
  for i := 0; i < 9; i +=1 {
    if num(b[i][j]) {
      counter[int(b[i][j] - 49)] += 1
    }
  }
  return check(counter)
}
func sq(i,j int) bool{
  counter := make([]int,9)
  for di := 0; di < 3; di +=1 {
    for dj := 0; dj < 3; dj +=1 {
      ii, jj := i+di, j+dj
      if num(b[ii][jj]) {
        counter[int(b[ii][jj] - 49)] += 1
      }
    }
  }
  return check(counter)
}


// '0' == 48;  '9' == 57;
func num(x byte) bool {
  return 48 <= x && x <= 57
}
func check(counter []int) bool {
  for i := 0; i < 9; i += 1{
    if 2 <= counter[i] {
      return false
    }
  }
  return true
}
