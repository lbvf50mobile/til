# Leetcode: 135. Candy.
# https://leetcode.com/problems/candy/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Fixed.
# Runtime: 77 ms, faster than 77.14% of Ruby online submissions for Candy.
# Memory Usage: 213.7 MB, less than 22.86% of Ruby online submissions for Candy.
# Test.
# Faild: Input
# [1,3,4,5,2]
# 2023.09.13 Daily Challenge.
# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
  # Based on:
  # https://leetcode.com/problems/candy/discuss/4037646/99.20-Greedy-Two-and-One-Pass
  n = ratings.size
  rt = ratings
  cs = Array.new(n,1) # Candies.
  # Moving forward.
  (1...n).each do |j|
    i = j - 1
    if rt[i] < rt[j] # Bigger than left. 
      # i always smaller than j=i+1. Because
      # cs[j] = cs[i] + 1.
      # Right position bigger than left.
      # ! Error in do not thinking about picks: grow grow, decrease drecrease.
      cs[j] = cs[i] + 1 # More ratings, more candies.
    end
  end
  # Moving back.
  (0...(n-1)).reverse_each do |i|
    j = i + 1
    if rt[i] > rt[j] # Bigger than right.
      # Here left postions i. Cold not be bigger than.
      # Right.
      # cs[i] = cs[j]+1 # Faild test.
      # ! Error in do not thinking about picks: grow grow, decrease drecrease.
      cs[i] = [cs[i],cs[j]+1].max

    end
  end
  cs.sum
end
