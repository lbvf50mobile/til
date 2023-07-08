# Leetcode: 2551. Put Marbles in Bags.
# https://leetcode.com/problems/put-marbles-in-bags/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 244 ms, faster than 100.00% of Ruby online submissions for Put
# Marbles in Bags.
# Memory Usage: 224 MB, less than 100.00% of Ruby online submissions for Put
# Marbles in Bags.
# 2023.07.08 Daily Challenge.
# @param {Integer[]} weights
# @param {Integer} k
# @return {Integer}
def put_marbles(weights, k)
  # Based on:
  # https://leetcode.com/problems/put-marbles-in-bags/solution/
  w = weights
  n = w.size
  pw = Array.new(n-1, 0)
  (0...n-1).each do |i|
    pw[i] = w[i] + w[i+1] 
  end
  pw.sort!
  ans = 0
  (0...k-1).each do |i|
    ans += pw[n-2-i] - pw[i]
  end
  return ans
end
