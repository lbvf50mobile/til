# Leetcode: 54. Spiral Matrix.
# https://leetcode.com/problems/spiral-matrix/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/638/week-3-september-15th-september-21st/3977/
# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  @mx = matrix
  @u = Array.new(matrix.size).map{Array.new(matrix[0].size,true)}
  dir = {right: :bottom, bottom: :left, left: :top, top: :right}
  ans =  []
  i,j = 0,0
  way = :right
  while move(i,j)
    @u[i][j] = false
    ans.push(@mx[i][j])
    case way
    when :right
      j += 1
    when :bottom
      i += 1
    when :left
      j -= 1
    when :top
      i -= 1
    end

    if ! move(i,j)
      way = dir[way]
      case way
      when :right
        # were top.
        i += 1 # go bottom.
        j += 1
      when :bottom
        # Were right.
        j -= 1
        i += 1
      when :left
        i -= 1
        j -= 1
      when :top
        j += 1
        i -= 1
      end
    end
  end
  ans 
end


def move(i,j)
  return false if i < 0 || j < 0
  return false if i >= @mx.size
  return false if j >= @mx[0].size
  return @u[i][j]
end


