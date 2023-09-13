# Leetcode: 135. Candy.
# https://leetcode.com/problems/candy/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 85 ms, faster than 57.14% of Ruby online submissions for Candy.
# Memory Usage: 213.7 MB, less than 17.14% of Ruby online submissions for Candy.
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
  (1...n).each do |i|
    if rt[i-1] < rt[i] # Bigger than left. 
      cs[i] = cs[i-1] + 1 # More ratings, more candies.
    end
  end
  # Moving back.
  (0...(n-1)).reverse_each do |i|
    if rt[i] > rt[i+1] # Bigger than right.
      cs[i] = [cs[i],cs[i+1]+1].max
    end
  end
  cs.sum
end
