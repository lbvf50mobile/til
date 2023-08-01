# Leetcode: 77. Combinations.
# https://leetcode.com/problems/combinations/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 103 ms, faster than 100.00% of Ruby online submissions for
# Combinations.
# Memory Usage: 213.7 MB, less than 82.61% of Ruby online submissions for
# Combinations.
# 2023.08.01 Daily Challenge.
# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  (1..4).to_a.combination(2).to_a
end
