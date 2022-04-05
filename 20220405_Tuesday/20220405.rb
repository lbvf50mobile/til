# Leetcode: 11. Container With Most Water.
# https://leetcode.com/problems/container-with-most-water/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 263 ms, faster than 21.11% of Ruby online submissions for Container With Most Water.
# Memory Usage: 217.6 MB, less than 39.79% of Ruby online submissions for Container With Most Water.
# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  # Based on: https://leetcode.com/problems/container-with-most-water/discuss/1915387/Easy-to-Understand-codes-C%2B%2BCJAVAPYTHON
  i,j = 0, height.size - 1
  ans = 0
  while i < j
    length = j - i
    hgt = min(height[i],height[j])
    ans = max(ans, hgt*length)
    if height[i]  < height[j]
      i += 1
    else
      j -= 1
    end
  end
  ans
end
def min(a,b)
  a < b ? a : b
end
def max(a,b)
  a > b ? a : b
end
