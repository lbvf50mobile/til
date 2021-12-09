# Leetcode: 1306. Jump Game III.
# https://leetcode.com/problems/jump-game-iii/
# @param {Integer[]} arr
# @param {Integer} start
# @return {Boolean}
# TLE.
def can_reach(arr, start)
  df = Array.new(arr.size,false)
  df[start] = true
  @df, @start, @arr = df, start, arr
  move()  
end

def move()
  q = [@start]
  @df[@start] = true
  while ! q.empty?
    i = q.pop
    return true if 0 == @arr[i]
    left = i - @arr[i]
    right = i + @arr[i]
    if (! @df[right]) && right.between?(0,@arr.size-1)
      return true if 0 == @arr[right]
      q.push(right)
    end
    if (! @df[left]) && left.between?(0,@arr.size-1)
      return true if 0 == @arr[left]
      q.push(left)
    end
  end
  return false
end
