# Leetcode: 1306. Jump Game III.
# https://leetcode.com/problems/jump-game-iii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 76 ms, faster than 100.00% of Ruby online submissions for Jump Game III.
# Memory Usage: 214.5 MB, less than 100.00% of Ruby online submissions for Jump Game III.
# @param {Integer[]} arr
# @param {Integer} start
# @return {Boolean}
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
      @df[right] = true
      q.push(right)
    end
    if (! @df[left]) && left.between?(0,@arr.size-1)
      return true if 0 == @arr[left]
      @df[left] = true
      q.push(left)
    end
  end
  return false
end
