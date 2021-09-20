# Leetcode: 1275. Find Winner on a Tic Tac Toe Game.
# https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3981/
# @param {Integer[][]} moves
# @return {String}
def tictactoe(moves)
  @f = Array.new(3).map{ Array.new(3," ")}
  @win = "Pending"
  @win = "Draw" if moves.size >= 9
  moves.each_with_index do |(r,c),i|
    point = i.even? ? "X" : "O"
    @f[r][c] = point
    return @win if winner()
  end
  return @win
end


def winner()
  strs = get_strs()
  if strs.any?{|x| x == "XXX"}
#    p @f
#    p "A"
    @win = "A"
    return true
  end
  if strs.any?{|x| x == "OOO"}
#    p @f
#    p "B"
    @win = "B"
    return true
  end
  return false
end


def get_rows()
  @f.map(&:join)
end

def get_cols()
  @f.transpose().map(&:join)
end

def get_diagonales()
  first, second = [],[]
  (0..2).each do |i|
    (0..2).each do |j|
      first.push(@f[i][j])
      second.push(@f[i][2-j])
    end
  end
  [first.join,second.join]
end

def get_strs()
  ans = []
  ans.push(get_rows,get_cols,get_diagonales)
  ans
end
