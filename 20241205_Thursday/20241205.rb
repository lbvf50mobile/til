# Leetcode: 2337. Move Pieces to Obtain a String 
# https://leetcode.com/problems/move-pieces-to-obtain-a-string
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1448 ms, faster than 100.00% of Ruby online submissions for Move
# Pieces to Obtain a String.
# Memory Usage: 218.7 MB, less than 100.00% of Ruby online submissions for
# Move Pieces to Obtain a String.
# 2024.12.06 Daily Challenge.
# @param {String} start
# @param {String} target
# @return {Boolean}
def can_change(start, target)
  # Count number of elements.
  sa, ta = count_elem(start), count_elem(target)
  return false if sa != ta
  i, j = 0, 0
  i = skip_underline(i, start)
  j = skip_underline(j, target)
  while i < start.size && j < target.size
    return false if start[i] != target[j]
    return false if ?R == start[i] && i > j
    return false if ?L == start[i] && i < j
    i += 1
    j += 1
    i = skip_underline(i, start)
    j = skip_underline(j, target)

  end
  return false if i != j
  return true
end

def count_elem(str)
  ans = [0,0,0] # L, R, _
  (0...str.size).each do |i|
    ans[0] += 1 if ?L == str[i]
    ans[1] += 1 if ?R == str[i]
    ans[2] += 1 if ?_ == str[i]
  end
  return ans
end

def skip_underline(i, str)
  while i < str.size && str[i] == ?_
    i += 1
  end
  return i
end
