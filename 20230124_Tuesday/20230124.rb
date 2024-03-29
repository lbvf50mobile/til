# Leetcode: 909. Snakes and Ladders.
# https://leetcode.com/problems/snakes-and-ladders/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 262 ms, faster than 50.00% of Ruby online submissions for Snakes and Ladders.
# Memory Usage: 210.8 MB, less than 100.00% of Ruby online submissions for Snakes and Ladders.
# 2023.01.23 Daily Challenge.
# @param {Integer[][]} board
# @return {Integer}
def snakes_and_ladders(board)
  # Based on:
  # https://leetcode.com/problems/snakes-and-ladders/solution/
  n = board.size
  cells = Array.new((n**2)+1)
  label = 1
  columns = (0...n).to_a
  (0...n).reverse_each do |row|
    columns.each do |column|
      cells[label] = [row, column]
      label += 1
    end
    columns.reverse!
  end
  dist = [-1] * (n*n + 1)
  dist[1] = 0
  q = [1]
  while ! q.empty?
    curr = q.shift
    (curr+1...([curr+6, n**2].min + 1)).each do |nxt|
      r,c = cells[nxt]
      dst = -1 != board[r][c] ? board[r][c] : nxt
      if -1 == dist[dst]
        dist[dst] = dist[curr] + 1
        q.push(dst)
      end
    end
  end
  return dist[n*n]
end
