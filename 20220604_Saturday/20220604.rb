# Leetcode: 51. N-Queens.
# https://leetcode.com/problems/n-queens/
# @param {Integer} n
# @return {String[][]}
# TLE.
def solve_n_queens(n)
  # Create array for Queens.
  @q = Array.new(n).map{ Array.new(n,false)}
  # Create array for coverred by Queens attacks.
  @c = Array.new(n).map{ Array.new(n,false)}
  # Number of queens.
  @amount = 0
  @n = n
  # Answer.
  @answer = []
  backtrack(0)
  @answer 
end

def backtrack(i) 
  # Check.
  if @n == @amount
    save_to_answer()
    return
  end
  return if @n*@n == i
  # Jump over this cell.
  backtrack(i+1)
  # Now put Queen on this cell and move.
  if ! @c[i/@n][i % @n]
    row,col = i/@n, i % @n
    marks = mark(i)
    @q[row][col] = true
    @amount += 1
    backtrack(i+1)
    @amount -= 1
    @q[row][col] = false
    clear(marks)
  end
end
def save_to_answer()
  arr = @q.map{|x| x.map{|y| y ? ?Q : ?.}.join }
  @answer.push(arr)
end

def mark(i)
  n = @n-1
  row,col = i/@n, i % @n
  marks = []
  # Row.
  (0...@n).each do |j|
    add(marks,row,j)
  end
  # Col.
  (0...@n).each do |i|
    add(marks,i,col)
  end
  # Up, Right.
  r,c = row, col
  while r.between?(0,n) && c.between?(0,n)
    add(marks,r,c)
    r -= 1; c += 1
  end
  # Down, Left.
  r,c = row, col
  while r.between?(0,n) && c.between?(0,n)
    add(marks,r,c)
    r += 1; c -= 1
  end
  # Up, Left.
  r,c = row, col
  while r.between?(0,n) && c.between?(0,n)
    add(marks,r,c)
    r -= 1; c -= 1
  end
  # Down, Right.
  r,c = row, col
  while r.between?(0,n) && c.between?(0,n)
    add(marks,r,c)
    r += 1; c += 1
  end
  marks
end
def clear(marks)
  marks.each do |(i,j)|
    @c[i][j] = false
  end
end
def add(marks,i,j)
  if !@c[i][j]
    marks.push([i,j])
    @c[i][j] = true
  end
end
