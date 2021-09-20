# Leetcode: 1275. Find Winner on a Tic Tac Toe Game.
# https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3981/
# @param {Integer[][]} moves
# @return {String}
def tictactoe(moves)
  @test = false
  @f = Array.new(3).map{ Array.new(3," ")}
  @win = "Pending"
  @win = "Draw" if moves.size >= 9
  moves.each_with_index do |(r,c),i|
    point = i.even? ? "X" : "O"
    puts "#{i} => #{point}" if @test
    @f[r][c] = point
    p @f if @test
    return @win if winner()
  end
  return @win
end


def winner()
  strs = get_strs()
  puts "strs: #{strs.inspect}" if @test
  if strs.any?{|x| x == "XXX"}
    puts "A win" if @test
    @win = "A"
    return true
  end
  if strs.any?{|x| x == "OOO"}
    puts "B win" if @test
    @win = "B"
    return true
  end
  return false
end


def get_rows()
  ans = @f.map(&:join)
  puts "Rows: #{ans.inspect}" if @test
  ans
end

def get_cols()
  ans = @f.transpose().map(&:join)
  puts "Cols: #{ans.inspect}" if @test
  ans
end

def get_diagonales()
  first, second = [],[]
  (0..2).each do |i|
    first.push(@f[i][i])
    second.push(@f[i][2-i])
  end
  ans = [first.join,second.join]
  puts "Dig: #{ans.inspect}" if @test
  ans
end

def get_strs()
  ans = []
  ans.push(get_rows,get_cols,get_diagonales)
  ans.flatten
end
